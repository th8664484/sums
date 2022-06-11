package com.sums.utils;

import org.apache.shiro.crypto.hash.Md5Hash;

import java.util.Random;
/**密码盐生成 工具*/
public class SaltUtil {

    public static String getSalt(int n){
        char[] chars = "ASDFGHJKLZXCVBNMQWERTYUIOPasdfghjklzxcvbnmqwertyuiop~!@#$%^&*()<>?".toCharArray();
        StringBuilder builder = new StringBuilder();
        for (int i=0;i<n;i++){
            char c = chars[new Random().nextInt(chars.length)];
            builder.append(c);
        }
        return  builder.toString();
    }

    public static void main(String[] args) {
        String salt = getSalt(5);
        System.out.println(salt);
        System.out.println( new Md5Hash("123456",salt,1024));
    }
}
