package com.sums.dao;

import com.sums.entity.Permission;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
public interface PermissionMapper extends BaseMapper<Permission> {

    List<Permission> findPermsByRoleId(String id);
    void alter();
    List<String> findFid(String roleId);
}
