package com.sums.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.math.BigDecimal;
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
 * @since 2022-03-12
 */
@Getter
@Setter
@TableName("items")
public class Items implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId("item_id")
    private String itemId;

    /**
     * 物品名称
     */
    @TableField("item_name")
    private String itemName;

    /**
     * 购买日期
     */
    @TableField("buy_date")
    private Date buyDate;

    /**
     * 单价
     */
    @TableField("price")
    private BigDecimal price;

    /**
     * 数量
     */
    @TableField("item_number")
    private Integer itemNumber;

    /**
     * 借出数量
     */
    @TableField("lent_number")
    private Integer lentNumber;

    /**
     * 描述
     */
    @TableField("item_describe")
    private String itemDescribe;


}
