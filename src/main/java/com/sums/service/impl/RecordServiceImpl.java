package com.sums.service.impl;

import com.sums.entity.Record;
import com.sums.dao.RecordMapper;
import com.sums.service.RecordService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tonghui
 * @since 2022-03-12
 */
@Service
public class RecordServiceImpl extends ServiceImpl<RecordMapper, Record> implements RecordService {

}
