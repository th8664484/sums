package com.sums.test;

import com.sums.dao.MemberMapper;
import com.sums.entity.Member;
import com.sums.service.MemberService;
import com.sums.service.impl.MemberServiceImpl;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

public class test {
    public static void main(String[] args) {
        System.out.println("jjjj");// .sout
        try {
            int num = 10/0;// .try
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private MemberService service = new MemberServiceImpl();
    @Test
    public void save(){
        System.out.print("INSERT INTO member ( me_id, me_name, password, salt, sex, faculty, major, grade ) VALUES  ");
        for (int i = 0; i < 80; i++) {
            int id = 2020050000+i;
            Member member = new Member();
            member.setMeId(id+"");
            member.setMeName("张三");
            member.setPassword("6658594c162d334eeb8137bbde0a6d6a");
            member.setSalt("P^UgB");
            member.setSex("男");
            switch (i/10){
                case 0:
                    member.setFaculty("计算机系");
                    switch (i%10){
                        case 0: case 1:member.setMajor("大数据管理与应用");break;
                        case 2: case 3:member.setMajor("网络与新媒体");break;
                        case 4: case 5:member.setMajor("数据科学与大数据技术");break;
                        case 6: case 7:member.setMajor("数字媒体技术专业");break;
                        case 8: case 9:member.setMajor("软件工程专业");break;
                    }
                    break;
                case 1:
                    member.setFaculty("水利工程系");
                    switch (i%10){
                        case 0: case 1:member.setMajor("农业水利工程");break;
                        case 2: case 3:member.setMajor("水利水电工程专业");break;
                        case 4: case 5:member.setMajor("给排水科学与工程");break;
                        case 6: case 7:member.setMajor("测绘工程专业");break;
                        case 8: case 9:member.setMajor("水利工程专业");break;
                    }
                break;
                case 2:
                    member.setFaculty("土木工程系");
                    switch (i%10){
                        case 0: case 1:member.setMajor("土木工程专业");break;
                        case 2: case 3:member.setMajor("建筑环境与能源应用工程专业");break;
                        case 4: case 5:member.setMajor("供热通风与空调工程专业");break;
                        case 6: case 7:member.setMajor("建筑工程技术专业");break;
                        case 8: case 9:member.setMajor("建设工程监理专业");break;
                    }
                    break;
                case 3:
                    member.setFaculty("交通工程系");
                    switch (i%10){
                        case 0: case 1:member.setMajor("道路桥梁与渡河工程专业");break;
                        case 2: case 3:member.setMajor("勘查技术与工程专业");break;
                        case 4: case 5:member.setMajor("工程造价专业");break;
                        case 6: case 7:member.setMajor("交通工程专业");break;
                        case 8: case 9:member.setMajor("房地产开发与管理专业");break;
                    }
                    break;
                case 4:
                    member.setFaculty("电力工程系");
                    switch (i%10){
                        case 0: case 1:member.setMajor("电气工程及其自动化");break;
                        case 2: case 3:member.setMajor("机械电子工程");break;
                        case 4: case 5:member.setMajor("机械设计制造及其自动化");break;
                        case 6: case 7:member.setMajor("智能电网控制工程");break;
                        case 8: case 9:member.setMajor("电力系统自动化技术");break;
                    }
                    break;
                case 5:
                    member.setFaculty("电气自动化系");
                    switch (i%10){
                        case 0: case 1:member.setMajor("自动化专业");break;
                        case 2: case 3:member.setMajor("通信工程专业");break;
                        case 4: case 5:member.setMajor("电子信息工程技术专业");break;
                        case 6: case 7:member.setMajor("通信技术专业");break;
                        case 8: case 9:member.setMajor("电气自动化技术专业");break;
                    }
                    break;
                case 6:
                    member.setFaculty("经济贸易系");
                    switch (i%10){
                        case 0: case 1:member.setMajor("国际商务专业介绍");break;
                        case 2: case 3:member.setMajor("跨境电子商务专业");break;
                        case 4: case 5:member.setMajor("审计学专业");break;
                        case 6: case 7:member.setMajor("财务管理专业介绍");break;
                        case 8: case 9:member.setMajor("营销专业介绍");break;
                    }
                    break;
                case 7:
                    member.setFaculty("机械工程系");
                    switch (i%10){
                        case 0: case 1: case 2:member.setMajor("机器人工程");break;
                        case 3: case 4: case 5:member.setMajor("机械电子工程");break;
                        case 6: case 7: case 8: case 9:member.setMajor("机械设计制造及其自动化");break;
                    }
                    break;
            }
            member.setGrade("180"+i%10);
            System.out.printf("INSERT INTO member ( me_id, me_name, password, salt, sex, faculty, major, grade )" +
                    "VALUES (\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\",\"%s\")",member.getMeId(),member.getMeName(),
                    member.getPassword(),member.getSalt(),member.getSex(),member.getFaculty(),member.getMajor(),member.getGrade());
        }
    }
}
