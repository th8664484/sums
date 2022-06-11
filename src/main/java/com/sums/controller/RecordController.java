package com.sums.controller;


import cn.hutool.core.util.IdUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sums.annotations.PermissionVerify;
import com.sums.entity.Items;
import com.sums.entity.Record;
import com.sums.entity.ReturnResult;
import com.sums.service.DepartmentService;
import com.sums.service.ItemsService;
import com.sums.service.MemberService;
import com.sums.service.RecordService;
import com.sums.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tonghui
 * @since 2022-03-12
 */
@Controller
@RequestMapping("/record")
public class RecordController {

    @Autowired
    private RecordService service;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private ItemsService itemsService;
    @Autowired
    private MemberService memberService;

    /**
     * 借还记录展示页
     * @return
     */
    @PermissionVerify(value ="goods:borrowed:borrowed")
    @GetMapping("/")
    public String activityView(Model model){
        model.addAttribute("departments",departmentService.getDepartmentName());
        QueryWrapper<Items> queryWrapper = new QueryWrapper<>();
        queryWrapper.select("item_id","item_name");
        model.addAttribute("itemNames",itemsService.listMaps(queryWrapper));
        return "studentUnion/borrow-return-records";
    }


    /**
     * 分页
     * @param map
     * @return
     */
    @RequestMapping("/all")
    @ResponseBody
    public Object pageRecord(@RequestParam Map<String,String> map){
        int page = Integer.parseInt(map.get("page"));
        int limit = Integer.parseInt(map.get("limit"));
        Page<Record> p = new Page<>(page,limit);
        QueryWrapper<Record> queryWrapper = new QueryWrapper<>();

        p = service.page(p, PageUtils.joinQueryWrapper(queryWrapper,map));
        return new ReturnResult("0","SUCCESS",p.getTotal(),p.getRecords());
    }
    /**
     * 页面信息动态更新
     * @return
     */
//    @GetMapping("/getRecordInfo")
//    @ResponseBody
//    public Object getRecordInfo(){
//        Map<String,Object> map = new HashMap<>();
//        map.put();
//        QueryWrapper<Items> queryWrapper = new QueryWrapper<>();
//        queryWrapper.select("item_id","item_name");
//        map.put("itemNames",itemsService.listMaps(queryWrapper));
////        return "studentUnion/borrow-return-records :: recordInfo";
//        return new ReturnResult("200","",map);
//    }

    /**
     * 页面信息动态更新
     * @param depaId
     * @return
     */
    @RequestMapping("/getDepaMemberName")
    @ResponseBody
    public Object getDepaMemberName(String depaId){
        return new ReturnResult("0","SUCCESS",memberService.getMeIdAndMeName(depaId));
    }

    /**
     * 添加记录
     * @param record
     * @return
     */
    @PermissionVerify(value ="goods:borrowed:add")
    @PostMapping("/add")
    @ResponseBody
    public Object addRecord(Record record){
        String itemId = record.getItemName();
        if (itemsService.isItemNumber(itemId,record.getNumber())){
            if (service.save(getRecord(record))) {
                return new ReturnResult("200","借出成功","record");
            }
            itemsService.rollback(itemId,record.getNumber());
            return new ReturnResult("200","借出失败");
        }
        return new ReturnResult("200","物品数量不足，无法借出");
    }


    /**
     * 归还物品
     * @param recordId
     * @return
     */
    @PermissionVerify(value ="goods:borrowed:return")
    @PostMapping("/return")
    @ResponseBody
    public Object returnRecord(String recordId){
        Record record = service.getById(recordId);
        if (itemsService.rollback(record.getItemId(),record.getNumber())){
            record.setIsReturn("1");
            if (service.updateById(record)) {
                return new ReturnResult("200","归还成功","record");
            }
        }
        return new ReturnResult("200","归还失败");
    }

    /**
     * 删除记录信息
     * @param recordId
     * @return
     */
    @PermissionVerify(value ="goods:borrowed:del")
    @PostMapping("/del")
    @ResponseBody
    public Object delRecord(String recordId){
        if (service.removeById(recordId)) {
            return new ReturnResult("200","删除成功","record");
        }
        return new ReturnResult("200","删除失败");
    }


    private Record getRecord(Record record){
        record.setRecordId(IdUtil.simpleUUID());
        record.setLendTime(new Date());
        record.setItemId(record.getItemName());
        record.setItemName(itemsService.getById(record.getItemName()).getItemName());
        record.setMeId(record.getMeName());
        record.setMeName(memberService.getOneById(record.getMeName()).getMeName());
        record.setDepartment(departmentService.getOneById(record.getDepartment()).getDepaName());
        return record;
    }

}
