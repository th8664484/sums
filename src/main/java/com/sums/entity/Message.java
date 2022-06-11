package com.sums.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;

import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 *
 * </p>
 *
 * @author tonghui
 * @since 2022-03-12
 */
@Getter
@Setter
@TableName("message")
public class Message implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("message_id")
    private String messageId;

    /**
     * 标题
     */
    @TableField("message_title")
    private String messageTitle;

    @TableField("message_text")
    private String messageText;
    /**
     * 发信时间
     */
    @TableField("letter_time")
    private Date letterTime;

    /**
     * 发信人
     */
    @TableField("letter_name")
    private String letterName;

    /**
     * 状态
     */
    @TableField("state")
    private String state;

    /**
     * 范围 -1全部 0主席 1部长 2部门
     */
    @TableField("scope")
    private String scope;

    @TableField("me_id")
    private String meId;

}
