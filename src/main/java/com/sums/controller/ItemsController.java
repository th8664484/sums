package com.sums.controller;


import cn.hutool.core.util.IdUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sums.annotations.PermissionVerify;
import com.sums.entity.Activity;
import com.sums.entity.Items;
import com.sums.entity.ReturnResult;
import com.sums.service.ItemsService;
import com.sums.utils.PageUtils;
import com.sums.utils.RoleQuerWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.Map;
import java.util.Set;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tonghui
 * @since 2022-03-12
 */
@Controller
@RequestMapping("/items")
public class ItemsController {

    @Autowired
    private ItemsService service;

    /**
     * 物品信息展示页
     * @return
     */
    @PermissionVerify(value ="goods:items:items")
    @GetMapping("/")
    public String activityView(){
        return "studentUnion/items-all";
    }

    /**
     * 分页
     * @param map
     * @return
     */
    @RequestMapping("/all")
    @ResponseBody
    public Object pageActivity(@RequestParam Map<String,String> map){
        int page = Integer.parseInt(map.get("page"));
        int limit = Integer.parseInt(map.get("limit"));
        Page<Items> p = new Page<>(page,limit);
        QueryWrapper<Items> queryWrapper = new QueryWrapper<>();
        if (map.size()>2) {
            Set<String> keySet = map.keySet();
            for (String s : keySet) {
                if ("page".equals(s) || "limit".equals(s)) {
                    continue;
                }
                if (StringUtils.isNotBlank(map.get(s))) {
                    queryWrapper.eq(s, map.get(s));
                }
            }
        }
        p = service.page(p, queryWrapper);
        return new ReturnResult("0","SUCCESS",p.getTotal(),p.getRecords());
    }

    /**
     * 新增物品
     * @param items
     * @return
     */
    @PermissionVerify(value ="goods:items:add")
    @PostMapping("/add")
    @ResponseBody
    public Object addItems(Items items){
        items.setItemId(IdUtil.simpleUUID());
        items.setBuyDate(new Date());
        if (service.save(items)) {
            return new ReturnResult("200","添加成功","items");
        }
        return new ReturnResult("200","添加失败");
    }

    /**
     * 删除物品
     * @param itemId
     * @return
     */
    @PermissionVerify(value ="goods:items:del")
    @PostMapping("/del")
    @ResponseBody
    public Object delItems(String itemId){
        if (service.removeById(itemId)) {
            return new ReturnResult("200","删除成功","items");
        }
        return new ReturnResult("200","删除失败");
    }

    /**
     * 更新物品
     * @param items
     * @return
     */
    @PermissionVerify(value ="goods:items:update")
    @PostMapping("/update")
    @ResponseBody
    public Object updateItems(Items items){
        if (service.updateById(items)) {
            return new ReturnResult("200","更新成功","items");
        }
        return new ReturnResult("200","更新失败");
    }

}
