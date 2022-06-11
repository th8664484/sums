package com.sums.service;

import com.sums.entity.ReturnResult;
import com.sums.entity.Role;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
public interface RoleService {
    ReturnResult pageRole(int page, int limit);

    ReturnResult addRole(Role role);
    ReturnResult delRole(Integer roleId);
    ReturnResult updateRole(Role role);
    ReturnResult updateRoleByFun(String roleId, List<String> funId);


}
