package com.sums.service.roles.impl;

import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.sums.dao.ActivityMapper;
import com.sums.dao.MemberMapper;
import com.sums.entity.Activity;
import com.sums.entity.Files;
import com.sums.entity.Member;
import com.sums.service.roles.AdaptiveStrategyRoles;
import com.sums.service.roles.StrategyRoles;
import com.sums.utils.LoginMemberUtils;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Component
public class MinisterRole extends AdaptiveStrategyRoles {

    @Resource
    private MemberMapper mapper;
    @Resource
    private ActivityMapper activityMapper;

    @Override
    public void assignRoles(Map<String,String> map) {
        Member member1 = mapper.getOneByRoleId("3",map.get("department"),map.get("faculty"));
        if (member1!=null) {
            List<String> roleIdList = mapper.getRoleIdByMeId(member1.getMeId());
//                mapper.delOneMemberRoleById(member1.getMeId(),"3");
            roleIdList.remove("3");
            if (map.get("roleId").endsWith("5") && roleIdList.contains("5")) {
                roleIdList.remove("5");
            }
            member1.setPosition("成员");
            if (!roleIdList.contains("4")) {
                roleIdList.add("4");
            }
            mapper.deleteMemberRoleById(member1.getMeId());
            mapper.insertMemberRole(member1.getMeId(),roleIdList);
            mapper.updateById(member1);
        }
    }

    @Override
    public QueryWrapper getFileQueryWrapper(Map<String, String> map) {
        QueryWrapper<Files> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("me_id", LoginMemberUtils.getMember().getMeId());
        queryWrapper = addConditions(queryWrapper,map);
        queryWrapper.or()
                .eq("faculty",LoginMemberUtils.getMember().getFaculty())
                .eq("department",LoginMemberUtils.getMember().getDepartment())
                .eq("visible","0");
        queryWrapper = addConditions(queryWrapper,map);
        queryWrapper.or()
                .eq("visible","-1");
        queryWrapper = addConditions(queryWrapper,map);
        queryWrapper.or()
                .eq("visible","3");

        return queryWrapper;
    }
    private QueryWrapper  addConditions(QueryWrapper<Files> queryWrapper,Map<String, String> map){
        if (ObjectUtil.isNotEmpty(map.get("file_name"))){
            queryWrapper.like("file_name", map.get("file_name"));
        }
        if (ObjectUtil.isNotEmpty(map.get("me_name"))){
            queryWrapper.eq("me_name", map.get("me_name"));
        }
        return queryWrapper;
    }
    @Override
    public QueryWrapper getActivityQueryWrapper(Map<String, String> map) {
        QueryWrapper<Activity> queryWrapper = new QueryWrapper<>();
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
        queryWrapper
                .eq("me_id",LoginMemberUtils.getMember().getMeId())
                .orderByDesc("submit_time")
                .orderByAsc("audit_status");
        return queryWrapper;
    }

    @Override
    public boolean removeActivity(Activity activity) {
        return activityMapper.deleteById(activity) > 0;
    }

    @Override
    public QueryWrapper getMemberQueryWrapper(Map<String, String> map) {
        map.put("faculty",LoginMemberUtils.getMember().getFaculty());
        map.put("department",LoginMemberUtils.getMember().getDepartment());
        QueryWrapper<Member> queryWrapper = new QueryWrapper<>();
        if (map.size()>2){
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
        queryWrapper.ne("me_id",LoginMemberUtils.getMember().getMeId());

        return queryWrapper;
    }

    @Override
    public Activity getActivity(Activity activity) {
        activity.setActivityId(IdUtil.simpleUUID());
        activity.setSubmitTime(new Date());
        activity.setMeId(LoginMemberUtils.getMember().getMeId());

        activity.setProcess("0");

        String meId = mapper.getMeIdByRole("6",LoginMemberUtils.getMember().getFaculty()).get(0);
        activity.setApprover(mapper.getOneById(meId).getMeName());

        activity.setFaculty( LoginMemberUtils.getMember().getFaculty());
        activity.setDepartment( LoginMemberUtils.getMember().getDepartment());
        activity.setTransition(activity.getTransition().equals("on")? "1":"0");
        return activity;
    }
}
