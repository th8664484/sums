package com.sums.controller;


import cn.hutool.core.util.IdUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sums.annotations.PermissionVerify;
import com.sums.entity.ReturnResult;
import com.sums.entity.Work;
import com.sums.service.WorkService;
import com.sums.utils.LoginMemberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tonghui
 * @since 2022-03-10
 */
@Controller
@RequestMapping("/work")
public class WorkController {

    @Autowired
    private WorkService service;

    /**
     * 计划页面
     * @return
     */
    @PermissionVerify(value ="transaction:plan:plan")
    @GetMapping("/")
    public String workView(){
        return "studentUnion/work-project";
    }

    /**
     * 展示计划信息
     * @param map
     * @return
     */
    @RequestMapping("/all")
    @ResponseBody
    public Object pageWork(@RequestParam Map<String,String> map){
        int page = Integer.parseInt(map.get("page"));
        int limit = Integer.parseInt(map.get("limit"));
        Page<Work> p = new Page<>(page,limit);
        QueryWrapper<Work> queryWrapper = new QueryWrapper<>();
        if (map.size()>2) {
            Set<String> keySet = map.keySet();
            for (String s : keySet) {
                if ("page".equals(s) || "limit".equals(s)){
                    continue;
                }
                if (StringUtils.isNotBlank(map.get(s))){
                    queryWrapper.eq(s,map.get(s));
                }
            }
        }
        queryWrapper.eq("me_id", LoginMemberUtils.getMember().getMeId());
        p = service.page(p,queryWrapper);
        return new ReturnResult("0","SUCCESS",p.getTotal(),p.getRecords());
    }

    /**
     * 新增计划
     * @param work
     * @return
     */
    @PermissionVerify(value ="transaction:plan:add")
    @PostMapping("/add")
    @ResponseBody
    public Object addWork(Work work){
        work.setWorkId(IdUtil.simpleUUID());
        work.setSubmitTime(new Date());
        work.setMeName(LoginMemberUtils.getMember().getMeName());
        work.setMeId(LoginMemberUtils.getMember().getMeId());
        if (service.save(work)){
            return new ReturnResult("200","添加成功","work");
        }
        return new ReturnResult("200","添加失败");
    }

    /**
     * 跟新计划
     * @param work
     * @return
     */
    @PermissionVerify(value ="transaction:plan:update")
    @PostMapping("/update")
    @ResponseBody
    public Object updateWork(Work work){
        work.setSubmitTime(new Date());
        if (service.updateById(work)){
            return new ReturnResult("200","更新成功","work");
        }
        return new ReturnResult("200","更新失败");
    }

    /**
     * 删除计划
     * @param workId
     * @return
     */
    @PermissionVerify(value ="transaction:plan:del")
    @PostMapping("/del")
    @ResponseBody
    public Object delWork(String workId){
        if (service.removeById(workId)){
            return new ReturnResult("200","删除成功","work");
        }
        return new ReturnResult("200","删除失败");
    }
}
