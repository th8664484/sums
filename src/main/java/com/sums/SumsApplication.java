package com.sums;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.sums.dao")
public class SumsApplication {

    public static void main(String[] args) {
        SpringApplication.run(SumsApplication.class, args);
    }

}
