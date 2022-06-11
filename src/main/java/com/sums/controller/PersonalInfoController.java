package com.sums.controller;

import cn.hutool.core.util.IdUtil;
import com.alibaba.fastjson.JSONObject;
import com.sums.entity.Member;
import com.sums.entity.ReturnResult;
import com.sums.service.MemberService;
import com.sums.utils.SaltUtil;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
public class PersonalInfoController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Value("${file.uploadFolder}")
    private String uploadFolder;

    @Autowired
    private MemberService service;


    /**个人信息页*/
    @GetMapping("/personalInfo/{meId}")
    public String personalInfo(@PathVariable String meId, Model model){
        model.addAttribute("user",service.getOneById(meId));
        return "studentUnion/personalInfo";
    }

    /**
     * 修改用户头像
     *
     * @param file     图片
     * @param meId     学号
     * @return
     */
    @PostMapping("/update/img")
    @ResponseBody
    public Object updateimg(@RequestParam("file") MultipartFile file, @RequestParam("meId") String meId) {
//        String uploadPath = System.getProperty("user.dir")+"\\src\\main\\resources\\static\\imgs\\";
        String filename = file.getOriginalFilename();
        // 获取文件后缀
        String suffix = filename.substring(file.getOriginalFilename().lastIndexOf(".") + 1);
        if (checkFile(suffix)) {
            String imgName = IdUtil.simpleUUID() +"."+ suffix;
            try {
                file.transferTo(new File(uploadFolder+imgName));
                Member member = service.getOneById(meId);
                member.setImgPath("/api/file/" + imgName);
                return service.updateOneMember(member);
            } catch (IOException e) {
                logger.error("图像上传失败"+e.toString());
            }
        } else {
            return new ReturnResult("200","文件格式不正确");
        }
        return new ReturnResult("200","图像上传失败");
    }

    /**
     * 更改密码判断旧密码是否正确
     * @param meId
     * @param password
     * @return
     */
    @PostMapping("/confirmPassword")
    @ResponseBody
    public Object password(String meId,String password){
        return service.confirmPassword(meId, password);
    }

    /**
     * 更新个人信息
     * @param member
     * @return
     */
    @PostMapping("/update/memberInfo")
    @ResponseBody
    public Object updatePassword(String member){
        Member me = JSONObject.parseObject(member, Member.class);
        return service.updateOneMember(me);
    }

    /**
     * 判断是否为允许的上传文件类型,true表示允许
     */
    private boolean checkFile(String suffix) {
        //设置允许上传文件类型
        String suffixList = "jpg,png,ico,bmp,jpeg";
        if (suffixList.contains(suffix.trim().toLowerCase())) {
            return true;
        }
        return false;
    }
}
