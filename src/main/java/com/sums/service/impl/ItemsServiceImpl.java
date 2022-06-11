package com.sums.service.impl;

import com.sums.entity.Items;
import com.sums.dao.ItemsMapper;
import com.sums.entity.Record;
import com.sums.service.ItemsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tonghui
 * @since 2022-03-12
 */
@Service
public class ItemsServiceImpl extends ServiceImpl<ItemsMapper, Items> implements ItemsService {

    @Autowired
    private ItemsMapper mapper;

    /**
     * 物品数量是否可以满足借出的数量
     * @param number 借出数量
     * @return
     */
    @Override
    public boolean isItemNumber(String itemId,Integer number) {
        Items item = mapper.selectById(itemId);
        boolean sufficient = item.getItemNumber() >= number;
        if (sufficient) {
            item.setItemNumber(item.getItemNumber()- number);
            item.setLentNumber(item.getLentNumber()+ number);
        }else {
            return sufficient;
        }
        if (sufficient && mapper.updateById(item)>0){
            return sufficient;
        }
        return false;
    }

    /**
     * 恢复上一步
     * @param itemId
     * @param number
     */
    @Override
    public boolean rollback(String itemId, Integer number) {
        Items item = mapper.selectById(itemId);
        item.setItemNumber(item.getItemNumber()+ number);
        item.setLentNumber(item.getLentNumber()- number);
        return mapper.updateById(item)>0;
    }
}
