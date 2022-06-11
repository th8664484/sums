package com.sums.service;

import com.sums.entity.ReturnLinkage;
import com.sums.entity.Member;
import com.sums.entity.ReturnResult;

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
public interface MemberService{

    Member getOneAllById(String meId);
    Member getOneById(String meId);
    ReturnResult updateRoleById(String meId, List<String> roleIds);
    ReturnResult confirmPassword(String meId,String password);
    ReturnResult pageMember(Map<String ,String> map);
    ReturnResult updateOneMember(Member member);
    ReturnResult findRoleIdByMeId(String meId);
    ReturnResult deleteMember(String meId);
    ReturnResult save(Member member);
    ReturnResult getOnlineNum();
    ReturnResult getSexNum();
    List<Map<String,String>> getMeIdAndMeName(String depaId);
    List<ReturnLinkage> faculty();
    List<ReturnLinkage> majorList(String faculty);
    List<ReturnLinkage> gradeList(String major);
    List<String> getMeIdByRoleId(String roleId);
    List<String> getMeIdByRoleId(String roleId,String faculty);
    List<Member> getAll();
    Map<String,Object> getTopTable();
    Boolean isRoleId(String meId);
    void text(String meid,String roleId);
}
