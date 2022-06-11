package com.sums.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
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
@TableName("department")
public class Department implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 部门编号
     */
    @TableId(value = "depa_id", type = IdType.AUTO)
    private Long depaId;

    /**
     * 部门名称
     */
    @TableField("depa_name")
    private String depaName;

    /**
     * 描述
     */
    @TableField("minister")
    private String minister;

}
