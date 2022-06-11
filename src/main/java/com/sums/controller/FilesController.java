package com.sums.controller;


import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sums.annotations.PermissionVerify;
import com.sums.entity.*;
import com.sums.service.FilesService;
import com.sums.service.factory.RoleFactory;
import com.sums.service.roles.StrategyRoles;
import com.sums.utils.DownloadUtils;
import com.sums.utils.LoginMemberUtils;
import com.sums.utils.RoleQuerWrapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.*;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tonghui
 * @since 2022-03-10
 */
@Controller
@RequestMapping("/files")
public class FilesController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private FilesService service;
    /**
     * 文件上传路径
     */
    @Value("${file.uploadFolder}")
    private String uploadFolder;

    @Resource
    private RoleFactory roleFactory;

    /**
     * 文件管理页
     * @return
     */
    @PermissionVerify(value ="transaction:file:file")
    @GetMapping("/")
    public String filesView(Model model){
        model.addAttribute("meId",LoginMemberUtils.getMember().getMeId());
        return "studentUnion/files";
    }

    /**
     * 分页
     * @param map
     * @return
     */
    @PermissionVerify(value ="transaction:file:file")
    @RequestMapping("/all")
    @ResponseBody
    public Object pageFile(@RequestParam Map<String,String> map){
           try{
               int page = Integer.parseInt(map.get("page"));
               int limit = Integer.parseInt(map.get("limit"));
               Page<Files> p = new Page<>(page,limit);
               List<Role> roleList = LoginMemberUtils.getMember().getRoles();
               StrategyRoles roleStrategServer = roleFactory.getRoleStrategServer(String.valueOf(roleList.get(0).getRoleId()));
               QueryWrapper<Files> queryWrapper = roleStrategServer.getFileQueryWrapper(map);
               if (ObjectUtil.isNotEmpty(map.get("file_name"))){
                   queryWrapper.like("file_name", map.get("file_name"));
               }
               if (ObjectUtil.isNotEmpty(map.get("me_name"))){
                   queryWrapper.eq("me_name", map.get("me_name"));
               }
               queryWrapper.orderByDesc("submit_time");
               p = service.page(p, queryWrapper);
               return new ReturnResult("0","SUCCESS",p.getTotal(),p.getRecords());
           }catch (Exception e){
           }
        return new ReturnResult("0","ERROR",0L,null);
    }

    /**
     * 文件上传
     * @param file
     * @param visible
     * @return
     */
    @PostMapping("/upload")
    @ResponseBody
    public Object upload(@RequestParam("file") MultipartFile file,String visible){
        String filename = file.getOriginalFilename();
        Files files = getFiles(visible);
        files.setFileName(filename.substring(0,file.getOriginalFilename().lastIndexOf(".")));
        // 获取文件后缀
        String suffix = filename.substring(file.getOriginalFilename().lastIndexOf(".") + 1);
        String imgName = files.getFileId() +"."+ suffix;
        try {
            file.transferTo(new File(uploadFolder+imgName));
            files.setFilePath("/api/file/" + imgName);
            if (service.save(files)) {
                return new ReturnResult("200","文件上传成功");
            }
        } catch (IOException e) {
            logger.error("文件上传失败"+e.toString());
        }
        return new ReturnResult("200","文件上传失败");
    }

    /**
     * 删除文件
     * @param fileId
     * @return
     */
    @PermissionVerify(value ="transaction:file:del")
    @PostMapping("/del")
    @ResponseBody
    public Object delFile(String fileId){
        Files files = service.getById(fileId);
        File file = new File(uploadFolder+files.getFilePath().substring(10));
        if (file.delete()){
            if (service.removeById(fileId)) {
                return new ReturnResult("200","删除成功","fileTable");
            }
        }
        return new ReturnResult("200","删除失败");
    }

    private Files getFiles(String visible){
        Files files = new Files();
        files.setFileId(IdUtil.simpleUUID());
        files.setFaculty(LoginMemberUtils.getMember().getFaculty());
        long rid = LoginMemberUtils.getMember().getRoles().get(0).getRoleId();
        String s = rid == 1 ?"管理员": rid == 2 ?"主席": rid == 6 ?"副主席": LoginMemberUtils.getMember().getDepartment();
        files.setDepartment(s);
        files.setSubmitTime(new Date());
        files.setMeId(LoginMemberUtils.getMember().getMeId());
        files.setMeName(LoginMemberUtils.getMember().getMeName());
        if (visible.length()>0 && !"undefined".equals(visible)){
            files.setVisible(visible);
        }
        return  files;
    }

    /**
     * @param path 想要下载的文件的路径
     * @param response
     */
    @PermissionVerify(value ="transaction:file:download")
    @RequestMapping("/download")
    public void download(String path,String name, HttpServletResponse response) {
        DownloadUtils.download(uploadFolder+path.substring(10),name,response);
    }



}
