package com.sums.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@Getter
@Setter
@ToString
@TableName("enrollment")
public class Enrollment implements Serializable{
    private static final long serialVersionUID = 1L;

    @TableId(value = "enrollment_id")
    private String enrollmentId;

    @TableField("activity_id")
    private String activityId;

    @TableField("me_id")
    private String meId;

    @TableField("me_name")
    private String meName;

    @TableField("faculty")
    private String faculty;

    @TableField("major")
    private String major;

    @TableField("grade")
    private String grade;

    @TableField("tel")
    private String tel;

    @TableField("role")
    private String role;

    @TableField("sign_up_time")
    private Date signUpTime;

}
