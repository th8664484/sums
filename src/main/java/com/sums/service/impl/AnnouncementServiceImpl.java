package com.sums.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sums.dao.AnnouncementMapper;
import com.sums.entity.Announcement;
import com.sums.entity.ReturnResult;
import com.sums.entity.Role;
import com.sums.service.AnnouncementService;
import com.sums.utils.LoginMemberUtils;
import com.sums.utils.PageUtils;
import com.sums.utils.RoleQuerWrapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
@Service
public class AnnouncementServiceImpl implements AnnouncementService {

    @Resource
    private AnnouncementMapper mapper;

    @Override
    public ReturnResult pageAnnouncement(Map<String, String> map) {
        int page = Integer.parseInt(map.get("page"));
        int limit = Integer.parseInt(map.get("limit"));
        Page<Announcement> p = new Page<>(page,limit);
        QueryWrapper<Announcement> queryWrapper = new QueryWrapper<>();
        List<Role> roles = LoginMemberUtils.getMember().getRoles();
        if ("2".equals(roles.get(0).getRoleId().toString())){
            queryWrapper.eq("me_id", LoginMemberUtils.getMember().getMeId());
        }
        p= mapper.selectPage(p, queryWrapper);
        return new ReturnResult("0","SUCCESS",p.getTotal(),p.getRecords());
    }

    @Override
    public ReturnResult addAnnouncement(Announcement announcement) {
        mapper.alter();
        if (mapper.insert(announcement)>0) {
            return new ReturnResult("200","添加成功","anno");
        }
        return new ReturnResult("200","添加失败");
    }

    @Override
    public ReturnResult updateAnnouncement(Announcement announcement) {
        if (mapper.updateById(announcement)>0) {
            return new ReturnResult("200","修改成功","anno");
        }
        return new ReturnResult("200","修改失败");
    }

    public ReturnResult delAnnouncement(String annoId){
        if (mapper.deleteById(annoId)>0){
            return new ReturnResult("200","删除成功","anno");
        }
        return new ReturnResult("200","删除失败");
    }

    public Announcement findById(String annoId){
        Announcement announcement = mapper.selectById(annoId);
        return announcement;
    }

    @Override
    public List<Announcement> selectList() {
        QueryWrapper<Announcement> queryWrapper = new QueryWrapper<>();
        queryWrapper.apply("anno_time > DATE_SUB(NOW(), INTERVAL 5 DAY)" );
        List<Announcement> announcements = mapper.selectList(queryWrapper);
        if (announcements.size()==0) {
            queryWrapper.clear();
            queryWrapper.orderByDesc("anno_time");
            Page<Announcement> p = new Page<>(0,3);
            p = mapper.selectPage(p,queryWrapper);
            announcements = p.getRecords();
        }
        announcements.forEach(announcement -> {
            announcement.toHtml();
        });
        return announcements;
    }
}
