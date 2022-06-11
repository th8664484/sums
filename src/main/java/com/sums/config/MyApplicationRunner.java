package com.sums.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.util.Date;

@Component//被spring容器管理
public class MyApplicationRunner implements ApplicationRunner {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Value("${kkFileView.url}")
    private String kkFileView;

    @Override
    public void run(ApplicationArguments args) throws Exception {
        logger.info("学生会管理系统启动....");
        startPreview();
    }

    private void startPreview(){
        try{
            InetAddress theAddress = InetAddress.getByName("127.0.0.1");
            Socket socket = new Socket(theAddress, 8012);
        } catch (IOException e) {
            logger.info("启动kkFileView预览");
            try {
                Runtime.getRuntime().exec("cmd.exe /c start startup.bat", null,
                        new File(kkFileView));
            } catch (IOException ioException) {
                ioException.printStackTrace();
            }
        }
    }
}
