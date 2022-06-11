package com.sums.controller;


import com.sums.annotations.PermissionVerify;
import com.sums.entity.Permission;
import com.sums.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
@Controller
public class PermissionController {

    @Autowired
    private PermissionService service;

    /**
     * 权限页
     * @return
     */
    @PermissionVerify(value ="system:permission:permission")
    @GetMapping("/permission")
    public String permissionView(){
        return "studentUnion/permission";
    }

    /**展示权限信息*/
    @PermissionVerify(value ="system:permission:all")
    @GetMapping("/all/fun")
    @ResponseBody
    public Object pagePermission(){
        return service.pagePermission();
    }

    /**添加权限信息*/
    @PermissionVerify(value ="system:permission:add")
    @PostMapping("/add/fun")
    @ResponseBody
    public Object addPermission(Permission permission){
        return service.addPermission(permission);
    }
    /**删除权限信息*/
    @PermissionVerify(value ="system:permission:del")
    @PostMapping("/del/fun")
    @ResponseBody
    public Object delPermission(Integer funId){
        return service.delPermission(funId);
    }

    /**编辑权限信息*/
    @PermissionVerify(value ="system:permission:update")
    @PostMapping("/update/fun")
    @ResponseBody
    public Object updatePermission(Permission permission){
        return service.updatePermission(permission);
    }

    /**查询对应角色所拥有的功能id*/
    @GetMapping("/findFidByRole")
    @ResponseBody
    public Object findFid(String roleId){
        return service.findFid(roleId);
    }
}
