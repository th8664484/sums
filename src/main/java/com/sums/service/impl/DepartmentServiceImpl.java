package com.sums.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sums.entity.Department;
import com.sums.dao.DepartmentMapper;
import com.sums.entity.ReturnResult;
import com.sums.service.DepartmentService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sums.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Resource
    private DepartmentMapper mapper;

    @Override
    public ReturnResult pageDepartment(int page,int limit) {
        return PageUtils.page(page,limit,mapper);
    }

    @Override
    public ReturnResult addDepartment(Department department) {
        mapper.alter();
        if (mapper.insert(department)>0) {
            return new ReturnResult("200","添加成功","depa");
        }
        return new ReturnResult("200","添加失败");
    }

    @Override
    public ReturnResult delDepartment(String depaId) {
        if (mapper.deleteById(depaId)>0) {
            return new ReturnResult("200","删除成功","depa");
        }
        return new ReturnResult("200","删除失败");
    }

    @Override
    public ReturnResult updateDepartment(Department department) {
        if (mapper.updateById(department)>0) {
            return new ReturnResult("200","修改成功","depa");
        }
        return new ReturnResult("200","修改失败");
    }

    public List<Map<String,String>> getDepartmentName(){
        return mapper.getDepartmentName();
    }

    @Override
    public Department getOneById(String depaId) {
        return mapper.selectById(depaId);
    }

    @Override
    public List<Department> selectList() {
        QueryWrapper<Department> queryWrapper = new QueryWrapper<>();
        return mapper.selectList(queryWrapper);
    }
}
