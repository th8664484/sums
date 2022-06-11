package com.sums.dao;

import com.sums.entity.Role;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
public interface RoleMapper extends BaseMapper<Role> {

    Role findByMemberId(String mId);
    void alter();
    void deleteRolePerById(String roleId);
    Integer updateRoleByFun(@Param("roleId") String roleId, @Param("list") List<String> funId);


}
