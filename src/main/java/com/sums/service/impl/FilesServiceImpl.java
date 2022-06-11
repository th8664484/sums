package com.sums.service.impl;

import com.sums.entity.Files;
import com.sums.dao.FilesMapper;
import com.sums.service.FilesService;
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
public class FilesServiceImpl extends ServiceImpl<FilesMapper, Files> implements FilesService {

}
