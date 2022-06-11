package com.sums.controller;


import cn.hutool.core.util.IdUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sums.entity.Items;
import com.sums.entity.Message;
import com.sums.entity.Record;
import com.sums.entity.ReturnResult;
import com.sums.service.MessageService;
import com.sums.utils.LoginMemberUtils;
import com.sums.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.Map;
import java.util.Set;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tonghui
 * @since 2022-03-12
 */
@Controller
@RequestMapping("/message")
public class MessageController {

    @Autowired
    private MessageService service;

    /**
     * 消息页
     * @return
     */
    @GetMapping("/")
    public String activityView(){
        return "studentUnion/message";
    }

    /**
     * 分页
     * @param map
     * @return
     */
    @RequestMapping("/all")
    @ResponseBody
    public Object pageMessage(@RequestParam Map<String,String> map){
        int page = Integer.parseInt(map.get("page"));
        int limit = Integer.parseInt(map.get("limit"));
        Page<Message> p = new Page<>(page,limit);
        QueryWrapper<Message> queryWrapper = new QueryWrapper<>();
        if (map.size()>2){
            Set<String> keySet = map.keySet();
            for (String s : keySet) {
                if ("page".equals(s) || "limit".equals(s)){
                    continue;
                }
                if (StringUtils.isNotBlank(map.get(s))){
                    queryWrapper.eq(s,map.get(s));
                }
            }
        }
        queryWrapper.eq("me_id",LoginMemberUtils.getMember().getMeId());
        queryWrapper.orderByDesc("letter_time");
        p = service.page(p, queryWrapper);
        return new ReturnResult("0","SUCCESS",p.getTotal(),p.getRecords());
    }

    /**
     * 新增
     */
    @PostMapping("/add")
    @ResponseBody
    public Object addMessage(Message message){
        message.setMessageId(IdUtil.simpleUUID());
        message.setLetterTime(new Date());
        message.setLetterName(LoginMemberUtils.getMember().getMeName());
        message.setMeId(LoginMemberUtils.getMember().getMeId());
        if (service.save(message)) {
            if (service.addMsgSink(message.getMessageId(),message.getScope())>0) {
                return new ReturnResult("200","发送成功","message");
            }
        }
        return new ReturnResult("200","发送失败");
    }

    /**
     * 删除
     */
    @PostMapping("/del")
    @ResponseBody
    public Object delMessage(String messageId){
        if (service.removeById(messageId)) {
            service.delAllMsg(messageId);
            return new ReturnResult("200","删除成功","message");
        }
        return new ReturnResult("200","删除失败");
    }


    /**
     * 页面信息动态更新
     * @param model
     * @return
     */
    @GetMapping("/getMsgList")
    public String getMsgList(Model model){
        model.addAttribute("msgList",service.getMsgById(LoginMemberUtils.getMember().getMeId()));
        return "studentUnion/index :: msgList";
    }

    /**
     * 新消息
     * @return
     */
    @GetMapping("/getNewMsg")
    @ResponseBody
    public Object getRecordInfo(){
        return new ReturnResult("200","",service.getIsClickNum(LoginMemberUtils.getMember().getMeId()));
    }

    /**
     * 点击消息
     * @param messageId
     * @return
     */
    @PostMapping("/click")
    @ResponseBody
    public Object click(String messageId){
        return service.click(messageId);
    }

    /**
     * 删除消息
     * @param messageId
     * @return
     */
    @PostMapping("/delMsg")
    @ResponseBody
    public Object delMsg(String messageId){
        return service.delMsg(messageId);
    }

}
