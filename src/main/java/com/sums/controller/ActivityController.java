package com.sums.controller;


import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.json.JSONObject;
import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.toolkit.StringUtils;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sums.annotations.PermissionVerify;
import com.sums.entity.*;
import com.sums.service.ActivityService;
import com.sums.service.EnrollmentService;
import com.sums.service.MemberService;
import com.sums.service.factory.RoleFactory;
import com.sums.service.roles.StrategyRoles;
import com.sums.utils.LoginMemberUtils;
import com.sums.utils.RoleQuerWrapper;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.xml.crypto.Data;
import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author tonghui
 * @since 2022-03-10
 */
@Controller
@RequestMapping("/activity")
public class ActivityController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Value("${file.uploadFolder}")
    private String uploadFolder;
    @Resource
    private ActivityService service;
    @Resource
    private MemberService memberService;
    @Resource
    private EnrollmentService enrollmentService;
    @Resource
    private RoleFactory roleFactory;

    /**
     * 进入活动管理页面
     * @return
     */
    @PermissionVerify(value ="transaction:activity:activity")
    @GetMapping("/")
    public String activityView(Model model){
        model.addAttribute("roles",LoginMemberUtils.getMember().getRoles());
        model.addAttribute("meId",LoginMemberUtils.getMember().getMeId());
        return "studentUnion/activity";
    }

    /**
     * 分页查询
     * @param map
     * @return
     */
    @PermissionVerify(value ="transaction:activity:activity")
    @RequestMapping("/all")
    @ResponseBody
    public Object pageActivity(@RequestParam Map<String,String> map){
//        int page = Integer.parseInt(map.get("page"));
//        int limit = Integer.parseInt(map.get("limit"));
//        Page<Activity> p = new Page<>(page,limit);
//        QueryWrapper<Activity> queryWrapper = new QueryWrapper<>();
//
//        p = service.page(p, RoleQuerWrapper.getQueryWrapper(queryWrapper,map));
        return service.pageActivity(map);
    }

    /**查看编辑页*/
    @PermissionVerify(value ="transaction:activity:look")
    @RequestMapping(value = {"/view-edit"})
    public String viewEdit(String activityId,String edit, Model model){
        Activity activity = "undefined".equals(activityId) ? null : service.getById(activityId);
        String[] attribute = new String[]{"activityId","activityName","activityContent"};
        model.addAttribute("tag","活动");
        model.addAttribute("edit","undefined".equals(edit) ? "y" : edit);
        model.addAttribute("action","undefined".equals(activityId)? "/activity/add":"/activity/update");
        model.addAttribute("attribute",attribute);
        if (activity != null){
            model.addAttribute("id",activity.getActivityId());
            model.addAttribute("title",activity.getActivityName());
            model.addAttribute("content",activity.getActivityContent());
        }
        return "studentUnion/view-edit";
    }

    /**
     * 添加活动信息
     * @param activity
     * @return
     */
    @PermissionVerify(value ="transaction:activity:add")
    @PostMapping("/add")
    @ResponseBody
    public Object addActivity(Activity activity){
        if(activity.getTransition().equals("on")){
            Activity oneTransition = service.getOneTransition();
            if (oneTransition != null) {
                service.removeById(oneTransition);
                QueryWrapper<Enrollment> queryWrapper = new QueryWrapper<>();
                queryWrapper.eq("activity_id",activity.getActivityId());
                enrollmentService.remove(queryWrapper);
            }
        }
        String roleId = LoginMemberUtils.getMember().getRoles().get(0).getRoleId().toString();
        StrategyRoles roleStrategServer = roleFactory.getRoleStrategServer(roleId);
        Activity activity1 = roleStrategServer.getActivity(activity);
        if (service.save(activity1)) {
            return new ReturnResult("200","添加成功","activity");
        }
        return new ReturnResult("200","添加失败");
    }
/***/
    private Activity getActivity(Activity activity){
        activity.setActivityId(IdUtil.simpleUUID());
        activity.setSubmitTime(new Date());
        activity.setMeId(LoginMemberUtils.getMember().getMeId());
        LoginMemberUtils.getMember().getRoles().forEach(role -> {
            if ("admin".equals(role.getRoleName())){
                activity.setDepartment("管理员");
                activity.setAuditStatus("1");
                activity.setProcess("2");
                activity.setAdminDel("0");
                activity.setChairmanDel("1");
                activity.setApprover(LoginMemberUtils.getMember().getMeName());
            }
            if("chairman".equals(role.getRoleName())){
                activity.setProcess("1");
            }
            if("vice-chairman".equals(role.getRoleName())){

            }
            if("minister".equals(role.getRoleName())){

            }
        });
        activity.setFaculty( LoginMemberUtils.getMember().getFaculty());
        activity.setDepartment( LoginMemberUtils.getMember().getDepartment());
        activity.setTransition(activity.getTransition().equals("on")? "1":"0");
        return activity;
    }
    /**
     * 更新活动信息
     * @param activity
     * @return
     */
    @PermissionVerify(value ="transaction:activity:update")
    @PostMapping("/update")
    @ResponseBody
    public Object updateActivity(Activity activity){
        Activity activity1 = service.getById(activity.getActivityId());
        activity1.setSubmitTime(new Date());
        activity1.setActivityContent(activity.getActivityContent());
        if (service.updateById(activity1)) {
            return new ReturnResult("200","更新成功","activity");
        }
        return new ReturnResult("200","更新失败");
    }

    /***
     * 确定报名截止时间
     * @param activityId
     * @param cutOffDate
     * @return
     */
    @PostMapping("/updateCutOffTime")
    @ResponseBody
    public Object updateCutOffTime(String activityId,String cutOffDate){
        SimpleDateFormat sd = new SimpleDateFormat("yyyy-MM-dd");
        Activity activity = service.getById(activityId);
        try {
            activity.setCutOffTime(sd.parse(cutOffDate));
            if (service.updateById(activity)) {
                return new ReturnResult("200","更新成功","activity");
            }
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return new ReturnResult("200","更新失败");
    }

    /**
     * 删除活动信息
     * @param activityId
     * @return
     */
    @PermissionVerify(value ="transaction:activity:del")
    @PostMapping("/del")
    @ResponseBody
    public Object delActivity(String activityId){
        Activity activity = service.getById(activityId);
        File file = null;
        Pattern pattern = Pattern.compile("((http://localhost:8088/api/file/)[0-9]*(.jpg))");
        Matcher matcher = pattern.matcher(activity.getActivityContent());
        while(matcher.find()){
            int index = matcher.group().lastIndexOf("/");
            file = new File(uploadFolder+matcher.group().substring(index+1));
            file.delete();
        }
        if(ObjectUtil.isNotEmpty(activity.getImgPath())){
            int index = activity.getImgPath().lastIndexOf("/");
            file = new File(uploadFolder+activity.getImgPath().substring(index+1));
            file.delete();
        }
        if (service.remove(activityId)) {
            QueryWrapper<Enrollment> queryWrapper = new QueryWrapper<>();
            queryWrapper.eq("activity_id",activityId);
            enrollmentService.remove(queryWrapper);
            return new ReturnResult("200","删除成功","activity");
        }
        return new ReturnResult("200","删除失败");
    }

    /**
     * 活动审核通过
     * @param activityId
     * @return
     */
    @PermissionVerify(value ="transaction:activity:through")
    @PostMapping("/through")
    @ResponseBody
    public Object throughActivity(String activityId){
        UpdateWrapper<Activity> wrapper =new UpdateWrapper();
        wrapper.set("audit_status","1").set("approver",LoginMemberUtils.getMember().getMeName()).eq("activity_id",activityId);
        if (service.update(wrapper)) {
            return new ReturnResult("200","活动通过","activity");
        }
        return new ReturnResult("200","通过失败，请重试");
    }

    /**
     * 活动审核不通过
     * @param activityId
     * @return
     */
    @PermissionVerify(value ="transaction:activity:reject")
    @PostMapping("/reject")
    @ResponseBody
    public Object rejectActivity(String activityId){
        UpdateWrapper<Activity> wrapper =new UpdateWrapper();
        wrapper.set("audit_status","-1").set("approver",LoginMemberUtils.getMember().getMeName()).eq("activity_id",activityId);
        if (service.update(wrapper)) {
            return new ReturnResult("200","活动驳回","activity");
        }
        return new ReturnResult("200","驳回失败，请重试");
    }

    /**
     * 活动审核提交上一级
     * @param activityId
     * @return
     */
    @PermissionVerify(value ="transaction:activity:submit")
    @PostMapping("/submit")
    @ResponseBody
    public Object submitActivity(String activityId){
        UpdateWrapper<Activity> wrapper =new UpdateWrapper();
        List<Role> roles = LoginMemberUtils.getMember().getRoles();
        if(roles.get(0).getRoleId().toString().equals("2")){
            String meId = memberService.getMeIdByRoleId("1").get(0);
            Member member = memberService.getOneById(meId);
            wrapper.set("process","2").set("approver",member.getMeName()).set("admin_del","0").set("is_submit","1").eq("activity_id",activityId);
        }
        if(roles.get(0).getRoleId().toString().equals("6")){
            String meId = memberService.getMeIdByRoleId("2").get(0);
            Member member = memberService.getOneById(meId);
            wrapper.set("process","1").set("approver",member.getMeName()).eq("activity_id",activityId);
        }
        if (service.update(wrapper)) {
            return new ReturnResult("200","提交成功","activity");
        }
        return new ReturnResult("200","提交失败，请重试");
    }

    /***
     * 上传宣传图片
     * @param file
     * @param activityId
     * @return
     */
    @PostMapping("/upload")
    @ResponseBody
    public Object upload(@RequestParam("file") MultipartFile file, String activityId){
        // 获取文件后缀
        String suffix = file.getName().substring(file.getName().lastIndexOf(".") + 1);
        String imgName = IdUtil.simpleUUID() +"."+ suffix;
        try {
            Activity activity = service.getById(activityId);
            if (ObjectUtil.isNotEmpty(activity)) {
                file.transferTo(new File(uploadFolder+imgName));
                activity.setImgPath("/api/file/" + imgName);
                if (service.updateById(activity)) {
                    return new ReturnResult("200","文件上传成功");
                }
            }

        } catch (IOException e) {
            logger.error("文件上传失败"+e.toString());
        }
        return new ReturnResult("200","文件上传失败");
    }

    /**
     * 内容中上传图片
     * */
    @RequestMapping("/uploadMD")
    @ResponseBody
    public Object uploadMD(@RequestParam(value = "editormd-image-file") MultipartFile file,String guid){
        JSONObject jsonObject = new JSONObject();
        // 获取文件后缀
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf(".") + 1);
        String imgName = guid +"."+ suffix;
        int  i = 1;
        try {
            file.transferTo(new File(uploadFolder+imgName));
        } catch (IOException e) {
            logger.error("文件上传失败"+e.toString());
            i = 0;
        }
        if (i==1)jsonObject.set("url","http://localhost:8088/api/file/" + imgName);
        jsonObject.set("message","提示的信息，上传"+(i==0?"成功":"失败"));
        jsonObject.set("success",i);
        return jsonObject;
    }

    /**活动报名*/
    @PostMapping("/signUp")
    @ResponseBody
    public Object signUp(Enrollment enrollment){
        if(ObjectUtil.isNotEmpty(enrollment.getRole())){
            enrollment.setFaculty(LoginMemberUtils.getMember().getFaculty());
            enrollment.setMeId(LoginMemberUtils.getMember().getMeId());
            enrollment.setMeName(LoginMemberUtils.getMember().getMeName());
            enrollment.setGrade(LoginMemberUtils.getMember().getGrade());
            enrollment.setMajor(LoginMemberUtils.getMember().getMajor());
            enrollment.setTel(LoginMemberUtils.getMember().getTel());
        }
        QueryWrapper<Enrollment> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("activity_id",enrollment.getActivityId())
                .eq("me_id",enrollment.getMeId());
        if (ObjectUtil.isNotEmpty(enrollmentService.getOne(queryWrapper))) {
            return new ReturnResult("200","你已报名");
        }
        enrollment.setEnrollmentId(IdUtil.simpleUUID());
        enrollment.setSignUpTime(new Date());
        if (enrollmentService.save(enrollment)) {
            return new ReturnResult("200","报名成功");
        }
        return new ReturnResult("200","报名失败");
    }

    /***
     * 活动报名情况
     * @param activityId
     * @param model
     * @return
     */
    @GetMapping ("/getEnrollment")
    public String getEnrollment(String activityId,Model model){
        model.addAttribute("EnrollmentInfo",enrollmentService.getList(activityId));
        return "studentUnion/activity :: enrollmentList";
    }

    /**
     * 换届报名
     * @param activityId
     * @param model
     * @return
     */
    @GetMapping("/{activityId}")
    public String activityInfo(@PathVariable String activityId,Model model){
        Activity activity = service.getById(activityId);
        activity.toHtml();
        model.addAttribute("activity",activity);
        return "studentUnion/register";
    }
}
