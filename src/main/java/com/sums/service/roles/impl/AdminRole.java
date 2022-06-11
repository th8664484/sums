package com.sums.service.roles.impl;

import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.sums.dao.ActivityMapper;
import com.sums.dao.MemberMapper;
import com.sums.entity.Activity;
import com.sums.entity.Files;
import com.sums.entity.Member;
import com.sums.service.MemberService;
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
public class AdminRole extends AdaptiveStrategyRoles {
    @Resource
    private MemberMapper mapper;
    @Resource
    private ActivityMapper activityMapper;
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
        return queryWrapper;
    }

    @Override
    public QueryWrapper getFileQueryWrapper(Map<String, String> map) {
        QueryWrapper<Files> queryWrapper = new QueryWrapper<>();
        List<String> meId =mapper.getMeIdByRole("6",null);
        meId.add(mapper.getMeIdByRole("2",null).get(0));
        queryWrapper.eq("me_id", LoginMemberUtils.getMember().getMeId());
        if (ObjectUtil.isNotEmpty(map.get("file_name"))){
            queryWrapper.like("file_name", map.get("file_name"));
        }
        if (ObjectUtil.isNotEmpty(map.get("me_name"))){
            queryWrapper.eq("me_name", map.get("me_name"));
        }
        queryWrapper.or()
                .in("me_id",meId)
                .eq("visible","0");
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
        if(val>0){
            queryWrapper
                    .eq("admin_del","0")
                    .eq("process","2");
        }else {
            queryWrapper
                    .eq("admin_del","0")
                    .eq("process","2")
                    .or()
                    .eq("me_id",LoginMemberUtils.getMember().getMeId());
        }
        queryWrapper.orderByDesc("submit_time")
                .orderByAsc("audit_status");
        return queryWrapper;
    }
    @Override
    public boolean removeActivity(Activity activity) {
        if (activity.getMeId().equals(LoginMemberUtils.getMember().getMeId())) {
            return activityMapper.deleteById(activity) > 0;
        }else {
            activity.setAdminDel("1");
            return activityMapper.updateById(activity) > 0;
        }
    }

    @Override
    public Activity getActivity(Activity activity) {
        activity.setActivityId(IdUtil.simpleUUID());
        activity.setSubmitTime(new Date());
        activity.setMeId(LoginMemberUtils.getMember().getMeId());

        activity.setDepartment("管理员");
        activity.setAuditStatus("1");
        activity.setProcess("2");
        activity.setAdminDel("0");
        activity.setChairmanDel("1");

        activity.setApprover(LoginMemberUtils.getMember().getMeName());
        activity.setFaculty("");
        activity.setTransition(activity.getTransition().equals("on")? "1":"0");
        return activity;
    }
}
