package com.sums.service;

import com.sums.entity.Department;
import com.baomidou.mybatisplus.extension.service.IService;
import com.sums.entity.ReturnResult;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
public interface DepartmentService {
    ReturnResult pageDepartment(int page,int limit);
    ReturnResult addDepartment(Department department);
    ReturnResult delDepartment(String depaId);
    ReturnResult updateDepartment(Department department);
    List<Map<String,String>> getDepartmentName();
    Department getOneById(String depaId);
    List<Department> selectList();
}
