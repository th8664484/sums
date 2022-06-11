package com.sums.utils;

import cn.hutool.core.util.IdUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.sums.entity.Activity;
import com.sums.entity.Member;
import com.sums.entity.Role;
import com.sums.service.ActivityService;
import com.sums.service.MemberService;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.*;

/***
 * 角色条件
 */
public class RoleQuerWrapper {

    private static MemberService memberService = (MemberService) ApplicationContextUtil.getBean("memberServiceImpl");
    private static ActivityService activityService = (ActivityService) ApplicationContextUtil.getBean("activityServiceImpl");
    private static Member member = LoginMemberUtils.getMember();


    public static<T> QueryWrapper getQueryWrapper(QueryWrapper<T> queryWrapper, Map<String,String> map){
        if(map.size()>2){
            Set<String> keySet = map.keySet();
            for (String s : keySet) {
                if ("page".equals(s) || "limit".equals(s)){
                    continue;
                }
                if (StringUtils.isNotBlank(map.get(s))){
                    queryWrapper.eq(s,map.get(s));
                }
            }
        }
        LoginMemberUtils.getMember().getRoles().forEach(role -> {
            if ("admin".equals(role.getRoleName())){
                queryWrapper.eq("admin_del","0").or()
                        .eq("process","1").or();
            }else
            if ("chairman".equals(role.getRoleName())){
                queryWrapper.eq("chairman_del","0").or()
                        .eq("is_submit","0").or();
            }else
            if ("vice-chairman".equals(role.getRoleName())){
                queryWrapper.eq("faculty",LoginMemberUtils.getMember().getFaculty()).or();
            }
//            else
//            if ("minister".equals(role.getRoleName())){
//                queryWrapper.eq("me_id",LoginMemberUtils.getMember().getMeId());
//            }
        });
        queryWrapper.eq("me_id",LoginMemberUtils.getMember().getMeId());
        queryWrapper.orderByDesc("submit_time").orderByAsc("audit_status");
        return queryWrapper;
    }

    public static<T> QueryWrapper getFileQueryWrapper(QueryWrapper<T> queryWrapper, Map<String,String> map){
        List<String> roles = getRoles();
        Set<String> keySet = map.keySet();
        if (map.size() > 2){
            for (String s : keySet) {
                if ("page".equals(s) || "limit".equals(s)){
                    continue;
                }
                if (StringUtils.isNotBlank(map.get(s))){
                    queryWrapper.eq(s,map.get(s));
                }
            }
            return  queryWrapper;
        }
        LoginMemberUtils.getMember().getRoles().forEach(role -> {
            if ("admin".equals(role.getRoleName())){
                List<String> meId = memberService.getMeIdByRoleId("6");
                meId.add(memberService.getMeIdByRoleId("2").get(0));
                queryWrapper.eq("me_id",LoginMemberUtils.getMember().getMeId())
                        .or()
                        .in("me_id",meId)
                        .eq("visible","0");
            }else
            if ("chairman".equals(role.getRoleName())){
                List<String> meId = memberService.getMeIdByRoleId("6");
                queryWrapper.eq("me_id",LoginMemberUtils.getMember().getMeId())
                        .or()
                        .in("me_id",meId)
                        .eq("visible","0")
                        .or()
                        .eq("visible","1")
                        .or()
                        .eq("visible","-1");
            }else
            if ("vice-chairman".equals(role.getRoleName())){
                List<String> meId = memberService.getMeIdByRoleId("3",LoginMemberUtils.getMember().getFaculty());

                queryWrapper.eq("me_id",LoginMemberUtils.getMember().getMeId())
                        .or()
                        .in("me_id",meId)
                        .eq("visible","0")
                        .or()
                        .eq("visible","-1")
                        .or()
                        .eq("visible","2");
            }
            else
            if ("minister".equals(role.getRoleName())){
                queryWrapper.eq("me_id",LoginMemberUtils.getMember().getMeId())
                        .or()
                        .eq("faculty",LoginMemberUtils.getMember().getFaculty())
                        .eq("department",LoginMemberUtils.getMember().getDepartment())
                        .eq("visible","0")
                        .or()
                        .eq("visible","-1")
                        .or()
                        .eq("visible","3");
            }else
            if ("member".equals(role.getRoleName())){
                queryWrapper.eq("me_id",LoginMemberUtils.getMember().getMeId())
                        .or()
                        .eq("faculty",LoginMemberUtils.getMember().getFaculty())
                        .eq("department",LoginMemberUtils.getMember().getDepartment())
                        .eq("visible","4")
                        .or()
                        .eq("visible","-1");
            }
        });
        queryWrapper.orderByDesc("submit_time");
        return queryWrapper;
    }

    public static List<String> getRoles(){
//        Member member1 = memberService.getOneAllById(member.getMeId());
        List<Role> roles = member.getRoles();
        List<String> strings = new ArrayList<>();
        roles.forEach(role -> {strings.add(role.getRoleName());});
        return strings;
    }

    public static Activity getActivity(Activity activity){
        activity.setActivityId(IdUtil.simpleUUID());
        activity.setSubmitTime(new Date());
        activity.setMeId(LoginMemberUtils.getMember().getMeId());
        LoginMemberUtils.getMember().getRoles().forEach(role -> {
            if ("admin".equals(role.getRoleName())){
                activity.setDepartment("学校");
                activity.setAuditStatus("1");
                activity.setProcess("1");
                activity.setAdminDel("0");
                activity.setChairmanDel("1");
                activity.setApprover(LoginMemberUtils.getMember().getMeName());
            }
        });
        activity.setFaculty( LoginMemberUtils.getMember().getFaculty());
        activity.setDepartment( LoginMemberUtils.getMember().getDepartment());
        activity.setTransition(activity.getTransition().equals("on")? "1":"0");
        return activity;
    }

    public static boolean remove(Activity activity){
        List<String> roles = getRoles();
        if (roles.contains("admin")){
            if (activity.getMeId().equals(LoginMemberUtils.getMember().getMeId())) {
                return activityService.removeById(activity);
            }else {
                activity.setAdminDel("1");
                return activityService.updateById(activity);
            }
        }else
        if (roles.contains("chairman")){
            if (activity.getMeId().equals(LoginMemberUtils.getMember().getMeId())) {
                return activityService.removeById(activity);
            }else {
                activity.setChairmanDel("1");
                return activityService.updateById(activity);
            }
        }else
        if (roles.contains("minister")){
            return activityService.removeById(activity);
        }
        return false;
    }
}
