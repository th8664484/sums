package com.sums.service;

import com.sums.entity.Message;
import com.baomidou.mybatisplus.extension.service.IService;
import com.sums.entity.MsgSink;
import com.sums.entity.ReturnResult;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tonghui
 * @since 2022-03-12
 */
public interface MessageService extends IService<Message> {

    List<MsgSink> getMsgById(String meId);
    Integer getIsClickNum(String meId);
    ReturnResult click(String messageId);
    ReturnResult delMsg(String messageId);
    ReturnResult delAllMsg(String messageId);
    Integer addMsgSink(String messageId,String scope);
}
