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
import com.sums.utils.DepaNameUtil;
import com.sums.utils.LoginMemberUtils;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

@Component
public class ChairmanRole extends AdaptiveStrategyRoles {
    @Resource
    private MemberMapper mapper;
    @Resource
    private ActivityMapper activityMapper;

    @Override
    public void assignRoles(Map<String,String> map) {
        List<Map<String, String>> meIdByRoleId = mapper.getMeIdAndRidByRoleId("2"); //判断需要给这个成员分配主席这个角色
        if (meIdByRoleId.size()>0) {
            String memberId = meIdByRoleId.get(0).get("memberId");
            List<String> roleIdList = mapper.getRoleIdByMeId(memberId);
            roleIdList.remove("2");
            Member member1 = mapper.selectById(memberId);
            member1.setPosition("成员");
            member1.setDepartment(DepaNameUtil.map.get(member1.getDepartmentId()));
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
        List<String> meId = mapper.getMeIdByRole("6",null);
        queryWrapper.eq("me_id", LoginMemberUtils.getMember().getMeId());
        queryWrapper = addConditions(queryWrapper,map);
        queryWrapper.or()
                .in("me_id",meId)
                .eq("visible","0");
        queryWrapper = addConditions(queryWrapper,map);
        queryWrapper.or()
                .eq("visible","1");
        queryWrapper = addConditions(queryWrapper,map);
        queryWrapper.or()
                .eq("visible","-1");
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
        int val = 0;
        if(map.size()>2){
            Set<String> keySet = map.keySet();
            for (String s : keySet) {
                if ("page".equals(s) || "limit".equals(s)){
                    continue;
                }
                if (StringUtils.isNotBlank(map.get(s))){
                    queryWrapper.eq(s,map.get(s));
                    val++;
                }
            }
        }
        queryWrapper
                .eq("chairman_del","0")
                .ge("process","1")
                .le("process","2");
        if (val==0){
            queryWrapper.or()
                    .eq("me_id",LoginMemberUtils.getMember().getMeId());
        }
        queryWrapper
                .orderByDesc("submit_time")
                .orderByAsc("audit_status");
        return queryWrapper;
    }

    @Override
    public boolean removeActivity(Activity activity) {
        if (activity.getMeId().equals(LoginMemberUtils.getMember().getMeId())) {
            return activityMapper.deleteById(activity) > 0;
        }else {
            activity.setChairmanDel("1");
            return activityMapper.updateById(activity) > 0;
        }
    }

    @Override
    public QueryWrapper getMemberQueryWrapper(Map<String, String> map) {
        QueryWrapper<Member> queryWrapper = new QueryWrapper<>();
        int val = 0;
        if (map.size()>2){
            Set<String> keySet = map.keySet();
            for (String s : keySet) {
                if ("page".equals(s) || "limit".equals(s)){
                    continue;
                }
                if (StringUtils.isNotBlank(map.get(s))){
                    queryWrapper.eq(s,map.get(s));
                    val++;
                }
            }
        }
        if(val==0) {
            String id = LoginMemberUtils.getMember().getMeId();
            queryWrapper.ne("me_id",id);
        }
        queryWrapper.ne("position","管理员");
        return queryWrapper;
    }

    @Override
    public Activity getActivity(Activity activity) {
        activity.setActivityId(IdUtil.simpleUUID());
        activity.setSubmitTime(new Date());
        activity.setMeId(LoginMemberUtils.getMember().getMeId());

        activity.setProcess("1");

        activity.setApprover(LoginMemberUtils.getMember().getMeName());
        activity.setFaculty( LoginMemberUtils.getMember().getFaculty());
        activity.setDepartment("主席");
        activity.setTransition(activity.getTransition().equals("on")? "1":"0");
        return activity;
    }
}
