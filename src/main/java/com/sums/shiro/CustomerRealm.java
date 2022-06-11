package com.sums.shiro;


import cn.hutool.core.util.ObjectUtil;
import com.sums.entity.Member;
import com.sums.entity.Permission;
import com.sums.entity.Role;
import com.sums.service.MemberService;
import com.sums.service.PermissionService;
import com.sums.utils.ApplicationContextUtil;
import com.sums.utils.LoginMemberUtils;
import com.sums.utils.MyCacheUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.apache.shiro.util.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.BeanUtils;
import org.springframework.util.ObjectUtils;

import java.util.Collections;
import java.util.List;
/**
 * 自定义Shiro的Realm*/
public class CustomerRealm extends AuthorizingRealm {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        String principal = (String) authenticationToken.getPrincipal();
        logger.info("登录验证:{"+principal+"}");
        MemberService service = (MemberService) ApplicationContextUtil.getBean("memberServiceImpl");
        Member member = service.getOneAllById(principal);
        if(ObjectUtil.isEmpty(member)){
            throw new UnknownAccountException("用户名错误");
        }
        for (Role role : member.getRoles()) {
            if (role.getRoleId()==6) {
                Collections.reverse(member.getRoles());
            }
        }
        MyCacheUtils.online(member.getFaculty()+member.getDepartment());

        Subject subject = SecurityUtils.getSubject();
        Member m = new Member();
        BeanUtils.copyProperties(member,m);
        m.setPassword("");
        m.setSalt("");
        subject.getSession().setAttribute(LoginMemberUtils.getSessionId(),m);

        if (!ObjectUtils.isEmpty(member)){
            return new SimpleAuthenticationInfo(member.getMeId(),
                    member.getPassword(),
                    new MyByteSource(member.getSalt()),
                    this.getName());
        }
//        if ("user".equals(principal)){
//            return new SimpleAuthenticationInfo(principal,"123456",this.getName());
//        }
        return null;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {

        String principal = (String) principalCollection.getPrimaryPrincipal();
        MemberService service = (MemberService) ApplicationContextUtil.getBean("memberServiceImpl");
        PermissionService pservice = (PermissionService) ApplicationContextUtil.getBean("permissionServiceImpl");
        Member member = service.getOneAllById(principal);
        logger.info("权限验证:{"+member+"}");
        SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
        if (!CollectionUtils.isEmpty(member.getRoles())){
            member.getRoles().forEach(role -> {
                simpleAuthorizationInfo.addRole(role.getRoleName());
                List<Permission> perms = pservice.findPermsByRoleId(String.valueOf(role.getRoleId()));
                if (!CollectionUtils.isEmpty(perms)){
                    perms.forEach(perm ->{
                        simpleAuthorizationInfo.addStringPermission(perm.getFunAuth());
                    } );
                }
            });
            return simpleAuthorizationInfo;
        }
        return null;
    }
}
