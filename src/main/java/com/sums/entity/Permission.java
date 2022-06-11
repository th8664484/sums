package com.sums.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

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
@TableName("permission")
public class Permission implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 功能ID
     */
    @TableId(value = "fun_id", type = IdType.AUTO)
    private Long funId;

    /**
     * 功能名称
     */
    @TableField("fun_name")
    private String funName;

    /**
     * 类型 1:菜单,2:按钮
     */
    @TableField("fun_type")
    private String funType;

    /**
     * 功能对应请求
     */
    @TableField("fun_href")
    private String funHref;

    /**
     * 权限标识
     */
    @TableField("fun_auth")
    private String funAuth;

    /**
     * 父级功能id,根菜单的父级功能是-1
     */
    @TableField("pid")
    private String pid;


}
