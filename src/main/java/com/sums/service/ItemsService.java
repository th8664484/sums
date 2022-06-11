package com.sums.service;

import com.sums.entity.Items;
import com.baomidou.mybatisplus.extension.service.IService;
import com.sums.entity.Record;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author tonghui
 * @since 2022-03-12
 */
public interface ItemsService extends IService<Items> {

    boolean isItemNumber(String itemId,Integer number);
    boolean rollback(String itemId,Integer number);
}
