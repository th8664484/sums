package com.sums.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import lombok.*;

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
@ToString
@TableName("member")
public class Member implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 成员ID
     */
    @TableId(value = "me_id")
    private String meId;
    /**
     * 姓名
     */
    private String meName;

    /**
     * 密码
     */
    private String password;

    /**
     * 密码盐
     */
    private String salt;

    /**
     * 性别
     */
    private String sex;

    /**
     * 院系
     */
    private String faculty;

    /**
     * 专业
     */
    private String major;

    /**
     * 班级
     */
    private String grade;

    /**
     * 电话
     */
    private String tel;

    /**
     * 部门
     */
    private String department;

    /**
     * 职位
     */
    private String position;


    private Date joinTime;

    private String imgPath;

    private String departmentId;

    @TableField(exist = false)
    private List<Role> roles;

}
