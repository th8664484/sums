package com.sums.controller;


import com.sums.annotations.PermissionVerify;
import com.sums.entity.ReturnResult;
import com.sums.entity.Role;
import com.sums.service.RoleService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Arrays;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
@Controller
public class RoleController {

    @Autowired
    private RoleService service;

    /**
     * 角色页
     * @return
     */
    @PermissionVerify(value ="system:role:role")
    @GetMapping("/role")
    public String roleView(){
        return "studentUnion/role";
    }

    /**展示角色信息*/
    @PermissionVerify(value ="system:role:all")
    @GetMapping("/roleFind/all")
    @ResponseBody
    public Object foleFindAll(int page,int limit){
        return service.pageRole(page, limit);
    }

    /**添加角色*/
    @PermissionVerify(value ="system:role:add")
    @PostMapping("/add/role")
    @ResponseBody
    public Object addRole(Role role){
       return service.addRole(role);
    }

    /**删除角色*/
    @PermissionVerify(value ="system:role:del")
    @PostMapping("/del/role")
    @ResponseBody
    public Object delRole(Integer roleId){
        return service.delRole(roleId);
    }

    /**编辑角色*/
    @PermissionVerify(value ="system:role:edit")
    @PostMapping("/update/role")
    @ResponseBody
    public Object updateRole(Role role){
        return service.updateRole(role);
    }

    /**跟新角色对应的功能*/
    @PermissionVerify(value ="system:role:allot")
    @PostMapping("/update/roleByFunid")
    @ResponseBody
    public Object updateRoleByFunid(String roleId, String funIds){
        List<String> funId = Arrays.asList(funIds.split(",").clone());
        return service.updateRoleByFun(roleId,funId);
    }


}
