package com.sums.service;

import com.sums.entity.Permission;
import com.baomidou.mybatisplus.extension.service.IService;
import com.sums.entity.ReturnResult;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
public interface PermissionService{
        List<Permission> findPermsByRoleId(String id);

        ReturnResult pagePermission();
        ReturnResult addPermission(Permission permission);
        ReturnResult delPermission(Integer funId);
        ReturnResult updatePermission(Permission permission);
        ReturnResult findFid(String roleId);
}
