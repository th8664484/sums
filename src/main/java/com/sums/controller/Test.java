package com.sums.controller;

import com.sums.entity.Member;
import com.sums.service.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class Test {

    @Resource
    private MemberService memberService;

    @RequestMapping("/test")
    public String t(){
        List<Member> all = memberService.getAll();
        for (Member member : all) {
            memberService.text(member.getMeId(),"4");
        }
        return "index";
    }
}
