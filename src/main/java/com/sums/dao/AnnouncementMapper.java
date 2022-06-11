package com.sums.dao;

import com.sums.entity.Announcement;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
public interface AnnouncementMapper extends BaseMapper<Announcement> {
        void alter();
}
