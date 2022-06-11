package com.sums.annotations;

import java.lang.annotation.*;
/**
 * @Author TongHui PermissionVerify.java
 * @Description 判断权限的注解
 * @Date 2022/3/24 9:55
 * @Version 1.0
 */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface PermissionVerify {

    String value();

}
