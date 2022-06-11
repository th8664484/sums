package com.sums.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;

import com.sums.utils.MarkdownUtil;
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
@TableName("activity")
public class Activity implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("activity_id")
    private String activityId;

    /**
     * 活动名称
     */
    @TableField("activity_name")
    private String activityName;

    /**
     * 活动内容
     */
    @TableField("activity_content")
    private String activityContent;

    /**
     * 提交时间
     */
    @TableField("submit_time")
    private Date submitTime;

    /**
     * 提交部门
     */
    @TableField("department")
    private String department;

    /**
     * 0:审核中 1:通过 -1:没通过
     */
    @TableField("audit_status")
    private String auditStatus;

    /**
     * 0:主席 1:学校
     */
    @TableField("process")
    private String process;

    /**
     * 0:存在 1:删除
     */
    @TableField("admin_del")
    private String adminDel;

    /**
     * 0:存在 1:删除
     */
    @TableField("chairman_del")
    private String chairmanDel;

    /**
     * 审批人
     */
    @TableField("approver")
    private String approver;

    /**
     * 审批人
     */
    @TableField("me_id")
    private String meId;

    @TableField("is_submit")
    private String isSubmit;

    @TableField("img_path")
    private String imgPath;

    @TableField("transition")
    private String transition = "OFF";

    @TableField("faculty")
    private String faculty;
    @TableField("cut_off_time")
    private Date cutOffTime;

    public void toHtml(){
        String content = MarkdownUtil.markdownToHtmlExtensions(this.activityContent);
        this.activityContent = content;
    }
}
