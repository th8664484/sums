package com.sums.controller;

import com.sums.annotations.PermissionVerify;
import com.sums.service.MemberService;
import com.sums.utils.LoginMemberUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
@Controller
public class MemberController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MemberService service;


    /**
     * 成员页
     * @return
     */
    @PermissionVerify(value ="system:member:member")
    @GetMapping("/member")
    public String memberView(){
        return "studentUnion/member";
    }



    /**分页查询成员列表  有条件按条件分页*/
    @PermissionVerify(value ="system:member:all")
    @RequestMapping("/member/all")
    @ResponseBody
    public Object memberPage(@RequestParam Map<String,String> map){
        return service.pageMember(map);
    }

    /**返回系别列表  联查*/
    @RequestMapping("/member/allFaculty")
    @ResponseBody
    public Object allFaculty(){
        return service.faculty();
    }
    /**返回专业列表*/
    @RequestMapping("/member/getMajorName")
    @ResponseBody
    public Object getMajorName(String faculty){
        return service.majorList(faculty);
    }
    /**返回班级列表*/
    @RequestMapping("/member/getGradeName")
    @ResponseBody
    public Object getGradeName(String major){
        return service.gradeList(major);
    }


    @PermissionVerify(value ="system:member:del")
    @PostMapping("/del/member")
    @ResponseBody
    public Object deleteMember(String meId){
        return service.deleteMember(meId);
    }

    /**查找成员对应的角色*/
    @GetMapping("/findRoleIdByMeId")
    @ResponseBody
    public Object findRoleIdByMeId(String meId){
        return service.findRoleIdByMeId(meId);
    }



    /**分配角色*/
    @PermissionVerify(value ="system:member:allot")
    @PostMapping("/update/memberRole")
    @ResponseBody
    public Object updateRoleById(String meId, String roleIds){
        List<String> roleId = Arrays.asList(roleIds.split(",").clone());
        return service.updateRoleById(meId,roleId);
    }

}
