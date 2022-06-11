package com.sums.service.impl;

import com.sums.entity.Work;
import com.sums.dao.WorkMapper;
import com.sums.service.WorkService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tonghui
 * @since 2022-03-10
 */
@Service
public class WorkServiceImpl extends ServiceImpl<WorkMapper, Work> implements WorkService {

}
