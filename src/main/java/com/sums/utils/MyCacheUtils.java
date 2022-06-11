package com.sums.utils;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;

import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/**
 * @Author TongHui MyCacheUtils.java
 * @Description 记录部门登录人数
 * @Date 2022/3/24 9:52
 * @Version 1.0
 */
public class MyCacheUtils {
    private static Map<String,Integer> cache = new ConcurrentHashMap<>();

    /**key = 部门 登录时调用 */
    public static void online(String key){
        if (cache.get(key) == null) {
            cache.put(key,1);
        }else {
            cache.put(key,cache.get(key)+1);
        }
    }
    /**key = 部门 退出时调用 */
    public static void offline(String key){
        cache.put(key,cache.get(key)-1);
    }

    public static Integer getOnline(String key){
        String s = LoginMemberUtils.getMember().getRoles().get(0).getRoleId().toString();
        if ("6".equals(s)){
            Set<String> strings = cache.keySet();
            for (String string : strings) {
                if (string.startsWith(LoginMemberUtils.getMember().getFaculty())) {
                    return cache.get(string);
                }
            }
        }
        return cache.get(key);
    }
}
