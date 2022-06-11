package com.sums.controller;

import com.sums.service.ActivityService;
import com.sums.service.AnnouncementService;
import com.sums.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private AnnouncementService announcementService;
    @Autowired
    private ActivityService activityService;

    /**
     * 首页
     */
    @GetMapping("/home")
    public String home(Model model){
        model.addAttribute("depas",departmentService.selectList());//部门信息
        model.addAttribute("annos",announcementService.selectList());//公告信息
        model.addAttribute("activitys",activityService.selectList());//活动信息
        return "studentUnion/home";
    }
}
