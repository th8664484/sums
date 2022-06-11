package com.sums.service;


import com.sums.entity.Announcement;
import com.sums.entity.ReturnResult;

import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
public interface AnnouncementService{

    ReturnResult addAnnouncement(Announcement announcement);
    ReturnResult updateAnnouncement(Announcement announcement);
    ReturnResult pageAnnouncement(Map<String,String> map);
    ReturnResult delAnnouncement(String annoId);
    Announcement findById(String annoId);
    List<Announcement> selectList();
}
