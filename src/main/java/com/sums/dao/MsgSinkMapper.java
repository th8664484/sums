package com.sums.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.sums.entity.MsgSink;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface MsgSinkMapper  extends BaseMapper<MsgSink> {

    List<MsgSink> getMsg(String meId);

    Integer getIsClickNum(String meId);
    Integer click(@Param("messageId") String messageId,@Param("meId") String meId);
    Integer delMsg(@Param("messageId") String messageId,@Param("meId") String meId);
    Integer addValues(@Param("messageId") String messageId, @Param("list") List<String> memberList);
}
