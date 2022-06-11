package com.sums.dao;

import com.sums.entity.Department;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
public interface DepartmentMapper extends BaseMapper<Department> {
        void alter();
        List<Map<String,String>> getDepartmentName();
}
