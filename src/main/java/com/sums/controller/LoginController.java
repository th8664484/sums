package com.sums.controller;


import com.alibaba.fastjson.JSONObject;
import com.sums.annotations.PermissionVerify;
import com.sums.utils.VerifyCodeUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.ShiroException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
@Controller
@RequestMapping({"/sums","/"})
public class LoginController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());
    @Value("${code.width}")
    private int width;
    @Value("${code.height}")
    private int height;
    @Value("${code.codeSize}")
    private int codeSize;

    /**
     * 登录页面请求
     * @return
     */
    @GetMapping(value = {"/loginView","/"})
    public String loginView(){
        Subject subject = SecurityUtils.getSubject();
        subject.logout();
        return "studentUnion/login2";
    }

    /**
     * 登录请求
     * @param username 用户名
     * @param password 密码
     * @param code 验证码
     * @return
     */
    @PostMapping("/login")
    @ResponseBody
    public Object login(String username, String password, String code,HttpSession session){
        //比较验证码
        String codes = (String) session.getAttribute("code");
        String message = "";
        JSONObject object = new JSONObject();
        try {
            if (codes.equalsIgnoreCase(code)){
                //获取主体对象
                Subject subject = SecurityUtils.getSubject();
                subject.login(new UsernamePasswordToken(username, password));
                subject.getSession().setTimeout(-1000L);
                return object.toJSONString("SUCCESS");
            }else{
                logger.error("验证码错误");
//                throw new RuntimeException("验证码错误!");
                message = "验证码错误";
            }
        }catch (UnknownAccountException e) {
            e.printStackTrace();
            logger.error("用户名错误");
            message = "用户名或密码错误！";
        } catch (IncorrectCredentialsException e) {
            e.printStackTrace();
            logger.error("密码错误");
            message = "用户名或密码错误！";
        } catch (NullPointerException e){
            e.printStackTrace();
            logger.error("请刷新验证码，重新登录");
            message = "请刷新验证码，重新登录！";
        }
        return object.toJSONString(message);
    }

    /**
     * 验证码图片
     * @param response
     * @throws IOException
     */
    @GetMapping("/getCodeImage/{id}")
    public void getImage(HttpServletResponse response) throws IOException {
        //生成验证码
        String code = VerifyCodeUtils.generateVerifyCode(codeSize);
        //验证码放入session
        Subject subject = SecurityUtils.getSubject();
        subject.getSession().setAttribute("code",code);
//        session.setAttribute("code",code);
        //验证码存入图片
        ServletOutputStream os = response.getOutputStream();
        response.setContentType("image/png");
        VerifyCodeUtils.outputImage(width,height,os,code);
    }



}
