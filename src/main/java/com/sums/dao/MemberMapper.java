package com.sums.dao;

import com.sums.entity.Member;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Param;

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
public interface MemberMapper extends BaseMapper<Member> {

    Member getOneById(String id);
    List<String> facultyList(String faculty);
    List<String> majorList(String faculty);
    List<String> gradeList(String major);
    List<String> findRoleIdByMeId(String meId);
    List<Map<String, String>> getMeIdAndMeName(String depaId);

    Integer deleteMemberRoleById(String meId);
    Integer insertMemberRole(@Param("meId") String meId, @Param("list") List<String> roleIds);
    List<Map<String,String>> getMeIdAndRidByRoleId(String roleId);
    List<Map<String,String>> getByMeIdAndRid(@Param("meId") String meId,@Param("roleId")String roleId);
    List<String> getMeIdByRole(@Param("roleId")String roleId,@Param("faculty")String faculty);
    Integer delOneMemberRoleById(@Param("meId") String meId,@Param("roleId") String roleId);
    List<String> getRoleIdByMeId(String memberId);
    Member getOneByRoleId(@Param("roleId") String roleId , @Param("depa") String depa ,@Param("faculty") String faculty);

    Integer saveOne(@Param("meId") String meId,@Param("roleId") String roleId);
}
