package com.sums.service;

import com.sums.entity.Activity;
import com.baomidou.mybatisplus.extension.service.IService;
import com.sums.entity.ReturnResult;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tonghui
 * @since 2022-03-10
 */
public interface ActivityService extends IService<Activity> {

    ReturnResult pageActivity(Map<String,String> map);
    List<Activity> selectList();
    Activity getOneTransition();
    boolean remove(String activityId);
}
