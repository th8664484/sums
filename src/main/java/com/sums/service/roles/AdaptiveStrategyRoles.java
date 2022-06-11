package com.sums.service.roles;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sums.entity.Activity;

import java.util.Map;

public abstract class AdaptiveStrategyRoles implements StrategyRoles{
    @Override
    public void assignRoles(Map<String, String> map) throws Exception { }
    @Override
    public QueryWrapper getFileQueryWrapper(Map<String, String> map) throws Exception {
        return null;
    }
    @Override
    public QueryWrapper getActivityQueryWrapper(Map<String, String> map)throws Exception {
        return null;
    }
    @Override
    public boolean removeActivity(Activity activity)throws Exception {
        return false;
    }
    @Override
    public QueryWrapper getMemberQueryWrapper(Map<String, String> map) throws Exception{
        return null;
    }

    @Override
    public Activity getActivity(Activity activity) {
        return null;
    }
}
