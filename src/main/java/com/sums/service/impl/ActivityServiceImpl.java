package com.sums.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sums.entity.Activity;
import com.sums.dao.ActivityMapper;
import com.sums.entity.ReturnResult;
import com.sums.entity.Role;
import com.sums.service.ActivityService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sums.service.factory.RoleFactory;
import com.sums.service.roles.StrategyRoles;
import com.sums.utils.LoginMemberUtils;
import com.sums.utils.RoleQuerWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tonghui
 * @since 2022-03-10
 */
@Service
public class ActivityServiceImpl extends ServiceImpl<ActivityMapper, Activity> implements ActivityService {

//    @Autowired
//    private ActivityMapper mapper;
    @Resource
    private RoleFactory roleFactory;

    @Override
    public ReturnResult pageActivity(Map<String, String> map) {
        try {
            int page = Integer.parseInt(map.get("page"));
            int limit = Integer.parseInt(map.get("limit"));
            Page<Activity> p = new Page<>(page,limit);
            List<Role> roleList = LoginMemberUtils.getMember().getRoles();
            StrategyRoles roleStrategServer = roleFactory.getRoleStrategServer(String.valueOf(roleList.get(0).getRoleId()));
            QueryWrapper<Activity> queryWrapper =roleStrategServer.getActivityQueryWrapper( map);
            p = baseMapper.selectPage(p, queryWrapper);
            return new ReturnResult("0","SUCCESS",p.getTotal(),p.getRecords());
        }catch (Exception e){
        }
        return new ReturnResult("0","ERROR",0L,null);
    }

    @Override
    public List<Activity> selectList() {
        QueryWrapper<Activity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("audit_status","1");
        queryWrapper.eq("transition","0");
        queryWrapper.isNotNull("img_path");
        queryWrapper.orderByDesc("submit_time");
        return baseMapper.selectList(queryWrapper);
    }

    @Override
    public Activity getOneTransition() {
        QueryWrapper<Activity> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("transition","1");
        queryWrapper.isNotNull("cut_off_time");
        return baseMapper.selectOne(queryWrapper);
    }

    @Override
    public boolean remove(String activityId) {
        List<Role> roleList = LoginMemberUtils.getMember().getRoles();
        StrategyRoles roleStrategServer = roleFactory.getRoleStrategServer(String.valueOf(roleList.get(0).getRoleId()));
        try {
            return roleStrategServer.removeActivity(baseMapper.selectById(activityId));
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}
