package com.sums.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sums.entity.Permission;
import com.sums.dao.PermissionMapper;
import com.sums.entity.ReturnResult;
import com.sums.service.PermissionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sums.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
@Service
public class PermissionServiceImpl implements PermissionService {

    @Resource
    private PermissionMapper mapper;
    @Override
    public List<Permission> findPermsByRoleId(String id) {
        return mapper.findPermsByRoleId(id);
    }

    /**查询展示*/
    public ReturnResult pagePermission(){
        QueryWrapper<Permission> queryWrapper = new QueryWrapper<>();
        return new ReturnResult("0","SUCCESS",mapper.selectList(queryWrapper));
    }

    public ReturnResult addPermission(Permission permission){
        mapper.alter();
        if (mapper.insert(permission)>0){
            return new ReturnResult("200","添加成功");
        }
        return new ReturnResult("200","添加失败");
    }

    @Override
    public ReturnResult delPermission(Integer funId) {
        del(funId);
        if (mapper.deleteById(funId)>0){
            return new ReturnResult("200","删除成功");
        }
        return new ReturnResult("200","删除失败");
    }

    private void del(Integer funId){
        QueryWrapper<Permission> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("pid", funId);
        List<Permission> permissions = mapper.selectList(queryWrapper);
        if (!(permissions.size() > 0)){
            return ;
        }
        for (Permission permission : permissions) {
            del(Integer.parseInt(permission.getFunId().toString()));
            mapper.deleteById(permission.getFunId());
        }
    }

    @Override
    public ReturnResult updatePermission(Permission permission) {
        if (mapper.updateById(permission)>0){
            return new ReturnResult("200","修改成功");
        }
        return new ReturnResult("200","修改失败");
    }

    public ReturnResult findFid(String roleId){
        List<String> fid = mapper.findFid(roleId);
        if (fid.size() > 0){
            return new ReturnResult("200","操作成功",fid);
        }
        return new ReturnResult("200","操作失败");
    }
}
