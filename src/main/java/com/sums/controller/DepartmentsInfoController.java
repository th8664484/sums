package com.sums.controller;

import com.sums.annotations.PermissionVerify;
import com.sums.entity.Member;
import com.sums.entity.ReturnResult;
import com.sums.service.EnrollmentService;
import com.sums.service.MemberService;
import com.sums.utils.LoginMemberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.*;

@Controller
@RequestMapping("/departmentsInfo")
public class DepartmentsInfoController {


    @Resource
    private MemberService memberService;

    @Resource
    private EnrollmentService enrollmentService;

    /**
     * 展示部门情况
     * @param model
     * @return
     */
    @PermissionVerify(value ="departments:info:info")
    @GetMapping("/")
    public String workView(Model model){
        model.addAttribute("topTableInfo",memberService.getTopTable());
        return "studentUnion/departmentsInfo";
    }

    /***
     * 部门成员
     * @param map
     * @return
     */
    @RequestMapping("/all")
    @ResponseBody
    public Object pageWork(@RequestParam Map<String,String> map){
        return memberService.pageMember(map);
    }

    /**
     * 添加成员
     * @param member
     * @return
     */
    @PermissionVerify(value ="departments:info:add")
    @PostMapping("/add")
    @ResponseBody
    public Object addMember(Member member){
        return memberService.save(member);
    }

    /**
     * 删除成员
     * @param meId
     * @return
     */
    @PermissionVerify(value ="departments:info:del")
    @PostMapping("/del")
    @ResponseBody
    public Object deleteMember(String meId){
        return memberService.deleteMember(meId);
    }

    /**
     * 部长换届
     * @param meId
     * @return
     */
    @PermissionVerify(value ="departments:info:transition")
    @PostMapping("/transition/minister")
    @ResponseBody
    public Object transitionMinister(String meId){
        List<String> rid = new ArrayList<>();
        rid.add("3");
        if (memberService.isRoleId(meId)){
            rid.add("5");
        }
        ReturnResult returnResult = memberService.updateRoleById(meId, rid);
        returnResult.setMsg("更新成功");
        return returnResult;
    }

    /**
     * 主席换届
     * @param meId
     * @return
     */
    @PermissionVerify(value ="departments:info:transition2")
    @PostMapping("/transition/chairman2")
    @ResponseBody
    public Object transition2(String meId){
        List<String> rid = new ArrayList<>();
        rid.add("6");
        ReturnResult returnResult = memberService.updateRoleById(meId, rid);
        returnResult.setMsg("更新成功");
        return returnResult;
    }
    @PermissionVerify(value ="departments:info:transition3")
    @PostMapping("/transition/chairman3")
    @ResponseBody
    public Object transition(String meId){
        List<String> rid = new ArrayList<>();
        rid.add("2");
        ReturnResult returnResult = memberService.updateRoleById(meId, rid);
        returnResult.setMsg("更新成功");
        return returnResult;
    }

    /**
     * 男，女性别人数
     * @return
     */
    @PostMapping("/getSexNum")
    @ResponseBody
    public Object getSexNum(){
        return memberService.getSexNum();
    }

    /**
     * 在线，下线人数
     * @return
     */
    @PostMapping("/getOnlineNum")
    @ResponseBody
    public Object getOnlineNum(){
        return memberService.getOnlineNum();
    }

    /**
     * 主席换届时的候选人信息
     * @return
     */
    @PostMapping("/getMinisterInfo")
    @ResponseBody
    public Object selectListByMinister(String chairmanType){
        return enrollmentService.selectListByMinister(chairmanType);
    }
}
