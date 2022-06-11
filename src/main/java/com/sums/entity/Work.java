package com.sums.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;

/**
 * <p>
 *
 * </p>
 *
 * @author tonghui
 * @since 2022-03-10
 */
@Getter
@Setter
@TableName("work")
public class Work implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("work_id")
    private String workId;

    /**
     * 计划名称
     */
    @TableField("work_name")
    private String workName;

    /**
     * 计划内容
     */
    @TableField("work_text")
    private String workText;

    /**
     * 提交时间
     */
    @TableField("submit_time")
    private Date submitTime;

    /**
     * 提交人
     */
    @TableField("me_name")
    private String meName;

    @TableField("me_id")
    private String meId;


}
