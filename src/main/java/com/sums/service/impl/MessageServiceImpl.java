package com.sums.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sums.dao.MemberMapper;
import com.sums.dao.MsgSinkMapper;
import com.sums.entity.*;
import com.sums.dao.MessageMapper;
import com.sums.service.MessageService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.sums.utils.LoginMemberUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tonghui
 * @since 2022-03-12
 */
@Service
public class MessageServiceImpl extends ServiceImpl<MessageMapper, Message> implements MessageService {

    @Autowired
    private MsgSinkMapper mapper;
    @Autowired
    private MemberMapper memberMapper;

    @Override
    public List<MsgSink> getMsgById(String meId) {
        List<MsgSink> msg = mapper.getMsg(meId);
        return search(msg);
    }
    /**时间降序排序*/
    private List<MsgSink> search(List<MsgSink> msgSinkList){
        Collections.sort(msgSinkList, new Comparator<MsgSink>() {
         @Override
         public int compare(MsgSink m1, MsgSink m2) {
             if (m1.getMessage().getLetterTime().compareTo( m2.getMessage().getLetterTime()) == 1){
                        return -1;
             }
             if (m1.getMessage().getLetterTime().compareTo( m2.getMessage().getLetterTime()) == 0){
                         return 0;
             }
               return 1;
            }
        });
        return msgSinkList;
    }

    @Override
    public Integer getIsClickNum(String meId) {
        return mapper.getIsClickNum(meId);
    }

    public ReturnResult click(String messageId){
        return new ReturnResult("200","",mapper.click(messageId, LoginMemberUtils.getMember().getMeId()));
    }
    public ReturnResult delMsg(String messageId){
        return new ReturnResult("200","删除成功",mapper.delMsg(messageId, LoginMemberUtils.getMember().getMeId()));
    }

    @Override
    public ReturnResult delAllMsg(String messageId) {
        return new ReturnResult("200","删除成功",mapper.delMsg(messageId,null));
    }

    @Transactional
    public Integer addMsgSink(String messageId,String scope){
        QueryWrapper<Member> queryWrapper = new QueryWrapper<>();
        if ("-1".equals(scope)){
            queryWrapper.ne("position","管理员");
            List<String> memberIdList = new ArrayList<>();
            memberMapper.selectList(queryWrapper).forEach(member -> {
                memberIdList.add(member.getMeId());
            });
            return mapper.addValues(messageId,memberIdList);
        }
        if ("0".equals(scope)){
            queryWrapper.eq("position","主席");
            List<String> memberIdList = new ArrayList<>();
            memberMapper.selectList(queryWrapper).forEach(member -> {
                memberIdList.add(member.getMeId());
            });
            return mapper.addValues(messageId,memberIdList);
        }
        if ("1".equals(scope)){
            queryWrapper.eq("position","副主席");
            List<String> memberIdList = new ArrayList<>();
            memberMapper.selectList(queryWrapper).forEach(member -> {
                memberIdList.add(member.getMeId());
            });
            return mapper.addValues(messageId,memberIdList);
        }
        if ("2".equals(scope)){
            List<Role> roles = LoginMemberUtils.getMember().getRoles();
            for (Role role : roles) {
                if("chairman".equals(role.getRoleName()) || "admin".equals(role.getRoleName())){
                    queryWrapper.eq("position","部长");
                }
                if("vice-chairman".equals(role.getRoleName())){
                    queryWrapper.eq("faculty", LoginMemberUtils.getMember().getFaculty());
                    queryWrapper.eq("position","部长");
                }
            }

            List<String> memberIdList = new ArrayList<>();
            memberMapper.selectList(queryWrapper).forEach(member -> {
                memberIdList.add(member.getMeId());
            });
            return mapper.addValues(messageId,memberIdList);
        }
        if ("3".equals(scope)){
            queryWrapper.eq("faculty", LoginMemberUtils.getMember().getFaculty());
            queryWrapper.eq("department",LoginMemberUtils.getMember().getDepartment());
            List<String> memberIdList = new ArrayList<>();
            memberMapper.selectList(queryWrapper).forEach(member -> {
                memberIdList.add(member.getMeId());
            });
            return mapper.addValues(messageId,memberIdList);
        }
        return 0;
    }
}
