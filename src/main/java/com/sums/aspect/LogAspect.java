package com.sums.aspect;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.ToString;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @Author TongHui LogAspect.java
 * @Description 日志
 * @Date 2022/3/24 9:54
 * @Version 1.0
 */
@Aspect
@Component
public class LogAspect {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    //指明切入点
    @Pointcut("execution(* com.sums.controller.*.*(..))")
    public void log(){

    }

    // 前置通知, 在方法执行之前执行
    @Before("log()")
    public void doBefore(JoinPoint joinPoint){
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        String url = request.getRequestURL().toString();
        String uri = request.getRequestURI();
        String ip = request.getRemoteAddr();
        String classMethod = joinPoint.getSignature().getDeclaringTypeName()+"."+
                joinPoint.getSignature().getName();
        Object[] args = joinPoint.getArgs();
        RequestLog requestLog = new RequestLog(url,ip,classMethod,args);
        logger.info("Request : { "+requestLog+" }");
    }

    // 后置通知, 在方法执行之后执行 。
    @After("log()")
    public void doAfter(){
        logger.info("-------后置通知, 在方法执行之后执行 ---------");
    }

//返回通知, 在方法返回结果之后执行
    @AfterReturning(returning = "result" ,pointcut = "log()")
    public void doAfterReturning(Object result){
        logger.info("Result : { "+result+" }");
    }

    /***
     * @AfterThrowing: 异常通知, 在方法抛出异常之后
     * @Around: 环绕通知, 围绕着方法执行
     */

    @ToString
    @Data
    @AllArgsConstructor
    private class RequestLog{
        private String url;
        private String ip;
        private String classMethod;
        private Object[] args;
    }

}
