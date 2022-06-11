package com.sums.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
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
@TableName("files")
public class Files implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("file_id")
    private String fileId;

    /**
     * 文件名称
     */
    @TableField("file_name")
    private String fileName;

    /**
     * 部门
     */
    @TableField("department")
    private String department;

    /**
     * 所属人
     */
    @TableField("me_name")
    private String meName;

    /**
     * 提交时间
     */
    @TableField("submit_time")
    private Date submitTime;

    /**
     * 0:上级 -1:所有人 1:主席 2:副主席 3:部长 4:本部门
     */
    @TableField("visible")
    private String visible;

    @TableField("me_id")
    private String meId;

    @TableField("file_path")
    private String filePath;

    @TableField("faculty")
    private String faculty;
}
