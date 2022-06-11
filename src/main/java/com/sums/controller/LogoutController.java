package com.sums.controller;

import com.sums.utils.LoginMemberUtils;
import com.sums.utils.MyCacheUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sums")
public class LogoutController {

    /**
     * 退出
     */
    @GetMapping("/logout")
    public String logout(){
        MyCacheUtils.offline(LoginMemberUtils.getMember().getFaculty()+LoginMemberUtils.getMember().getDepartment());
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "redirect:/sums/loginView";
    }
}
