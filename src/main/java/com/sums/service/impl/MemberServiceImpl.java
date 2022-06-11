package com.sums.service.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.sums.entity.Member;
import com.sums.dao.MemberMapper;
import com.sums.entity.ReturnLinkage;
import com.sums.entity.Role;
import com.sums.service.MemberService;
import com.sums.entity.ReturnResult;
import com.sums.service.factory.RoleFactory;
import com.sums.service.roles.StrategyRoles;
import com.sums.utils.*;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.*;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author tonghui
 * @since 2022-02-13
 */
@Service
public class MemberServiceImpl implements MemberService {

    @Value("${salt}")
    private Integer SALT_NUM;
    @Value("${file.toux}")
    private String FILE_T;

    @Resource
    private MemberMapper mapper;
    @Resource
    private RoleFactory roleFactory;

    /**按照id查询一条记录*/
    public Member getOneAllById(String meId) {
        return mapper.getOneById(meId);
    }
    public Member getOneById(String meId) {
        return mapper.selectById(meId);
    }
    /**按照id 更新一条记录*/
    @Override
    public ReturnResult updateOneMember(Member member) {
        member.setSalt(SaltUtil.getSalt(SALT_NUM));
        member.setPassword(new Md5Hash(member.getPassword(),member.getSalt(),1024).toHex());
         if (mapper.updateById(member)>0) {
            return new ReturnResult("200","更新成功");
        }
        return new ReturnResult("0","更新失败");
    }

    @Override
    public List<String> getMeIdByRoleId(String roleId) {
        return mapper.getMeIdByRole(roleId,null);
    }

    @Override
    public List<String> getMeIdByRoleId(String roleId, String faculty) {
        return mapper.getMeIdByRole(roleId,faculty);
    }

    @Override
    public List<Map<String, String>> getMeIdAndMeName(String depaId) {
        return mapper.getMeIdAndMeName(depaId);
    }

    @Override
    public ReturnResult confirmPassword(String meId, String password) {
        Member member = getOneById(meId);
        Md5Hash md5Hash = new Md5Hash(password,member.getSalt(),1024);
        if (md5Hash.toHex().equals(member.getPassword())){
            return new ReturnResult("200","密码正确");
        }
        return new ReturnResult("0","密码错误");
    }

    /**分页查询展示*/
    public ReturnResult pageMember(Map<String,String> map){
       int page = Integer.parseInt(map.get("page"));
       int limit = Integer.parseInt(map.get("limit"));
       Page<Member> p = new Page<>(page,limit);
       try{
           List<Role> roles = LoginMemberUtils.getMember().getRoles();
           StrategyRoles roleStrategServer =
                   roleFactory.getRoleStrategServer(roles.get(0).getRoleId().toString());
           QueryWrapper<Member> queryWrapper = roleStrategServer.getMemberQueryWrapper(map);
           p= mapper.selectPage(p, queryWrapper);
       }catch (Exception e){
           return new ReturnResult("0","ERROR",0l,null);
       }
        return new ReturnResult("0","SUCCESS",p.getTotal(),p.getRecords());
    }


    /**联动查询 开始*/
    public List<ReturnLinkage> faculty(){
        String faculty = null;
        if(LoginMemberUtils.getMember().getPosition().equals("副主席")){
            faculty = LoginMemberUtils.getMember().getFaculty();
        }
        List<String> list = mapper.facultyList(faculty);
        List<ReturnLinkage> returnFaculty = new LinkedList<>();
        list.forEach(o ->{ returnFaculty.add(new ReturnLinkage(o,returnFaculty.size()));});
        return returnFaculty;
    }
    public List<ReturnLinkage> majorList(String faculty){
        List<String> list = mapper.majorList(faculty);
        List<ReturnLinkage> returnMajor = new LinkedList<>();
        list.forEach(o ->{ returnMajor.add(new ReturnLinkage(o,returnMajor.size()));});
        return returnMajor;
    }
    public List<ReturnLinkage> gradeList(String major) {
        List<String> list = mapper.gradeList(major);
        List<ReturnLinkage> returnGrade = new LinkedList<>();
        list.forEach(o ->{ returnGrade.add(new ReturnLinkage(o,returnGrade.size()));});
        return returnGrade;
    }
    /**联动查询 结束*/

    @Override
    public ReturnResult deleteMember(String meId) {
        if (mapper.deleteById(meId)>0) {
            return new ReturnResult("200","删除成功");
        }
        return new ReturnResult("200","删除失败");
    }

    /**查找成员对应的角色*/
    public ReturnResult findRoleIdByMeId(String meId) {
        if (mapper.selectById(meId)!=null){
            return new ReturnResult("200","操作成功",mapper.findRoleIdByMeId(meId));
        }
        return new ReturnResult("200","操作失败");
    }

    /***
     * 主席角色id=2  部长角色id=3 成员角色id=4
     * 给成员分配角色时，
     * 1.主席 ：先判断是主席是否分配，是=>删除旧的主席角色绑定信息，旧的成员职位信息更改优先级高的职位信息
     * 2.部长 ：先判断分配部门的部长是否分配，是=>删除旧部长角色绑定的信息，旧的成员职位信息更改优先级高的职位信息
     * 否=>直接绑定分配的角色信息
     *
     * 如果没有角色id 自动给该成员绑定为成员角色
     * @param meId
     * @param roleIds
     * @return
     */
    @Transactional
    @Override
    public ReturnResult updateRoleById(String meId, List<String> roleIds) {
        Member member = mapper.selectById(meId); //查询有无meid对应的成员
        if (ObjectUtil.isEmpty(member)){
            return new ReturnResult("200","无此成员");
        }
        try{
            Map<String,String> map = new HashMap<>();
            map.put("department",member.getDepartment());
            map.put("faculty",member.getFaculty());
            map.put("roleId",roleIds.get(0));
            StrategyRoles roleStrategServer =
                    roleFactory.getRoleStrategServer(roleIds.get(0));//roleIds.size()>=2? "35":
            roleStrategServer.assignRoles(map);
//        if (roleIds.contains("2")) {
//            List<Map<String, String>> meIdByRoleId = mapper.getMeIdAndRidByRoleId("2"); //判断需要给这个成员分配主席这个角色
//            if (meIdByRoleId.size()>0) {
//                String memberId = meIdByRoleId.get(0).get("memberId");
//                List<String> roleIdList = mapper.getRoleIdByMeId(memberId);
////                mapper.delOneMemberRoleById(memberId,"2");
//                roleIdList.remove("2");
//                Member member1 = mapper.selectById(memberId);
//                member1.setPosition("成员");
//                updateData(roleIdList,member1);
//            }
//        }
//        if (roleIds.contains("6")) {
//            Member member1 = mapper.getOneByRoleId("6",null,member.getFaculty());
//            if (member1!=null) {
//                List<String> roleIdList = mapper.getRoleIdByMeId(member1.getMeId());
////                mapper.delOneMemberRoleById(memberId,"2");
//                roleIdList.remove("6");
//                member1.setPosition("成员");
//                updateData(roleIdList,member1);
//            }
//        }
//        if (roleIds.contains("3")){
//            Member member1 = mapper.getOneByRoleId("3",member.getDepartment(),member.getFaculty());
//            if (member1!=null) {
//                List<String> roleIdList = mapper.getRoleIdByMeId(member1.getMeId());
////                mapper.delOneMemberRoleById(member1.getMeId(),"3");
//                roleIdList.remove("3");
//                if (roleIds.contains("5") && roleIdList.contains("5")) {
//                    roleIdList.remove("5");
//                }
//                member1.setPosition("成员");
//                updateData(roleIdList,member1);
//            }
//        }
            String text = roleIds.contains("2")?"主席": roleIds.contains("6")?"副主席": roleIds.contains("3")?"部长":"成员";
            member.setPosition(text);
            text = "";
            if(roleIds.contains("2") || roleIds.contains("6")){ text = "学生会"; }
            if (!text.equals("")){
                member.setDepartment(text);
            }
            mapper.updateById(member);
            mapper.deleteMemberRoleById(meId);
            if(ObjectUtil.isNotEmpty(roleIds)  && !"".equals(roleIds)){
                if (mapper.insertMemberRole( meId, roleIds)>0) {
                    return new ReturnResult("200","分配成功");
                }
            }
        }catch (Exception e){
        }
        return new ReturnResult("200","分配失败");
    }

    /**
     * 更新成员角色信息 作废
     * @param roleIdList
     * @param member
     */
    private void updateData(List<String> roleIdList,Member member){
        if (!roleIdList.contains("4")) {
            roleIdList.add("4");
        }
        mapper.deleteMemberRoleById(member.getMeId());
        mapper.insertMemberRole(member.getMeId(),roleIdList);
        mapper.updateById(member);
    }
    /***
     * 添加学生会成员
     * @param member
     * @return
     */
    @Override
    public ReturnResult save(Member member) {
        if (mapper.selectById(member.getMeId())!=null) {
            return new ReturnResult("200","此学号已存在,请输入正确的学号");
        }
        member = getMember(member);
        if (mapper.insert(member)>0) {
            List<String> roleId = new ArrayList<>();
            roleId.add("4");
            updateRoleById(member.getMeId(),roleId);
            return new ReturnResult("200","添加成功","departmentsInfo");
        }
        return new ReturnResult("200","添加失败");
    }

    /***部门信息顶部图表*/
    @Override
    public ReturnResult getSexNum() {
        String s = LoginMemberUtils.getMember().getRoles().get(0).getRoleId().toString();
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("faculty", LoginMemberUtils.getMember().getFaculty());
        if(!"6".equals(s)){
            queryWrapper.eq("department", LoginMemberUtils.getMember().getDepartment());
        }
        List<Map<String,Object>> list=new ArrayList<>();
        Map<String,Object> map = new HashMap<>();
        queryWrapper.groupBy("sex");
        queryWrapper.having("sex = {0} ","男");
        map.put("name","男");
        map.put("value",mapper.selectCount(queryWrapper));
        list.add(map);
        map = new HashMap<>();
        queryWrapper.clear();
        queryWrapper.eq("faculty", LoginMemberUtils.getMember().getFaculty());
        if(!"6".equals(s)){
            queryWrapper.eq("department", LoginMemberUtils.getMember().getDepartment());
        }
        queryWrapper.groupBy("sex");
        queryWrapper.having("sex ={0} ","女");
        map.put("name","女");
        map.put("value",mapper.selectCount(queryWrapper));
        list.add(map);
        return new ReturnResult("200","查找成功",list);
    }
    public ReturnResult getOnlineNum(){
        String s = LoginMemberUtils.getMember().getRoles().get(0).getRoleId().toString();
        String key = LoginMemberUtils.getMember().getFaculty()+LoginMemberUtils.getMember().getDepartment();
        List<Map<String,Object>> list=new ArrayList<>();
        Map<String,Object> map = new HashMap<>();
        map.put("name","在线人数");
        map.put("value", MyCacheUtils.getOnline(key));
        list.add(map);
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("faculty",LoginMemberUtils.getMember().getFaculty());
        if(!"6".equals(s)){
            queryWrapper.eq("department",LoginMemberUtils.getMember().getDepartment());
            queryWrapper.groupBy("department");
        }

        map = new HashMap<>();
        map.put("name","离线人数");
        map.put("value",mapper.selectCount(queryWrapper) - MyCacheUtils.getOnline(key));
        list.add(map);
        return new ReturnResult("200","查找成功",list);
    }

    /**部门信息顶部表格**/
    public Map<String,Object> getTopTable(){
        Map<String,Object> map = new HashMap<>();
        QueryWrapper queryWrapper = new QueryWrapper();
        //部长
        Member member = mapper.getOneByRoleId("3",LoginMemberUtils.getMember().getDepartment(),LoginMemberUtils.getMember().getFaculty());
        map.put("bz",member);
        queryWrapper.clear();
        // 系主席
        member = mapper.getOneByRoleId("6",null,LoginMemberUtils.getMember().getFaculty());
        map.put("xzx",member);
        queryWrapper.clear();
        // 校主席
        queryWrapper.eq("me_id",mapper.getMeIdAndRidByRoleId("2").get(0).get("memberId"));
        Member member1 = mapper.selectOne(queryWrapper);
        map.put("zx",member1);
        return map;
    }

    private Member getMember(Member member){
        member.setSalt(SaltUtil.getSalt(SALT_NUM));
        member.setPassword(new Md5Hash("123456",member.getSalt(),1024).toHex());
        member.setImgPath(FILE_T);
        member.setDepartment(LoginMemberUtils.getMember().getDepartment());
        member.setDepartmentId(LoginMemberUtils.getMember().getDepartmentId());
        member.setPosition("成员");
        member.setJoinTime(new Date());
        return member;
    }

    @Override
    public Boolean isRoleId(String meId) {
        Member member = mapper.selectById(meId);
        Member member1 = mapper.getOneByRoleId("3",member.getDepartment(),LoginMemberUtils.getMember().getFaculty());
        List<String> roleIdList = mapper.getRoleIdByMeId(member1.getMeId());
        return roleIdList.contains("5");
    }

    @Override
    public List<Member> getAll() {
        QueryWrapper queryWrapper = new QueryWrapper();
        return mapper.selectList(queryWrapper);
    }

    @Override
    public void text(String meid, String roleId) {
        mapper.saveOne(meid,roleId);
    }
}
