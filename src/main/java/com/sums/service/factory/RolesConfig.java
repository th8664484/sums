package com.sums.service.factory;

import com.sums.service.roles.StrategyRoles;
import com.sums.service.roles.impl.*;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

public class RolesConfig {
    protected static Map<String, StrategyRoles> rolesMap = new ConcurrentHashMap<>();

    @Resource
    private ChairmanRole chairmanRole;

    @Resource
    private ViceChairmanRole viceChairmanRole;

    @Resource
    private MinisterRole ministerRole;

    @Resource
    private MemberRole memberRole;

    @Resource
    private AdminRole adminRole;

    @PostConstruct
    public void init(){
        rolesMap.put("chairman",chairmanRole);
        rolesMap.put("viceChairman",viceChairmanRole);
        rolesMap.put("minister",ministerRole);
        rolesMap.put("member",memberRole);
        rolesMap.put("admin",adminRole);
    }
}
