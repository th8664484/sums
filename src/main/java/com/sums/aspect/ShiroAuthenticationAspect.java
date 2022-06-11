package com.sums.aspect;

import com.sums.annotations.PermissionVerify;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.reflect.Method;
/**
 * @Author TongHui ShiroAuthenticationAspect.java
 * @Description 权限验证
 * @Date 2022/3/24 9:54
 * @Version 1.0
 */
@Aspect
@Component
public class ShiroAuthenticationAspect {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Pointcut("execution(public  * com.sums.controller.*.*(..))")
    public void controllerPointcut() {
    }
    @Before("controllerPointcut()")
    public void doBefore(JoinPoint joinPoint) {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes.getRequest();
        HttpServletResponse response = attributes.getResponse();
        Subject subject = SecurityUtils.getSubject();
        String targetName = joinPoint.getSignature().getName();
        Object target = joinPoint.getTarget();
        Class<?> aClass = target.getClass();
        Method[] methods = aClass.getMethods();
        for (Method method : methods) {
            PermissionVerify annotation = method.getAnnotation(PermissionVerify.class);
            if (method.getName().equals(targetName) && annotation != null){
                if (!subject.isPermitted(annotation.value())) {
                    logger.info("权限验证:{}","无此权限");
                    try {
                        response.sendRedirect("/sums/noauth");
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    return;
                }
            }
        }
        logger.info("权限验证:{}","验证通过");
    }
}
