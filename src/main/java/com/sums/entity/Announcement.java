package com.sums.entity;

import com.baomidou.mybatisplus.annotation.IdType;
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
 * @since 2022-02-13
 */
@Getter
@Setter
@TableName("announcement")
public class Announcement implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "anno_id", type = IdType.AUTO)
    private Long annoId;

    /**
     * 公告名称
     */
    @TableField("anno_title")
    private String annoTitle;

    /**
     * 公告内容
     */
    @TableField("anno_text")
    private String annoText;

    /**
     * 发布时间
     */
    @TableField("anno_time")
    private Date annoTime;

    /**
     * 发布人
     */
    @TableField("me_name")
    private String meName;

    @TableField("me_id")
    private String meId;


    public void toHtml(){
        String content = MarkdownUtil.markdownToHtmlExtensions(this.annoText);
        this.annoText = content;
    }
}
