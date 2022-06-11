package com.sums.shiro;


import org.apache.shiro.cache.Cache;
import org.apache.shiro.cache.CacheException;
import org.apache.shiro.cache.CacheManager;

/**
 * 自定义缓存管理器
 */
public class RedisCacheManager implements CacheManager {
    //参数：认证或授权缓存的统一名称
    @Override
    public <K, V> Cache<K, V> getCache(String s) throws CacheException {
        System.out.println(s);
        return new RedisCache<K,V>(s);
    }
}
