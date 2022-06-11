package com.sums.controller;

import com.sums.entity.Activity;
import com.sums.service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 学生打开活动展示首页
 */
@Controller
@RequestMapping("/open")
public class OpenController {

    @Autowired
    private ActivityService activityService;

    @GetMapping("/")
    public String openHome(Model model){
        model.addAttribute("activitys",activityService.selectList());
        return "homepage";
    }

    @GetMapping("/{activityId}")
    public String activityInfo(@PathVariable String activityId,Model model){
        Activity activity = activityService.getById(activityId);
        activity.toHtml();
        model.addAttribute("activity",activity);
        return "activityDetails";
    }

}
