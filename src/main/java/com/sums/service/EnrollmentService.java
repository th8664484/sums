package com.sums.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.sums.entity.Enrollment;
import com.sums.entity.ReturnResult;

import java.util.List;

public interface EnrollmentService extends IService<Enrollment> {

    List<Enrollment> getList(String activityId);
    ReturnResult selectListByMinister(String chairmanType);
}
