package com.sums.utils;

import com.sums.entity.Member;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;

/**
 * 获取登录人的信息
 */
public class LoginMemberUtils {

    public static Member getMember(){
        Subject subject = SecurityUtils.getSubject();
        return (Member) subject.getSession().getAttribute(getSessionId());
    }

    public static String getSessionId(){
        return (String)SecurityUtils.getSubject().getSession().getId();
    }
}
