package com.sums.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;

/**
 * @Author TongHui OpenBrowser.java
 * @Description 启动项目后打开指定页面
 * @Date 2022/3/24 9:51
 * @Version 1.0
 */
@Component
public class OpenBrowser implements CommandLineRunner {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Value("${open.browser.url}")
    private String url;

    @Override
    public void run(String... args) throws Exception {
        logger.info("开始加载指定的页面 : {}",url);
        try {
            //可以指定自己的路径
            Runtime.getRuntime().exec("cmd   /c   start   " + url);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
