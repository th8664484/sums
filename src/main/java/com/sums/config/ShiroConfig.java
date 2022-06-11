package com.sums.config;

import at.pollux.thymeleaf.shiro.dialect.ShiroDialect;
import com.sums.shiro.CustomerRealm;
import com.sums.shiro.MySessionManager;
import com.sums.shiro.RedisCacheManager;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.cache.ehcache.EhCacheManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.session.mgt.SessionManager;
import org.apache.shiro.spring.security.interceptor.AuthorizationAttributeSourceAdvisor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/**
 * @Author TongHui ShiroConfig.java
 * @Description Shiro 配置类
 * @Date 2022/3/24 9:51
 * @Version 1.0
 */
@Configuration
public class ShiroConfig {


    //1 创建 shiroFilter
    @Bean( name="shiroFilterFactoryBean")
    public ShiroFilterFactoryBean getShiroFilterFactoryBean(DefaultWebSecurityManager defaultWebSecurityManager){
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        //给filter设置安全管理器
        shiroFilterFactoryBean.setSecurityManager(defaultWebSecurityManager);
        //配置系统受限资源
        //配置系统公共资源
        Map<String,String> map = new LinkedHashMap<>();

        map.put("/open/","anon");
        map.put("/open/**","anon");
        map.put("/sums/login","anon");
        map.put("/sums/loginView","anon");
        map.put("/sums/loginView/*","anon");
        map.put("/sums/getCodeImage/*","anon");//验证码
        map.put("/api/file/*","anon");//验证码
        /**静态资源放行*/
        map.put("/statics/**","anon");//anon 设置公共资源
        map.put("*.js","anon");//anon 设置公共资源
        map.put("*.css","anon");//anon 设置公共资源
        map.put("/css/**","anon");//anon 设置公共资源
        map.put("/js/**","anon");//anon 设置公共资源
        map.put("/editormd/**","anon");//anon 设置公共资源
        map.put("/font-awesome/**","anon");//anon 设置公共资源
        map.put("/imgs/**","anon");//anon 设置公共资源
        map.put("/layui/**","anon");//anon 设置公共资源
        map.put("/layui-formSelects/**","anon");//anon 设置公共资源
        map.put("/treetable-lay/**","anon");//anon 设置公共资源

        map.put("/**","authc");//authc 这个请求需要认证和授权
        //默认认证界面路径
        shiroFilterFactoryBean.setLoginUrl("/sums/loginView");

        shiroFilterFactoryBean.setFilterChainDefinitionMap(map);

        return  shiroFilterFactoryBean;
    }

    //2 创建安全管理器
    @Bean
    public DefaultWebSecurityManager getDefaultWebSecurityManager(@Qualifier("getRealm") Realm realm) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        //给安全管理器设置
        securityManager.setRealm(realm);

        securityManager.setSessionManager(sessionManager());

        return securityManager;
    }

    /**
     * 开启shiro aop注解支持. 使用代理方式;所以需要开启代码支持; Controller才能使用@RequiresPermissions
     */
    @Bean
    public AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor(
            DefaultWebSecurityManager defaultWebSecurityManager) {
        AuthorizationAttributeSourceAdvisor authorizationAttributeSourceAdvisor = new AuthorizationAttributeSourceAdvisor();
        authorizationAttributeSourceAdvisor.setSecurityManager(defaultWebSecurityManager);
        return authorizationAttributeSourceAdvisor;
    }
    /**
     * 自定义sessionManager
     */
    @Bean
    public SessionManager sessionManager() {
        return new MySessionManager();
    }

    //3 创建自定义realm
    @Bean
    public Realm getRealm(){
        CustomerRealm customerRealm = new CustomerRealm();
        //设置realm使用hash凭证匹配器
        HashedCredentialsMatcher credentialsMatcher = new HashedCredentialsMatcher();
        //算法
        credentialsMatcher.setHashAlgorithmName("md5");
        //散列次数
        credentialsMatcher.setHashIterations(1024);

        customerRealm.setCredentialsMatcher(credentialsMatcher);

        //开启缓存管理
//        customerRealm.setCacheManager(new RedisCacheManager());
        customerRealm.setCacheManager(new EhCacheManager());
        customerRealm.setCachingEnabled(true);//开启全局缓存
        customerRealm.setAuthenticationCachingEnabled(true);//认证缓存
        customerRealm.setAuthenticationCacheName("authenticationCache");
        customerRealm.setAuthorizationCachingEnabled(true);//开启授权缓存
        customerRealm.setAuthorizationCacheName("authorizationCache");
        return customerRealm;
    }

    @Bean(name = "ShiroDialect")
    public ShiroDialect getShiroDialect(){
        return new ShiroDialect();
    }
}
