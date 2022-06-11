package com.sums.utils;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sums.entity.Member;
import com.sums.entity.ReturnResult;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

import java.util.Map;
import java.util.Set;

/**
 * 条件查询
 */
public class PageUtils {

    /**分页查询展示*/
    public static<T> ReturnResult page(int page, int limit, BaseMapper<T> mapper){
        Page<T> p = new Page<>(page,limit);
        QueryWrapper<T> queryWrapper = new QueryWrapper<>();
        p= mapper.selectPage(p, queryWrapper);
        return new ReturnResult("0","SUCCESS",p.getTotal(),p.getRecords());
    }

    public static<T> ReturnResult page(Map<String,String> map, BaseMapper<T> mapper){
        int page = Integer.parseInt(map.get("page"));
        int limit = Integer.parseInt(map.get("limit"));
        Page<T> p = new Page<>(page,limit);
        QueryWrapper<T> queryWrapper = new QueryWrapper<>();
        p= mapper.selectPage(p, joinQueryWrapper(queryWrapper,map));
        return new ReturnResult("0","SUCCESS",p.getTotal(),p.getRecords());
    }

    /**拼接sql条件*/
    public static QueryWrapper joinQueryWrapper(QueryWrapper queryWrapper,Map<String,String> map){
        int val = 0;
        if (map.size()>2){
            Set<String> keySet = map.keySet();
            for (String s : keySet) {
                if ("page".equals(s) || "limit".equals(s)){
                    continue;
                }
                if("not".equals(s)){
                    queryWrapper.ne("department",map.get(s));
                    continue;
                }
                if (StringUtils.isNotBlank(map.get(s))){
                    queryWrapper.eq(s,map.get(s));
                    val++;
                }
            }
        }
        String roleId = LoginMemberUtils.getMember().getRoles().get(0).getRoleId().toString();
        String id = LoginMemberUtils.getMember().getMeId();
        if (val == 0 ){
            queryWrapper.ne("me_id",id);
        }
        if (val == 0 && roleId.equals("2")){
            queryWrapper.ne("position","管理员");
        }
        if(roleId.equals("3") || roleId.equals("4")){

        }

        return  queryWrapper;
    }

}
