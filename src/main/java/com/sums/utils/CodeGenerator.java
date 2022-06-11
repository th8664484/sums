package com.sums.utils;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;
import com.baomidou.mybatisplus.generator.engine.FreemarkerTemplateEngine;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/**
 * 代码生成工具类
 */
public class CodeGenerator {

    public static void main(String[] args) {
        String projectPath = System.getProperty("user.dir");
        List<String> list = new ArrayList();
//        list.add("member");
//        list.add("role");
//        list.add("permission");
//        list.add("department");
//        list.add("announcement");
//        list.add("work");
//        list.add("files");
//        list.add("activity");
        list.add("items");
        list.add("record");
        list.add("message");
        System.out.println(projectPath);
        FastAutoGenerator.create("jdbc:mysql://localhost:3306/sums?serverTimezone=Asia/Shanghai&characterEncoding=utf-8",
                "root", "123456")
                .globalConfig(builder -> {
                    builder.author("tonghui") // 设置作者
                            //.enableSwagger() // 开启 swagger 模式
                            .fileOverride() // 覆盖已生成文件
                            .outputDir(projectPath+"\\src\\main\\java"); // 指定输出目录
                })
                .packageConfig(builder -> {
                    builder.parent("com.sums") // 设置父包名
//                            .moduleName("system") // 设置父包模块名
                            .entity("entity")
                            .service("service")
                            .serviceImpl("serviceImpl")
                            .controller("controller")
                            .mapper("dao")
                            .xml("mappers")
                            .pathInfo(Collections.singletonMap(OutputFile.mapperXml,
                                    projectPath + "\\src\\main\\resources\\mappers\\")); // 设置mapperXml生成路径
                })
                .strategyConfig(builder -> {
                    builder.addInclude(list) // 设置需要生成的表名
//                            .addTablePrefix("t_", "c_"); // 设置过滤表前缀
                            .serviceBuilder() //service 策略配置
                            .formatServiceFileName("%sService") //service 类名 %s,根据表名替换
                            .formatServiceImplFileName("%sServiceImpl")
                            .entityBuilder() //实体类 配置
                            .enableLombok()  //开启lombok
//                            .logicDeleteColumnName() 逻辑删除的字段
                            .enableTableFieldAnnotation() //属性加说明注解
                            .controllerBuilder()
                            .formatFileName("%sController")
                            .enableRestStyle()
                            .mapperBuilder()
                            .enableBaseResultMap()
                            .superClass(BaseMapper.class) //继承父类
                            .formatMapperFileName("%sMapper")
//                            .enableMapperAnnotation() //@mapper开启
                            .formatXmlFileName("%sMapper");
                })
                .templateEngine(new FreemarkerTemplateEngine()) // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                .execute();

    }
}
