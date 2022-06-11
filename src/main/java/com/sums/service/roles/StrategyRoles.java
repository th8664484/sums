package com.sums.service.roles;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sums.entity.Activity;

import java.util.Map;

/*** 策略接口*/
public interface StrategyRoles {
    /**** 分配角色* @return*/
    void assignRoles(Map<String,String> map) throws Exception;
    /*** 查询文件条件*/
    QueryWrapper getFileQueryWrapper(Map<String, String> map) throws Exception;
    /*** 查询活动条件*/
    QueryWrapper getActivityQueryWrapper(Map<String, String> map) throws Exception;
    /**增加活动时初始化活动数据*/
    Activity getActivity(Activity activity);
    /*** 删除活动信息*/
    boolean removeActivity(Activity activity) throws Exception;
    /**** 成员查询条件*/
    QueryWrapper getMemberQueryWrapper(Map<String, String> map) throws Exception;
}
