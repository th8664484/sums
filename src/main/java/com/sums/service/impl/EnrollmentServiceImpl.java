package com.sums.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sums.dao.EnrollmentMapper;
import com.sums.entity.Enrollment;
import com.sums.entity.Member;
import com.sums.entity.ReturnResult;
import com.sums.service.EnrollmentService;
import com.sums.utils.LoginMemberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class EnrollmentServiceImpl extends ServiceImpl<EnrollmentMapper, Enrollment> implements EnrollmentService {

    @Resource
    private EnrollmentMapper mapper;

    @Override
    public List<Enrollment> getList(String activityId) {
        QueryWrapper<Enrollment> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("activity_id",activityId);
        queryWrapper.orderByDesc("sign_up_time");
        return  mapper.selectList(queryWrapper);
    }

    public ReturnResult selectListByMinister(String chairmanType){
        QueryWrapper<Enrollment> queryWrapper = new QueryWrapper<>();
        if("2".equals(chairmanType)){
            queryWrapper.eq("role","6");
            queryWrapper.eq("faculty",LoginMemberUtils.getMember().getFaculty());
        }
        if ("3".equals(chairmanType)){
            queryWrapper.eq("role","2");
        }
        return  new ReturnResult("200","成功",mapper.selectList(queryWrapper));
    }

}
