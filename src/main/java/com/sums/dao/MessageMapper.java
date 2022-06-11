package com.sums.dao;

import com.sums.entity.Message;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author tonghui
 * @since 2022-03-12
 */
public interface MessageMapper extends BaseMapper<Message> {

    Message getMessageById(String messageId);

}
