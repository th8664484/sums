package com.sums.controller;


import com.sums.annotations.PermissionVerify;
import com.sums.entity.Department;
import com.sums.entity.ReturnResult;
import com.sums.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
public class DepartmentController {

    @Autowired
    private DepartmentService service;

    /**
     * 部门页
     * @return
     */
    @PermissionVerify(value ="system:department:department")
    @GetMapping("/department")
    public String departmentView(){
        return "studentUnion/departments-manage";
    }

    /**
     * 分页
     * @param map
     * @return
     */
    @GetMapping("/all/depa")
    @ResponseBody
    public Object pageDepartment(int page,int limit){
        return service.pageDepartment(page, limit);
    }

    /**
     * 添加
     * @param department
     * @return
     */
    @PermissionVerify(value ="system:department:add")
    @PostMapping("/add/depa")
    @ResponseBody
    public Object addDepartment(Department department){
       return service.addDepartment(department);
    }

    /**
     * 删除
     * @param depaId
     * @return
     */
    @PermissionVerify(value ="system:department:del")
    @PostMapping("/del/depa")
    @ResponseBody
    public Object delDepartment(String depaId){
        return service.delDepartment(depaId);
    }

    /**
     * 更新
     * @param department
     * @return
     */
    @PermissionVerify(value ="system:department:update")
    @PostMapping("/update/depa")
    @ResponseBody
    public Object updateDepartment(Department department){
        return service.updateDepartment(department);
    }
}
