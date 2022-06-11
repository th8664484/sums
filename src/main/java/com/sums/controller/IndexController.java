package com.sums.controller;

import com.sums.entity.Activity;
import com.sums.service.ActivityService;
import com.sums.utils.LoginMemberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

@Controller
@RequestMapping("/sums")
public class IndexController {

    @Autowired
    private ActivityService service;

    /**
     * 布局页
     * @return
     */
    @RequestMapping("/index")
    public String indexView(Model model){
        Activity activity = service.getOneTransition();
        model.addAttribute("user", LoginMemberUtils.getMember());
        model.addAttribute("transition", activity!=null?1:0);
        model.addAttribute("activityId", activity!=null?activity.getActivityId():0);
        model.addAttribute("date", activity!=null && new Date().before(activity.getCutOffTime())?1:0);
        return "studentUnion/index";
    }

    /**
     * 未授权*/
    @RequestMapping("/noauth")
    public String unauthorized(HttpServletResponse response){
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = null;
        try {
            out = response.getWriter();
            out.print("<script>alert('未经授权，无法访问此资源');window.parent.location.href='/sums/';</script>");
            out.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
