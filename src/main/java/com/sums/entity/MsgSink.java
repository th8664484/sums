package com.sums.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.List;

@Getter
@Setter
@ToString
@TableName("msg_sink")
public class MsgSink implements Serializable {
    private static final long serialVersionUID = 1L;

    private String messageId;

    private String receiveId;

    private String isClick;

    @TableField(exist = false)
    private Message message;
}
