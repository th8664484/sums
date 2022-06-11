package com.sums.controller;


import com.sums.annotations.PermissionVerify;
import com.sums.entity.Announcement;
import com.sums.service.AnnouncementService;
import com.sums.utils.LoginMemberUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.Map;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
@Controller
public class AnnouncementController {

    @Autowired
    private AnnouncementService service;
    /**
     * 公告页
     * @return
     */
    @PermissionVerify(value ="system:announcement:announcement")
    @GetMapping("/announcements")
    public String announcementView(){
        return "studentUnion/announcements-manage";
    }

    /**查看编辑页*/
    @PermissionVerify(value ="system:announcement:look")
    @RequestMapping(value = {"/view-edit"})
    public String viewEdit(String annoId,String edit, Model model){
        Announcement announcement = "undefined".equals(annoId) ? null : service.findById(annoId);
        String[] attribute = new String[]{"annoId","annoTitle","annoText"};
        model.addAttribute("tag","公告");
        model.addAttribute("edit","undefined".equals(edit) ? "y" : edit);
        model.addAttribute("action","undefined".equals(annoId)? "/add/anno":"/update/anno");
        model.addAttribute("attribute",attribute);
        if (announcement != null){
            model.addAttribute("id",announcement.getAnnoId());
            model.addAttribute("title",announcement.getAnnoTitle());
            model.addAttribute("content",announcement.getAnnoText());
        }
        return "studentUnion/view-edit";
    }

    /**
     * 分页
     * @param map
     * @return
     */
    @GetMapping("/all/anno")
    @ResponseBody
    public Object pageAnnouncement(@RequestParam Map<String,String> map){
        return service.pageAnnouncement(map);
    }

    /**
     * 添加公告
     * @param announcement
     * @return
     */
    @PermissionVerify(value ="system:announcement:add")
    @PostMapping("/add/anno")
    @ResponseBody
    public Object addAnnouncement(Announcement announcement){
        announcement.setMeName(LoginMemberUtils.getMember().getMeName());
        announcement.setMeId(LoginMemberUtils.getMember().getMeId());
        announcement.setAnnoTime(new Date());
        return service.addAnnouncement(announcement);
    }

    /**
     * 更新公告
     * @param announcement
     * @return
     */
    @PermissionVerify(value ="system:announcement:update")
    @PostMapping("/update/anno")
    @ResponseBody
    public Object updateAnnouncement(Announcement announcement){
        announcement.setAnnoTime(new Date());
        return service.updateAnnouncement(announcement);
    }

    /**
     * 删除公告
     * @param annoId
     * @return
     */
    @PermissionVerify(value ="system:announcement:del")
    @PostMapping("/del/anno")
    @ResponseBody
    public Object delAnnouncement(String annoId){
        return service.delAnnouncement(annoId);
    }

}
