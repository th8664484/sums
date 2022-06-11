package com.sums.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Date;

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
@TableName("record")
public class Record implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("record_id")
    private String recordId;

    /**
     * 物品名称
     */
    @TableField("item_name")
    private String itemName;

    @TableField("item_id")
    private String itemId;

    /**
     * 借出时间
     */
    @TableField("lend_time")
    private Date lendTime;

    /**
     * 借物人
     */
    @TableField("me_name")
    private String meName;
    @TableField("me_id")
    private String meId;
    /**
     * 是否归还 0否 1是
     */
    @TableField("is_return")
    private String isReturn;

    /**
     * 数量
     */
    @TableField("number")
    private Integer number;

    @TableField("department")
    private String department;

}
