package com.sums.service.factory;

import com.sums.service.roles.StrategyRoles;
import org.springframework.stereotype.Service;

@Service
public class RoleFactory extends RolesConfig{
    public StrategyRoles getRoleStrategServer(String role){
        String key = "";
        switch (role){
            case "1": key = "admin";break;
            case "2": key = "chairman";break;
            case "6": key = "viceChairman";break;
            case "35":
            case "3": key = "minister";break;
            case "4": key = "member";break;
        }
        return rolesMap.get(key);
    }
}
