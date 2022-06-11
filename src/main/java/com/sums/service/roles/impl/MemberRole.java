package com.sums.service.roles.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.sums.entity.Files;
import com.sums.entity.Member;
import com.sums.service.roles.AdaptiveStrategyRoles;
import com.sums.service.roles.StrategyRoles;
import com.sums.utils.LoginMemberUtils;
import org.springframework.stereotype.Component;

import java.util.Map;
import java.util.Set;

@Component
public class MemberRole extends AdaptiveStrategyRoles {

    @Override
    public QueryWrapper getFileQueryWrapper(Map<String, String> map) {
        QueryWrapper<Files> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("me_id", LoginMemberUtils.getMember().getMeId());
        queryWrapper = addConditions(queryWrapper,map);
        queryWrapper.or()
                .eq("faculty",LoginMemberUtils.getMember().getFaculty())
                .eq("department",LoginMemberUtils.getMember().getDepartment())
                .eq("visible","4");
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
        queryWrapper.ne("position","部长");
        queryWrapper.ne("me_id",LoginMemberUtils.getMember().getMeId());

        return queryWrapper;
    }
}
