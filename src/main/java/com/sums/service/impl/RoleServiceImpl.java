package com.sums.service.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sums.dao.RoleMapper;
import com.sums.entity.Member;
import com.sums.entity.ReturnResult;
import com.sums.entity.Role;
import com.sums.service.RoleService;
import com.sums.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
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
public class RoleServiceImpl implements RoleService {

    @Resource
    private RoleMapper mapper;

    /**分页查询展示*/
    public ReturnResult pageRole(int page,int limit){
        return PageUtils.page(page,limit,mapper);
    }

    /**添加*/
    @Override
    public ReturnResult addRole(Role role) {
        mapper.alter();
        if (mapper.insert(role)>0){
            return new ReturnResult("200","添加成功","roleGrid");
        }
        return new ReturnResult("200","添加失败");
    }
    /**删除*/
    public ReturnResult delRole(Integer roleId){
        if (mapper.deleteById(roleId)>0){
            return new ReturnResult("200","删除成功","roleGrid");
        }
        return new ReturnResult("200","删除失败");
    }
    /**更新*/
    public ReturnResult updateRole(Role role){
        if (mapper.updateById(role) > 0){
            return new ReturnResult("200","修改成功","roleGrid");
        }
        return new ReturnResult("200","修改失败");
    }

    /**更新角色对应的功能*/
    public ReturnResult updateRoleByFun(String roleId, List<String> funId) {
        Role role = mapper.selectById(roleId);
        if (ObjectUtil.isEmpty(role)){
            return new ReturnResult("200","无此角色");
        }
        mapper.deleteRolePerById(roleId);
        if(ObjectUtil.isNotEmpty(funId) && !"".equals(funId)){
            if (mapper.updateRoleByFun( roleId, funId)>0) {
                return new ReturnResult("200","分配成功");
            }
        }
        return new ReturnResult("200","分配失败");
    }


}
