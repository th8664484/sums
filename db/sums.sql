/*
 Navicat Premium Data Transfer

 Source Server         : localMysql
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : sums

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 28/05/2022 13:40:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `activity_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `activity_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动名称',
  `activity_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '活动内容',
  `submit_time` date NULL DEFAULT NULL COMMENT '提交时间',
  `department` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提交部门',
  `faculty` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系',
  `audit_status` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '0:审核中 1:通过 -1:没通过',
  `process` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '0:副主席 1:主席 2:学校',
  `admin_del` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '0:存在 1:删除',
  `chairman_del` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '0:存在 1:删除',
  `approver` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批人',
  `me_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提交人',
  `is_submit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '主席是否提交过',
  `img_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `transition` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '换届活动 1，其他 0',
  `cut_off_time` datetime(0) NULL DEFAULT NULL COMMENT '截止时间',
  PRIMARY KEY (`activity_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activity
-- ----------------------------
INSERT INTO `activity` VALUES ('14babe2b34ff4a7f80b5686437afa570', '计算机系围棋大赛', '\n# 一、报名阶段\n师生采用多种方式进行学习，对弈，提高棋艺水平。月底，各班筛选优秀选手，预备参加学校级比赛。在xxx教室，开始时间2022-6/2022-7\n# 二、比赛阶段\n每班选出至少男2名，女2名学生于xx月xx日下午前往一楼餐厅参加比赛。比赛采取三局两胜，淘汰赛制，落子不悔，现场捉对，每步棋必须在1分钟之内着子，一局结束之后立即复盘不休息(上卫生间限3分钟内)。比赛决出各组前三名，分别颁奖。其余教师颁予纪念奖，第一轮就被淘汰的学生不授奖。成绩优异者选派到镇参赛。\n![](http://localhost:8088/api/file/1653115505833.jpg)\n# 三、竞赛办法\n1、比赛采用最新棋类竞赛规则，比赛采用积分制方法进行7轮比赛，每轮按胜2分、平1分、负0分计分。\n2、取奖办法:以选手的积分制比赛成绩按得分多少排列个人名次，多者列前;如相同，则看相关人员的对手分，再如相同则看相关人员之间的胜负，胜者列前;如还相同，则比较违例次数，少者列前;均相同，则抽签决定名次。\n# 四、活动要求\n此次活动是展示我校文明建设与艺术教育成绩的窗口，所有同学积极做好参赛的准备，后勤做好相应的物资、生活准备，安全应做到及时防范，确保比赛的顺利进行。所有教职员工“不参加不补助”，并且非特殊原因不得请假。\n', '2022-05-21', '体育部', '计算机系', '1', '2', '0', '0', '管理员', '2020050001', '1', '/api/file/e001233b68824785bac504c40ed17ae4.file', '0', '2022-05-24 00:00:00');
INSERT INTO `activity` VALUES ('18cd1369a5114faea9aebf5330f653d3', '副主席阿斯顿发生', '副主席阿斯顿发生', '2022-05-06', '学生会', '计算机系', '-1', '2', '1', '0', '管理员', '2020050036', '1', NULL, '0', NULL);
INSERT INTO `activity` VALUES ('1f8022dc7d0e48daa244e0f29d5e0387', '测试活动', '测试活动测试活动测试活动', '2022-05-23', '管理员', '', '1', '2', '0', '1', '管理员', '10011', '0', NULL, '0', NULL);
INSERT INTO `activity` VALUES ('3d7d2794ae82432ca7c1fa643ae0f80c', '主席测试活动', '主席测试活动主席测试活动主席测试活动主席测试活动', '2022-05-06', '学生会', '水利工程系', '1', '2', '0', '0', '管理员', '2020050047', '1', NULL, '0', NULL);
INSERT INTO `activity` VALUES ('44fb1e56a7324888baca564ab0bb1f0b', '部长活动', '部长活动部长活动部长活动', '2022-05-23', '体育部', '计算机系', '1', '2', '0', '0', '管理员', '2020050001', '1', '/api/file/f114e35073444640abaef6a90695e123.file', '0', '2022-05-26 00:00:00');
INSERT INTO `activity` VALUES ('6143929120d34378a8b7d1e038d83992', '测试获得', '测试获得测试获得测试获得', '2022-05-18', '体育部', '计算机系', '-1', '0', '1', '0', '邹银玲', '2020050003', '0', NULL, '0', NULL);
INSERT INTO `activity` VALUES ('61563e64de504f2789c924ae7117439b', '部长申请活动', '部长申请活动部长申请活动部长申请活动', '2022-05-01', '体育部', '计算机系', '1', '2', '0', '0', '管理员', '2020050001', '1', '/api/file/68dcd13ca34b4624b77470d49bcef1a7.file', '0', '2022-05-24 00:00:00');
INSERT INTO `activity` VALUES ('84f111398e1d4ea1bbc9a78fcd72fd4c', '测试活动', '测试活动测试活动测试活动测试活动', '2022-05-22', '体育部', '计算机系', '-1', '0', '1', '0', '邹银玲', '2020050001', '0', NULL, '0', NULL);
INSERT INTO `activity` VALUES ('993541a5c6144ae49f3e31ab942d4bc8', '管理员活动', '管理员活动\n管理员活动\n管理员活动\n管理员活动', '2022-05-01', '', '', '1', '2', '0', '1', '管理员', '10011', '0', '/api/file/a4015721b2f54075868db37702516afd.file', '0', '2022-05-20 00:00:00');
INSERT INTO `activity` VALUES ('9bed1eb14bec48129c429a241c2ab425', '换届活动', '换届活动换届活动换届活动换届活动', '2022-05-03', '学生会', '水利工程系', '1', '0', '1', '0', '仝辉', '2020050047', '0', '/api/file/40681cae0a4245519a1ccf7ef7f7f0a0.file', '1', '2022-05-05 00:00:00');
INSERT INTO `activity` VALUES ('a3b15a1ede9e47acb00b33eac8af9e9c', '副主席测试活动', '副主席测试活动副主席测试活动副主席测试活动', '2022-05-06', '学生会', '计算机系', '1', '2', '0', '0', '管理员', '2020050036', '1', '/api/file/2a19b189649f4ebf84f7f7e4de064b44.file', '0', '2022-05-24 00:00:00');
INSERT INTO `activity` VALUES ('cb4630c89ec34496a5d37d3abbe11f78', '对方的', '啊手动阀', '2022-05-18', '体育部', '计算机系', '-1', '0', '1', '0', '邹银玲', '2020050003', '0', NULL, '0', NULL);
INSERT INTO `activity` VALUES ('e2af4c6734ec4002a9f3df110100a1fd', '部长测试活动', '部长测试活动部长测试活动部长测试活动', '2022-05-06', '体育部', '计算机系', '-1', '2', '0', '0', '管理员', '2020050001', '1', NULL, '0', NULL);

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement`  (
  `anno_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `anno_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告名称',
  `anno_text` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告内容',
  `anno_time` date NULL DEFAULT NULL COMMENT '发布时间',
  `me_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人',
  `me_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人ID',
  PRIMARY KEY (`anno_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES (1, '管理员', '管理员管理员管理员管理员管理员', '2022-05-01', '管理员', '10011');
INSERT INTO `announcement` VALUES (2, '学生会主席', '学生会主席学生会主席学生会主席学生会主席', '2022-05-01', '仝辉', '2020050047');
INSERT INTO `announcement` VALUES (3, '测试公共', '测试公共', '2022-05-18', '管理员', '10011');
INSERT INTO `announcement` VALUES (4, '主席测试发送公告', '主席测试发送公告主席测试发送公告主席测试发送公告主席测试发送公告\n主席测试发送公告主席测试发送公告主席测试发送公告主席测试发送公告\n主席测试发送公告主席测试发送公告主席测试发送公告主席测试发送公告', '2022-05-21', '毛迷伤', '2020050004');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `depa_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `depa_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `minister` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`depa_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES (1, '体育部', '体育部体育部体育部体育部体育部体育部体育部体育部体育部体育部体育部体育部体育部体育部体育部体育部体育部体育部');
INSERT INTO `department` VALUES (2, '学习部', '学习部学习部学习部学习部学习部学习部学习部学习部学习部学习部学习部学习部');
INSERT INTO `department` VALUES (3, '纪律部', '纪律部纪律部纪律部纪律部纪律部纪律部纪律部纪律部纪律部纪律部纪律部纪律部纪律部');
INSERT INTO `department` VALUES (4, '组织部', '组织部');
INSERT INTO `department` VALUES (5, '生活部', '生活部');
INSERT INTO `department` VALUES (6, '宣传部', '宣传部');

-- ----------------------------
-- Table structure for enrollment
-- ----------------------------
DROP TABLE IF EXISTS `enrollment`;
CREATE TABLE `enrollment`  (
  `enrollment_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `activity_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动ID',
  `me_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报名人ID',
  `me_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `faculty` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '院系',
  `major` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `grade` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `tel` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `sign_up_time` datetime(0) NULL DEFAULT NULL COMMENT '报名时间',
  `role` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '-1' COMMENT '竞选目标',
  PRIMARY KEY (`enrollment_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of enrollment
-- ----------------------------
INSERT INTO `enrollment` VALUES ('536086c6a6534b2fa99e003bb89ee2b6', '14babe2b34ff4a7f80b5686437afa570', '123456', '仝辉', '水利工程系', '农业水利工程', '123', NULL, '2022-05-23 11:00:12', '-1');
INSERT INTO `enrollment` VALUES ('e81c8303a1ef42ea97c0870dbfb86dbe', '9bed1eb14bec48129c429a241c2ab425', '2020050073', '王克', '水利工程系', '水利工程专业', '201803', '13114304805', '2022-05-03 11:39:25', '2');

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `file_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `file_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `faculty` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系',
  `department` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `me_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属人',
  `submit_time` datetime(0) NULL DEFAULT NULL COMMENT '提交时间',
  `visible` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '0:部长可见 -1:所有人可见  1:主席 2:副主席 3:部长 4：部门',
  `me_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属人ID',
  `file_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
  PRIMARY KEY (`file_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES ('2aa8964c47ba451aa074a679a60c7d55', 'HR-1-2022-怀柔行政审批平台与电子文件归档系统单点登录集成方法-V1.0-2', '', '管理员', '管理员', '2022-05-23 11:07:44', '1', '10011', '/api/file/2aa8964c47ba451aa074a679a60c7d55.docx');
INSERT INTO `files` VALUES ('356d320605dd454abbb0abc34f8e854b', '中期检查表', '', '', '管理员', '2022-05-22 12:32:33', '1', '10011', '/api/file/356d320605dd454abbb0abc34f8e854b.doc');
INSERT INTO `files` VALUES ('44982ca9b92f4b4f80ed3902c0af5d11', 'NGINX_Cookbook-final_CN', '水利工程系', '学生会', '仝辉', '2022-05-03 21:54:41', '0', '2020050047', '/api/file/44982ca9b92f4b4f80ed3902c0af5d11.pdf');
INSERT INTO `files` VALUES ('496a4364a0594ceebb759f5b4daadb91', 'HR-2-2022--大兴区政务服务事项自动归档和实时归档技术规范最新4.20', '', '管理员', '管理员', '2022-05-23 11:07:44', '1', '10011', '/api/file/496a4364a0594ceebb759f5b4daadb91.docx');
INSERT INTO `files` VALUES ('4f37586072d6458ca3855e1af327d1a3', '学生会自主管理模式探究', '', '', '管理员', '2022-05-18 20:45:41', '-1', '10011', '/api/file/4f37586072d6458ca3855e1af327d1a3.pdf');
INSERT INTO `files` VALUES ('6cd17119923b4198920630fa5a4136a3', 'HR-1-2022-怀柔行政审批平台与电子文件归档系统单点登录集成方法-V1.0-2', '计算机系', '学生会', '毛迷伤', '2022-05-22 12:25:30', '2', '2020050004', '/api/file/6cd17119923b4198920630fa5a4136a3.docx');
INSERT INTO `files` VALUES ('7c559cd4e50b4d83a25bd64831305891', 'HR-2-2022--怀柔区政务服务事项自动归档和实时归档技术规范最新5.13(3)(1)', '', '管理员', '管理员', '2022-05-23 11:07:44', '1', '10011', '/api/file/7c559cd4e50b4d83a25bd64831305891.docx');
INSERT INTO `files` VALUES ('99894e25940e4d85aef4b2511021104b', '工作计划', '计算机系', '副主席', '邹银玲', '2022-05-22 12:44:49', '0', '2020050036', '/api/file/99894e25940e4d85aef4b2511021104b.xlsx');
INSERT INTO `files` VALUES ('addf2f1b70ab4975b193aef1c5e4696d', 'wp测试记录', '计算机系', '主席', '毛迷伤', '2022-05-22 12:33:23', '2', '2020050004', '/api/file/addf2f1b70ab4975b193aef1c5e4696d.xls');
INSERT INTO `files` VALUES ('bbbeca6194ce445aaa48d6b859d5709c', '周报（仝辉）2022 04.24-04.29', '', '', '管理员', '2022-05-01 14:44:21', '-1', '10011', '/api/file/bbbeca6194ce445aaa48d6b859d5709c.docx');
INSERT INTO `files` VALUES ('eb2c256313414d01a0263aab3a8a8f9a', 'redis启动命令', '计算机系', '学生会', '毛迷伤', '2022-05-22 12:26:01', '3', '2020050004', '/api/file/eb2c256313414d01a0263aab3a8a8f9a.txt');

-- ----------------------------
-- Table structure for items
-- ----------------------------
DROP TABLE IF EXISTS `items`;
CREATE TABLE `items`  (
  `item_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `item_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品名称',
  `buy_date` date NULL DEFAULT NULL COMMENT '购买日期',
  `price` decimal(6, 2) NULL DEFAULT NULL COMMENT '单价',
  `item_number` int(10) NULL DEFAULT NULL COMMENT '数量',
  `lent_number` int(10) NULL DEFAULT 0 COMMENT '借出数量',
  `item_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of items
-- ----------------------------
INSERT INTO `items` VALUES ('32f8e4a3aa5a4c41a87df784a548995f', '测试123', '2022-05-23', 123.00, 123, 0, '123');
INSERT INTO `items` VALUES ('5cb83da0cd4b4eab89aaea26264f802b', '测试物品2', '2022-03-12', 32.60, 15, 0, '测试信息');
INSERT INTO `items` VALUES ('79a8d5b48024444ebfbaec01a8ce65a2', '11111', '2022-05-18', 22.00, 20, 0, '');
INSERT INTO `items` VALUES ('c8d287c5706c4cea969cd7a448ed149d', '测试物品', '2022-03-12', 22.50, 20, 0, '测试信息');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `me_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '成员ID',
  `me_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `salt` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码盐',
  `sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `faculty` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '院系',
  `major` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业',
  `grade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级',
  `tel` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `department` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `position` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `join_time` date NULL DEFAULT NULL COMMENT '加入时间',
  `img_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像路径',
  `department_id` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`me_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('10011', '管理员', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '', '', '', '13120531300', '', '管理员', '2022-03-16', '/api/file/toux.jpg', '');
INSERT INTO `member` VALUES ('2020050001', '劳倡文', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '大数据管理与应用', '201801', '13120531300', '体育部', '部长', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050002', '车伟娜', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '大数据管理与应用', '201801', '15758031608', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050003', '魏玲琅', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '大数据管理与应用', '201801', '18842623999', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050004', '毛迷伤', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '大数据管理与应用', '201802', '17585941011', '学生会', '主席', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050005', '赖帮琼', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '大数据管理与应用', '201802', '15312601286', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050006', '姜迷伤', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '大数据管理与应用', '201802', '18436216461', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050007', '陈蝾婷', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '大数据管理与应用', '201802', '18588338340', '学习部', '部长', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050008', '李唱月', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '网络与新媒体', '201801', '15210223169', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050009', '丁翠岚', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '网络与新媒体', '201801', '15730779694', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050010', '班绪婷', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '网络与新媒体', '201801', '19898135878', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050011', '石淑懿', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '网络与新媒体', '201802', '18537308118', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050012', '孔竹筱', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '网络与新媒体', '201802', '18686181656', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050013', '郑玉萍', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '网络与新媒体', '201802', '13151777647', '纪律部', '部长', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050014', '常半梦', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '网络与新媒体', '201802', '18755801335', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050015', '相半梦', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '数据科学与大数据技术', '201801', '14798246886', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050016', '蒲嘉言', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '数据科学与大数据技术', '201801', '18639411487', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050017', '邹云水', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '数据科学与大数据技术', '201801', '17535042934', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050018', '关水香', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '数据科学与大数据技术', '201802', '15575585005', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050019', '訾初翠', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '数据科学与大数据技术', '201802', '13756913110', '组织部', '部长', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050020', '冯棠华', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '数据科学与大数据技术', '201802', '13614263888', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050021', '龚贝丽', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '数据科学与大数据技术', '201802', '19842949551', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050022', '杨望雅', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '数字媒体技术专业', '201801', '19810886226', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050023', '蔚平心', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '数字媒体技术专业', '201801', '13957143223', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050024', '郑韦曲', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '数字媒体技术专业', '201801', '14787289207', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050025', '茹琳秀', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '数字媒体技术专业', '201802', '18889107472', '生活部', '部长', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050026', '鄂彩娟', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '数字媒体技术专业', '201802', '15060784531', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050027', '郝贞芳', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '数字媒体技术专业', '201802', '18566632518', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050028', '贡绿蕊', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '数字媒体技术专业', '201802', '13691042385', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050029', '何叶帆', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '软件工程专业', '201801', '19877945432', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050030', '訾依心', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '软件工程专业', '201801', '16608706830', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050031', '车沁媛', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '软件工程专业', '201801', '15684456374', '宣传部', '部长', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050032', '濮盼曼', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '软件工程专业', '201802', '19985329492', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050033', '瞿慕涵', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '软件工程专业', '201802', '19843217489', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050034', '益笑萍', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '软件工程专业', '201803', '15931492558', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050035', '鱼白桃', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '计算机系', '软件工程专业', '201803', '18865383060', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050036', '邹银玲', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '计算机系', '软件工程专业', '201803', '14917536790', '学生会', '副主席', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050037', '班沈思', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '农业水利工程', '201801', '15342189467', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050038', '于白莲', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '农业水利工程', '201801', '18481855665', '体育部', '部长', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050039', '易琼音', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '农业水利工程', '201801', '18851385252', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050041', '詹尔容', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '农业水利工程', '201802', '13158944838', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050042', '庾佳妍', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '农业水利工程', '201802', '17553343329', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050043', '鱼以彤', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '农业水利工程', '201802', '18149717615', '学习部', '部长', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050044', '扈燕齐', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利水电工程专业', '201801', '13729792324', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050045', '益明轩', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利水电工程专业', '201801', '13836728058', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050046', '郑俊英', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '水利水电工程专业', '201801', '18549977005', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050047', '阙海莲', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利水电工程专业', '201802', '19802971520', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050048', '甘智宸', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利水电工程专业', '201802', '15905632843', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050049', '边恨松', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利水电工程专业', '201802', '14704732746', '纪律部', '部长', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050050', '江思菱', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利水电工程专业', '201802', '18344642239', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050051', '厍珺俐', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '给排水科学与工程', '201801', '13962521468', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050052', '毋惜霜', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '给排水科学与工程', '201801', '13176411595', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050053', '韶嘉歆', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '给排水科学与工程', '201801', '18405903226', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050054', '桂俏丽', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '给排水科学与工程', '201802', '13640394270', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050055', '郗西柠', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '给排水科学与工程', '201802', '14552821622', '组织部', '部长', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050056', '宓心怡', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '给排水科学与工程', '201802', '19925522026', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050057', '麴和豫', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '给排水科学与工程', '201802', '17389479284', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050058', '景云心', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '测绘工程专业', '201801', '18838367350', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050059', '终寻南', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '测绘工程专业', '201801', '17748594090', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050060', '连柔洁', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '测绘工程专业', '201801', '17198837394', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050061', '康佳思', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '测绘工程专业', '201802', '15836567331', '生活部', '部长', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050062', '禄迎波', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '测绘工程专业', '201802', '17101554928', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050063', '尚素华', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '测绘工程专业', '201802', '13667641439', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050064', '赵胜红', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '测绘工程专业', '201802', '17326654612', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050065', '戌梦柏', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '水利工程专业', '201801', '15652706777', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050066', '方喜悦', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利工程专业', '201801', '13231921090', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050067', '满婉丽', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利工程专业', '201801', '17382841212', '宣传部', '部长', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050068', '陈芳懿', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利工程专业', '201802', '15204849110', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050069', '任安安', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利工程专业', '201802', '15104578933', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050070', '汲念梦', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '水利工程专业', '201803', '15042987684', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050071', '阚合乐', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利工程专业', '201803', '14505096916', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050072', '厍冷安', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '水利工程系', '水利工程专业', '201803', '15274799478', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050073', '白梅风', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '水利工程系', '水利工程专业', '201803', '13114304805', '学生会', '副主席', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050074', '冉怡悦', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '土木工程专业', '201801', '14715608291', '体育部', '部长', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050075', '简凉夏', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '土木工程专业', '201801', '15358841449', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050076', '慕蔚然', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '土木工程专业', '201801', '19924198932', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050077', '何谷波', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '土木工程专业', '201802', '15530647598', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050078', '步念之', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '土木工程专业', '201802', '14535574140', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050079', '邴笛韵', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '土木工程专业', '201802', '17562414164', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050080', '伊绮文', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '土木工程专业', '201802', '18283754883', '学习部', '部长', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050081', '韩莉莉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '建筑环境与能源应用工程专业', '201801', '13681656661', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050082', '邓琼华', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建筑环境与能源应用工程专业', '201801', '17612715181', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050083', '师访风', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '建筑环境与能源应用工程专业', '201801', '17547518106', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050084', '浦白薇', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建筑环境与能源应用工程专业', '201802', '14597854865', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050085', '万清一', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建筑环境与能源应用工程专业', '201802', '18972139350', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050086', '潘盼山', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '建筑环境与能源应用工程专业', '201802', '13564689931', '纪律部', '部长', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050087', '申昕葳', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建筑环境与能源应用工程专业', '201802', '18999575655', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050088', '邴思嫒', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '供热通风与空调工程专业', '201801', '18050153812', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050089', '厉密如', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '供热通风与空调工程专业', '201801', '16602738178', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050090', '步青雪', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '供热通风与空调工程专业', '201801', '17771401597', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050091', '须晴虹', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '供热通风与空调工程专业', '201802', '18252305073', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050092', '养乐巧', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '供热通风与空调工程专业', '201802', '17757676489', '组织部', '部长', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050093', '薛建颖', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '供热通风与空调工程专业', '201802', '13629818107', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050094', '阴妍婷', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '供热通风与空调工程专业', '201802', '14786983643', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050095', '乜诗桃', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '建筑工程技术专业', '201801', '17702581146', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050096', '鱼彩萱', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建筑工程技术专业', '201801', '14540636033', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050097', '燕隽巧', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建筑工程技术专业', '201801', '18980343568', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050098', '傅涟颖', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建筑工程技术专业', '201802', '18331532685', '生活部', '部长', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050099', '毛娅楠', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建筑工程技术专业', '201802', '15018737224', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050100', '师香菱', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '建筑工程技术专业', '201802', '13569988655', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050101', '仰冷玉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建筑工程技术专业', '201802', '17825797478', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050102', '濮烟湄', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '建设工程监理专业', '201801', '13195603501', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050103', '寇雅逸', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建设工程监理专业', '201801', '15801076995', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050104', '益恬雅', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '建设工程监理专业', '201801', '15229004328', '宣传部', '部长', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050105', '简笑妍', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '建设工程监理专业', '201802', '18142339799', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050106', '甄歌玲', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建设工程监理专业', '201802', '17664748264', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050107', '闻乐松', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建设工程监理专业', '201803', '16654192374', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050108', '沃柏颜', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建设工程监理专业', '201803', '17576534060', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050109', '彭云心', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '土木工程系', '建设工程监理专业', '201803', '17885379028', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050110', '尹雅美', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '土木工程系', '建设工程监理专业', '201803', '18848712329', '学生会', '副主席', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050111', '能甄梨', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '道路桥梁与渡河工程专业', '201801', '17117546527', '体育部', '部长', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050112', '冉盼山', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '道路桥梁与渡河工程专业', '201801', '15242509462', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050113', '能依云', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '道路桥梁与渡河工程专业', '201801', '18625422070', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050114', '菱沛蓝', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '道路桥梁与渡河工程专业', '201802', '13215116203', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050115', '牧英秀', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '道路桥梁与渡河工程专业', '201802', '17716894368', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050116', '徐妙菱', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '道路桥梁与渡河工程专业', '201802', '13515545883', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050117', '董夜天', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '道路桥梁与渡河工程专业', '201802', '18314747958', '学习部', '部长', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050118', '潘玉萍', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '勘查技术与工程专业', '201801', '15285964952', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050119', '姜许暖', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '勘查技术与工程专业', '201801', '18768352511', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050120', '翟智美', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '勘查技术与工程专业', '201801', '15907171342', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050121', '戈嘉懿', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '勘查技术与工程专业', '201802', '15742177381', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050122', '居含双', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '勘查技术与工程专业', '201802', '18631556981', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050123', '蔡乐儿', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '勘查技术与工程专业', '201802', '15511386207', '纪律部', '部长', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050124', '满水彤', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '勘查技术与工程专业', '201802', '17896924886', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050125', '熊听然', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '工程造价专业', '201801', '17824768889', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050126', '蓬淑然', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '工程造价专业', '201801', '13025188723', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050127', '陈川暮', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '工程造价专业', '201801', '18706923841', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050128', '冷蔚落', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '工程造价专业', '201802', '13727705843', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050129', '梁雪卉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '工程造价专业', '201802', '18448426630', '组织部', '部长', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050130', '唐秋烟', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '工程造价专业', '201802', '18547206335', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050131', '黎之双', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '工程造价专业', '201802', '18125309011', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050132', '濮含香', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '交通工程专业', '201801', '15060708922', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050133', '郝云英', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '交通工程专业', '201801', '18470803583', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050134', '崔瑜蓓', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '交通工程专业', '201801', '13507046036', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050135', '国书芹', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '交通工程专业', '201802', '13541742497', '生活部', '部长', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050136', '宿锦凡', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '交通工程专业', '201802', '14777513285', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050137', '秦彩娟', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '交通工程专业', '201802', '13958732502', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050138', '方桂月', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '交通工程专业', '201802', '13624981197', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050139', '茹赛玉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '房地产开发与管理专业', '201801', '16561068967', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050140', '文思若', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '交通工程系', '房地产开发与管理专业', '201801', '18920302833', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050141', '通陶然', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '房地产开发与管理专业', '201801', '18774386135', '宣传部', '部长', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050142', '殳流如', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '房地产开发与管理专业', '201802', '13889497995', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050143', '薛晴波', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '房地产开发与管理专业', '201802', '13088815347', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050144', '郁若烟', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '房地产开发与管理专业', '201803', '18387992565', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050145', '糜绿柏', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '房地产开发与管理专业', '201803', '13838213796', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050146', '孙柳瑾', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '交通工程系', '房地产开发与管理专业', '201803', '13573086011', '学生会', '副主席', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050147', '冀韵诗', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '电气工程及其自动化', '201801', '15993521645', '体育部', '部长', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050148', '辛苏微', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '电气工程及其自动化', '201801', '13615702473', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050149', '姜雨燕', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '电气工程及其自动化', '201801', '15229474155', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050150', '詹傲菡', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '电气工程及其自动化', '201802', '15361776094', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050151', '暴海菡', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '电气工程及其自动化', '201802', '15978435721', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050152', '劳湛娟', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '电气工程及其自动化', '201802', '15119489869', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050153', '麴晶霞', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '电气工程及其自动化', '201802', '19829034103', '学习部', '部长', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050154', '晃西华', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '机械电子工程', '201801', '13589007660', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050155', '邓明凝', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '机械电子工程', '201801', '15745479566', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050156', '茹娇然', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '机械电子工程', '201801', '15105141250', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050157', '束布衣', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '机械电子工程', '201802', '15898409999', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050158', '韩柔谨', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '机械电子工程', '201802', '18103102589', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050159', '曹瑾萱', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '机械电子工程', '201802', '17370934269', '纪律部', '部长', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050160', '越甫文', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '机械电子工程', '201802', '13742277859', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050161', '江倩愉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '机械设计制造及其自动化', '201801', '13344609091', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050162', '靳朝旭', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '机械设计制造及其自动化', '201801', '16508783623', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050163', '卢暄莹', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '机械设计制造及其自动化', '201801', '18845952790', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050164', '冷紫丝', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '机械设计制造及其自动化', '201802', '15654289462', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050165', '权美曼', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '机械设计制造及其自动化', '201802', '14529641389', '组织部', '部长', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050166', '车笑柳', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '机械设计制造及其自动化', '201802', '13421165206', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050167', '越思彤', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '机械设计制造及其自动化', '201802', '17626714559', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050168', '戈妍和', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '智能电网控制工程', '201801', '14906962470', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050169', '金雁枫', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '智能电网控制工程', '201801', '13054079484', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050170', '向秦澈', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '智能电网控制工程', '201801', '13064173483', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050171', '邱芳菲', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '智能电网控制工程', '201802', '13525013908', '生活部', '部长', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050172', '谢恨荷', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '智能电网控制工程', '201802', '15002978864', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050173', '宓溪澈', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '智能电网控制工程', '201802', '17794758357', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050174', '盖芷茹', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '智能电网控制工程', '201802', '15840363052', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050175', '巢青筠', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '电力系统自动化技术', '201801', '15049918485', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050176', '浦倩语', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '电力系统自动化技术', '201801', '13572078874', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050177', '曾哲妍', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '电力系统自动化技术', '201801', '15309394771', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050178', '曾依心', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '电力系统自动化技术', '201802', '18000762812', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050179', '温凌春', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '电力系统自动化技术', '201802', '15901882737', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050180', '邹欣怡', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '电力系统自动化技术', '201803', '15740298359', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050181', '慎慧英', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '电力系统自动化技术', '201803', '18648448314', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050182', '终夏菡', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电力工程系', '电力系统自动化技术', '201803', '17304222356', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050183', '吕怜南', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电力工程系', '电力系统自动化技术', '201803', '13436074452', '学生会', '副主席', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050184', '蔡琳竣', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '自动化专业', '201801', '18206574363', '体育部', '部长', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050185', '司红英', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '自动化专业', '201801', '19986008531', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050186', '蔚柯洁', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '自动化专业', '201801', '17301676330', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050187', '利泽芳', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '自动化专业', '201802', '18389985245', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050188', '贺柯拉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '自动化专业', '201802', '19936242179', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050189', '宦向露', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '自动化专业', '201802', '15968928317', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050190', '冉睿敏', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '自动化专业', '201802', '16554185424', '学习部', '部长', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050191', '陆妍雅', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '通信工程专业', '201801', '18501804956', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050192', '养青丝', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '通信工程专业', '201801', '13594645557', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050193', '刘春娇', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '通信工程专业', '201801', '13801404851', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050194', '寿娇然', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '通信工程专业', '201802', '13012289881', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050195', '冯庄雅', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '通信工程专业', '201802', '18425106141', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050196', '任思迪', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '通信工程专业', '201802', '17848406099', '纪律部', '部长', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050197', '魏之山', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '通信工程专业', '201802', '15870289360', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050198', '崔彤云', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电子信息工程技术专业', '201801', '17541692257', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050199', '徐兰芳', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电子信息工程技术专业', '201801', '15931434102', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050200', '桂丹萱', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电子信息工程技术专业', '201801', '15225674223', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050201', '向淑慧', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '电子信息工程技术专业', '201802', '13395281763', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050202', '蒲美如', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电子信息工程技术专业', '201802', '13373729721', '组织部', '部长', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050203', '沃闵雨', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电子信息工程技术专业', '201802', '19940672820', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050204', '那雪蓉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '电子信息工程技术专业', '201802', '18664139706', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050205', '怀悦媛', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '通信技术专业', '201801', '18669953398', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050206', '桂书双', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '通信技术专业', '201801', '13303809990', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050207', '晏妍彤', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '通信技术专业', '201801', '17239703425', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050208', '暨晓玉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '通信技术专业', '201802', '18866487621', '生活部', '部长', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050209', '蓟水绿', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '通信技术专业', '201802', '13243547589', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050210', '薛怜阳', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '通信技术专业', '201802', '18576008849', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050211', '农璇珠', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '通信技术专业', '201802', '15095394870', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050212', '尚寄瑶', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电气自动化技术专业', '201801', '13304537801', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050213', '乌束芳', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电气自动化技术专业', '201801', '18012719184', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050214', '卢孤云', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电气自动化技术专业', '201801', '19801777888', '宣传部', '部长', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050215', '容哲妍', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电气自动化技术专业', '201802', '14594369824', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050216', '双芮安', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电气自动化技术专业', '201802', '13261451432', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050217', '陆嘉美', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电气自动化技术专业', '201803', '17161316653', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050218', '汪绿春', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '电气自动化系', '电气自动化技术专业', '201803', '14537387259', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050219', '熊清淑', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '电气自动化技术专业', '201803', '15198235877', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050220', '汪丝萝', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '电气自动化系', '电气自动化技术专业', '201803', '18652128464', '学生会', '副主席', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050221', '杨书文', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '国际商务专业介绍', '201801', '17825569513', '体育部', '部长', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050222', '景秀华', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '国际商务专业介绍', '201801', '14921006307', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050223', '郁雅芙', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '国际商务专业介绍', '201801', '18664096327', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050224', '隗惠心', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '国际商务专业介绍', '201802', '15704755355', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050225', '游代玉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '国际商务专业介绍', '201802', '15208387773', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050226', '习怡乐', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '国际商务专业介绍', '201802', '18245157120', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050227', '金新颖', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '国际商务专业介绍', '201802', '14926145601', '学习部', '部长', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050228', '从庭酪', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '跨境电子商务专业', '201801', '17791457160', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050229', '盖访风', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '跨境电子商务专业', '201801', '15906955679', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050230', '乌凝琴', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '跨境电子商务专业', '201801', '13069564084', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050231', '孔觅翠', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '跨境电子商务专业', '201802', '13264522863', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050232', '桓洁静', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '跨境电子商务专业', '201802', '16673532572', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050233', '扈芳蕙', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '跨境电子商务专业', '201802', '17658845898', '纪律部', '部长', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050234', '潘千萍', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '跨境电子商务专业', '201802', '18642426705', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050235', '阚冷雪', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '审计学专业', '201801', '16515667173', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050236', '富语冰', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '审计学专业', '201801', '18275082302', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050237', '魏星晴', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '审计学专业', '201801', '14720001712', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050238', '罗晓绿', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '审计学专业', '201802', '17684619397', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050239', '何梦竹', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '审计学专业', '201802', '18164867219', '组织部', '部长', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050240', '汪岚风', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '审计学专业', '201802', '18324094108', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050241', '慕芳春', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '审计学专业', '201802', '13708094697', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050242', '唐含文', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '财务管理专业介绍', '201801', '13367359482', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050243', '衡翠萍', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '财务管理专业介绍', '201801', '18178764269', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050244', '孔从霜', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '财务管理专业介绍', '201801', '15318225791', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050245', '宓紫蕙', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '财务管理专业介绍', '201802', '15829792064', '生活部', '部长', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050246', '甘娟丽', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '财务管理专业介绍', '201802', '13798247802', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050247', '桓尕钰', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '财务管理专业介绍', '201802', '18711571435', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050248', '聂雨筠', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '财务管理专业介绍', '201802', '13117179437', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050249', '傅嫔然', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '营销专业介绍', '201801', '17728728004', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050250', '欧丹丹', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '营销专业介绍', '201801', '17107896519', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050251', '隗云露', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '营销专业介绍', '201801', '17368735006', '宣传部', '部长', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050252', '廖金枝', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '营销专业介绍', '201802', '15260491799', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050253', '晏鸣玉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '营销专业介绍', '201802', '15355375404', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050254', '黎囡囡', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '经济贸易系', '营销专业介绍', '201803', '17331197566', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050255', '史慧英', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '营销专业介绍', '201803', '15565104571', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050256', '戴滢渟', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '经济贸易系', '营销专业介绍', '201803', '13602986067', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050257', '漕念蕾', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机器人工程', '201801', '18426555669', '体育部', '部长', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050258', '养高洁', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机器人工程', '201801', '18033971079', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050259', '黎彗云', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机器人工程', '201801', '13139778518', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050260', '越艺萍', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机器人工程', '201802', '18150802599', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050261', '通凝远', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机器人工程', '201802', '18157257159', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '1');
INSERT INTO `member` VALUES ('2020050262', '牛春雪', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机器人工程', '201802', '18562914209', '体育部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050263', '余山雁', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机器人工程', '201802', '18032854176', '学习部', '部长', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050264', '菱钰洁', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机器人工程', '201801', '13205603975', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050265', '池玲琳', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机器人工程', '201801', '17651096604', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050266', '养畅畅', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机器人工程', '201801', '18733561215', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050267', '阎翠琴', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机器人工程', '201802', '18180641487', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050268', '乜忻忻', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机器人工程', '201802', '19872444309', '学习部', '成员', '2022-03-16', '/api/file/toux.jpg', '2');
INSERT INTO `member` VALUES ('2020050269', '胡正妍', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机器人工程', '201802', '18859436690', '纪律部', '部长', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050270', '朱琳竣', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机器人工程', '201802', '15512646692', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050271', '司云溪', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机器人工程', '201801', '15287482331', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050272', '扶逸秀', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械电子工程', '201801', '15215612560', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050273', '刘乃心', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机械电子工程', '201801', '13398327936', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050274', '扈静恬', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机械电子工程', '201802', '18165981502', '纪律部', '成员', '2022-03-16', '/api/file/toux.jpg', '3');
INSERT INTO `member` VALUES ('2020050275', '堵碧巧', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机械电子工程', '201802', '15765665112', '组织部', '部长', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050276', '宓棠华', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械电子工程', '201802', '18143181958', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050277', '关欣愉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机械电子工程', '201802', '13496464581', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050278', '巴泽芳', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机械电子工程', '201801', '15347926191', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050279', '丁怀慕', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械电子工程', '201801', '13163598450', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050280', '卢蓉蓉', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械电子工程', '201801', '18833195093', '组织部', '成员', '2022-03-16', '/api/file/toux.jpg', '4');
INSERT INTO `member` VALUES ('2020050281', '韶梅雪', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械电子工程', '201802', '16529709706', '生活部', '部长', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050282', '常芷茹', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械电子工程', '201802', '13954158621', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050283', '公书双', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械电子工程', '201802', '19801852331', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050284', '石碧灵', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械设计制造及其自动化', '201802', '18260124495', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050285', '车乐瑶', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机械设计制造及其自动化', '201801', '13908136777', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050286', '慕恨云', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械设计制造及其自动化', '201801', '17267784322', '生活部', '成员', '2022-03-16', '/api/file/toux.jpg', '5');
INSERT INTO `member` VALUES ('2020050287', '彭正雅', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机械设计制造及其自动化', '201801', '14982443350', '宣传部', '部长', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050288', '毋悦驰', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械设计制造及其自动化', '201802', '18005758804', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050289', '饶三诗', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机械设计制造及其自动化', '201802', '13806146756', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050290', '冉奥婷', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '男', '机械工程系', '机械设计制造及其自动化', '201803', '13559813425', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050291', '扈子悦', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械设计制造及其自动化', '201803', '17504896120', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050292', '屠森丽', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械设计制造及其自动化', '201803', '18775621166', '宣传部', '成员', '2022-03-16', '/api/file/toux.jpg', '6');
INSERT INTO `member` VALUES ('2020050293', '甘龙梅', 'def44da2cad222bd1556c8001b8b72f5', 'k$aoH', '女', '机械工程系', '机械设计制造及其自动化', '201803', '18871505154', '学生会', '副主席', '2022-03-16', '/api/file/toux.jpg', '6');

-- ----------------------------
-- Table structure for member_role
-- ----------------------------
DROP TABLE IF EXISTS `member_role`;
CREATE TABLE `member_role`  (
  `member_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '成员ID',
  `role_id` int(2) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`member_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member_role
-- ----------------------------
INSERT INTO `member_role` VALUES ('10011', 1);
INSERT INTO `member_role` VALUES ('2020050001', 3);
INSERT INTO `member_role` VALUES ('2020050002', 4);
INSERT INTO `member_role` VALUES ('2020050003', 4);
INSERT INTO `member_role` VALUES ('2020050004', 2);
INSERT INTO `member_role` VALUES ('2020050005', 4);
INSERT INTO `member_role` VALUES ('2020050006', 4);
INSERT INTO `member_role` VALUES ('2020050007', 3);
INSERT INTO `member_role` VALUES ('2020050007', 5);
INSERT INTO `member_role` VALUES ('2020050008', 4);
INSERT INTO `member_role` VALUES ('2020050009', 4);
INSERT INTO `member_role` VALUES ('2020050010', 4);
INSERT INTO `member_role` VALUES ('2020050011', 4);
INSERT INTO `member_role` VALUES ('2020050012', 4);
INSERT INTO `member_role` VALUES ('2020050013', 3);
INSERT INTO `member_role` VALUES ('2020050014', 4);
INSERT INTO `member_role` VALUES ('2020050015', 4);
INSERT INTO `member_role` VALUES ('2020050016', 4);
INSERT INTO `member_role` VALUES ('2020050017', 4);
INSERT INTO `member_role` VALUES ('2020050018', 4);
INSERT INTO `member_role` VALUES ('2020050019', 3);
INSERT INTO `member_role` VALUES ('2020050020', 4);
INSERT INTO `member_role` VALUES ('2020050021', 4);
INSERT INTO `member_role` VALUES ('2020050022', 4);
INSERT INTO `member_role` VALUES ('2020050023', 4);
INSERT INTO `member_role` VALUES ('2020050024', 4);
INSERT INTO `member_role` VALUES ('2020050025', 3);
INSERT INTO `member_role` VALUES ('2020050026', 4);
INSERT INTO `member_role` VALUES ('2020050027', 4);
INSERT INTO `member_role` VALUES ('2020050028', 4);
INSERT INTO `member_role` VALUES ('2020050029', 4);
INSERT INTO `member_role` VALUES ('2020050030', 4);
INSERT INTO `member_role` VALUES ('2020050031', 3);
INSERT INTO `member_role` VALUES ('2020050032', 4);
INSERT INTO `member_role` VALUES ('2020050033', 4);
INSERT INTO `member_role` VALUES ('2020050034', 4);
INSERT INTO `member_role` VALUES ('2020050035', 4);
INSERT INTO `member_role` VALUES ('2020050036', 5);
INSERT INTO `member_role` VALUES ('2020050036', 6);
INSERT INTO `member_role` VALUES ('2020050037', 4);
INSERT INTO `member_role` VALUES ('2020050038', 3);
INSERT INTO `member_role` VALUES ('2020050039', 4);
INSERT INTO `member_role` VALUES ('2020050040', 4);
INSERT INTO `member_role` VALUES ('2020050041', 4);
INSERT INTO `member_role` VALUES ('2020050042', 4);
INSERT INTO `member_role` VALUES ('2020050043', 3);
INSERT INTO `member_role` VALUES ('2020050043', 5);
INSERT INTO `member_role` VALUES ('2020050044', 4);
INSERT INTO `member_role` VALUES ('2020050045', 4);
INSERT INTO `member_role` VALUES ('2020050046', 4);
INSERT INTO `member_role` VALUES ('2020050047', 4);
INSERT INTO `member_role` VALUES ('2020050048', 4);
INSERT INTO `member_role` VALUES ('2020050049', 3);
INSERT INTO `member_role` VALUES ('2020050050', 4);
INSERT INTO `member_role` VALUES ('2020050051', 4);
INSERT INTO `member_role` VALUES ('2020050052', 4);
INSERT INTO `member_role` VALUES ('2020050053', 4);
INSERT INTO `member_role` VALUES ('2020050054', 4);
INSERT INTO `member_role` VALUES ('2020050055', 3);
INSERT INTO `member_role` VALUES ('2020050056', 4);
INSERT INTO `member_role` VALUES ('2020050057', 4);
INSERT INTO `member_role` VALUES ('2020050058', 4);
INSERT INTO `member_role` VALUES ('2020050059', 4);
INSERT INTO `member_role` VALUES ('2020050060', 4);
INSERT INTO `member_role` VALUES ('2020050061', 3);
INSERT INTO `member_role` VALUES ('2020050062', 4);
INSERT INTO `member_role` VALUES ('2020050063', 4);
INSERT INTO `member_role` VALUES ('2020050064', 4);
INSERT INTO `member_role` VALUES ('2020050065', 4);
INSERT INTO `member_role` VALUES ('2020050066', 4);
INSERT INTO `member_role` VALUES ('2020050067', 3);
INSERT INTO `member_role` VALUES ('2020050068', 4);
INSERT INTO `member_role` VALUES ('2020050069', 4);
INSERT INTO `member_role` VALUES ('2020050070', 4);
INSERT INTO `member_role` VALUES ('2020050071', 4);
INSERT INTO `member_role` VALUES ('2020050072', 4);
INSERT INTO `member_role` VALUES ('2020050073', 6);
INSERT INTO `member_role` VALUES ('2020050074', 3);
INSERT INTO `member_role` VALUES ('2020050075', 4);
INSERT INTO `member_role` VALUES ('2020050076', 4);
INSERT INTO `member_role` VALUES ('2020050077', 4);
INSERT INTO `member_role` VALUES ('2020050078', 4);
INSERT INTO `member_role` VALUES ('2020050079', 4);
INSERT INTO `member_role` VALUES ('2020050080', 3);
INSERT INTO `member_role` VALUES ('2020050080', 5);
INSERT INTO `member_role` VALUES ('2020050081', 4);
INSERT INTO `member_role` VALUES ('2020050082', 4);
INSERT INTO `member_role` VALUES ('2020050083', 4);
INSERT INTO `member_role` VALUES ('2020050084', 4);
INSERT INTO `member_role` VALUES ('2020050085', 4);
INSERT INTO `member_role` VALUES ('2020050086', 3);
INSERT INTO `member_role` VALUES ('2020050087', 4);
INSERT INTO `member_role` VALUES ('2020050088', 4);
INSERT INTO `member_role` VALUES ('2020050089', 4);
INSERT INTO `member_role` VALUES ('2020050090', 4);
INSERT INTO `member_role` VALUES ('2020050091', 4);
INSERT INTO `member_role` VALUES ('2020050092', 3);
INSERT INTO `member_role` VALUES ('2020050093', 4);
INSERT INTO `member_role` VALUES ('2020050094', 4);
INSERT INTO `member_role` VALUES ('2020050095', 4);
INSERT INTO `member_role` VALUES ('2020050096', 4);
INSERT INTO `member_role` VALUES ('2020050097', 4);
INSERT INTO `member_role` VALUES ('2020050098', 3);
INSERT INTO `member_role` VALUES ('2020050099', 4);
INSERT INTO `member_role` VALUES ('2020050100', 4);
INSERT INTO `member_role` VALUES ('2020050101', 4);
INSERT INTO `member_role` VALUES ('2020050102', 4);
INSERT INTO `member_role` VALUES ('2020050103', 4);
INSERT INTO `member_role` VALUES ('2020050104', 3);
INSERT INTO `member_role` VALUES ('2020050105', 4);
INSERT INTO `member_role` VALUES ('2020050106', 4);
INSERT INTO `member_role` VALUES ('2020050107', 4);
INSERT INTO `member_role` VALUES ('2020050108', 4);
INSERT INTO `member_role` VALUES ('2020050109', 4);
INSERT INTO `member_role` VALUES ('2020050110', 6);
INSERT INTO `member_role` VALUES ('2020050111', 3);
INSERT INTO `member_role` VALUES ('2020050112', 4);
INSERT INTO `member_role` VALUES ('2020050113', 4);
INSERT INTO `member_role` VALUES ('2020050114', 4);
INSERT INTO `member_role` VALUES ('2020050115', 4);
INSERT INTO `member_role` VALUES ('2020050116', 4);
INSERT INTO `member_role` VALUES ('2020050117', 3);
INSERT INTO `member_role` VALUES ('2020050117', 5);
INSERT INTO `member_role` VALUES ('2020050118', 4);
INSERT INTO `member_role` VALUES ('2020050119', 4);
INSERT INTO `member_role` VALUES ('2020050120', 4);
INSERT INTO `member_role` VALUES ('2020050121', 4);
INSERT INTO `member_role` VALUES ('2020050122', 4);
INSERT INTO `member_role` VALUES ('2020050123', 3);
INSERT INTO `member_role` VALUES ('2020050124', 4);
INSERT INTO `member_role` VALUES ('2020050125', 4);
INSERT INTO `member_role` VALUES ('2020050126', 4);
INSERT INTO `member_role` VALUES ('2020050127', 4);
INSERT INTO `member_role` VALUES ('2020050128', 4);
INSERT INTO `member_role` VALUES ('2020050129', 3);
INSERT INTO `member_role` VALUES ('2020050130', 4);
INSERT INTO `member_role` VALUES ('2020050131', 4);
INSERT INTO `member_role` VALUES ('2020050132', 4);
INSERT INTO `member_role` VALUES ('2020050133', 4);
INSERT INTO `member_role` VALUES ('2020050134', 4);
INSERT INTO `member_role` VALUES ('2020050135', 3);
INSERT INTO `member_role` VALUES ('2020050136', 4);
INSERT INTO `member_role` VALUES ('2020050137', 4);
INSERT INTO `member_role` VALUES ('2020050138', 4);
INSERT INTO `member_role` VALUES ('2020050139', 4);
INSERT INTO `member_role` VALUES ('2020050140', 4);
INSERT INTO `member_role` VALUES ('2020050141', 3);
INSERT INTO `member_role` VALUES ('2020050142', 4);
INSERT INTO `member_role` VALUES ('2020050143', 4);
INSERT INTO `member_role` VALUES ('2020050144', 4);
INSERT INTO `member_role` VALUES ('2020050145', 4);
INSERT INTO `member_role` VALUES ('2020050146', 6);
INSERT INTO `member_role` VALUES ('2020050147', 3);
INSERT INTO `member_role` VALUES ('2020050148', 4);
INSERT INTO `member_role` VALUES ('2020050149', 4);
INSERT INTO `member_role` VALUES ('2020050150', 4);
INSERT INTO `member_role` VALUES ('2020050151', 4);
INSERT INTO `member_role` VALUES ('2020050152', 4);
INSERT INTO `member_role` VALUES ('2020050153', 3);
INSERT INTO `member_role` VALUES ('2020050153', 5);
INSERT INTO `member_role` VALUES ('2020050154', 4);
INSERT INTO `member_role` VALUES ('2020050155', 4);
INSERT INTO `member_role` VALUES ('2020050156', 4);
INSERT INTO `member_role` VALUES ('2020050157', 4);
INSERT INTO `member_role` VALUES ('2020050158', 4);
INSERT INTO `member_role` VALUES ('2020050159', 3);
INSERT INTO `member_role` VALUES ('2020050160', 4);
INSERT INTO `member_role` VALUES ('2020050161', 4);
INSERT INTO `member_role` VALUES ('2020050162', 4);
INSERT INTO `member_role` VALUES ('2020050163', 4);
INSERT INTO `member_role` VALUES ('2020050164', 4);
INSERT INTO `member_role` VALUES ('2020050165', 3);
INSERT INTO `member_role` VALUES ('2020050166', 4);
INSERT INTO `member_role` VALUES ('2020050167', 4);
INSERT INTO `member_role` VALUES ('2020050168', 4);
INSERT INTO `member_role` VALUES ('2020050169', 4);
INSERT INTO `member_role` VALUES ('2020050170', 4);
INSERT INTO `member_role` VALUES ('2020050171', 3);
INSERT INTO `member_role` VALUES ('2020050172', 4);
INSERT INTO `member_role` VALUES ('2020050173', 4);
INSERT INTO `member_role` VALUES ('2020050174', 4);
INSERT INTO `member_role` VALUES ('2020050175', 4);
INSERT INTO `member_role` VALUES ('2020050176', 4);
INSERT INTO `member_role` VALUES ('2020050177', 4);
INSERT INTO `member_role` VALUES ('2020050178', 4);
INSERT INTO `member_role` VALUES ('2020050179', 4);
INSERT INTO `member_role` VALUES ('2020050180', 4);
INSERT INTO `member_role` VALUES ('2020050181', 4);
INSERT INTO `member_role` VALUES ('2020050182', 4);
INSERT INTO `member_role` VALUES ('2020050183', 6);
INSERT INTO `member_role` VALUES ('2020050184', 3);
INSERT INTO `member_role` VALUES ('2020050185', 4);
INSERT INTO `member_role` VALUES ('2020050186', 4);
INSERT INTO `member_role` VALUES ('2020050187', 4);
INSERT INTO `member_role` VALUES ('2020050188', 4);
INSERT INTO `member_role` VALUES ('2020050189', 4);
INSERT INTO `member_role` VALUES ('2020050190', 3);
INSERT INTO `member_role` VALUES ('2020050190', 5);
INSERT INTO `member_role` VALUES ('2020050191', 4);
INSERT INTO `member_role` VALUES ('2020050192', 4);
INSERT INTO `member_role` VALUES ('2020050193', 4);
INSERT INTO `member_role` VALUES ('2020050194', 4);
INSERT INTO `member_role` VALUES ('2020050195', 4);
INSERT INTO `member_role` VALUES ('2020050196', 3);
INSERT INTO `member_role` VALUES ('2020050197', 4);
INSERT INTO `member_role` VALUES ('2020050198', 4);
INSERT INTO `member_role` VALUES ('2020050199', 4);
INSERT INTO `member_role` VALUES ('2020050200', 4);
INSERT INTO `member_role` VALUES ('2020050201', 4);
INSERT INTO `member_role` VALUES ('2020050202', 3);
INSERT INTO `member_role` VALUES ('2020050203', 4);
INSERT INTO `member_role` VALUES ('2020050204', 4);
INSERT INTO `member_role` VALUES ('2020050205', 4);
INSERT INTO `member_role` VALUES ('2020050206', 4);
INSERT INTO `member_role` VALUES ('2020050207', 4);
INSERT INTO `member_role` VALUES ('2020050208', 3);
INSERT INTO `member_role` VALUES ('2020050209', 4);
INSERT INTO `member_role` VALUES ('2020050210', 4);
INSERT INTO `member_role` VALUES ('2020050211', 4);
INSERT INTO `member_role` VALUES ('2020050212', 4);
INSERT INTO `member_role` VALUES ('2020050213', 4);
INSERT INTO `member_role` VALUES ('2020050214', 3);
INSERT INTO `member_role` VALUES ('2020050215', 4);
INSERT INTO `member_role` VALUES ('2020050216', 4);
INSERT INTO `member_role` VALUES ('2020050217', 4);
INSERT INTO `member_role` VALUES ('2020050218', 4);
INSERT INTO `member_role` VALUES ('2020050219', 4);
INSERT INTO `member_role` VALUES ('2020050220', 6);
INSERT INTO `member_role` VALUES ('2020050221', 3);
INSERT INTO `member_role` VALUES ('2020050222', 4);
INSERT INTO `member_role` VALUES ('2020050223', 4);
INSERT INTO `member_role` VALUES ('2020050224', 4);
INSERT INTO `member_role` VALUES ('2020050225', 4);
INSERT INTO `member_role` VALUES ('2020050226', 4);
INSERT INTO `member_role` VALUES ('2020050227', 3);
INSERT INTO `member_role` VALUES ('2020050227', 5);
INSERT INTO `member_role` VALUES ('2020050228', 4);
INSERT INTO `member_role` VALUES ('2020050229', 4);
INSERT INTO `member_role` VALUES ('2020050230', 4);
INSERT INTO `member_role` VALUES ('2020050231', 4);
INSERT INTO `member_role` VALUES ('2020050232', 4);
INSERT INTO `member_role` VALUES ('2020050233', 3);
INSERT INTO `member_role` VALUES ('2020050234', 4);
INSERT INTO `member_role` VALUES ('2020050235', 4);
INSERT INTO `member_role` VALUES ('2020050236', 4);
INSERT INTO `member_role` VALUES ('2020050237', 4);
INSERT INTO `member_role` VALUES ('2020050238', 4);
INSERT INTO `member_role` VALUES ('2020050239', 3);
INSERT INTO `member_role` VALUES ('2020050240', 4);
INSERT INTO `member_role` VALUES ('2020050241', 4);
INSERT INTO `member_role` VALUES ('2020050242', 4);
INSERT INTO `member_role` VALUES ('2020050243', 4);
INSERT INTO `member_role` VALUES ('2020050244', 4);
INSERT INTO `member_role` VALUES ('2020050245', 3);
INSERT INTO `member_role` VALUES ('2020050246', 4);
INSERT INTO `member_role` VALUES ('2020050247', 4);
INSERT INTO `member_role` VALUES ('2020050248', 4);
INSERT INTO `member_role` VALUES ('2020050249', 4);
INSERT INTO `member_role` VALUES ('2020050250', 4);
INSERT INTO `member_role` VALUES ('2020050251', 3);
INSERT INTO `member_role` VALUES ('2020050252', 4);
INSERT INTO `member_role` VALUES ('2020050253', 4);
INSERT INTO `member_role` VALUES ('2020050254', 4);
INSERT INTO `member_role` VALUES ('2020050255', 4);
INSERT INTO `member_role` VALUES ('2020050256', 4);
INSERT INTO `member_role` VALUES ('2020050257', 3);
INSERT INTO `member_role` VALUES ('2020050258', 4);
INSERT INTO `member_role` VALUES ('2020050259', 4);
INSERT INTO `member_role` VALUES ('2020050260', 4);
INSERT INTO `member_role` VALUES ('2020050261', 4);
INSERT INTO `member_role` VALUES ('2020050262', 4);
INSERT INTO `member_role` VALUES ('2020050263', 3);
INSERT INTO `member_role` VALUES ('2020050263', 5);
INSERT INTO `member_role` VALUES ('2020050264', 4);
INSERT INTO `member_role` VALUES ('2020050265', 4);
INSERT INTO `member_role` VALUES ('2020050266', 4);
INSERT INTO `member_role` VALUES ('2020050267', 4);
INSERT INTO `member_role` VALUES ('2020050268', 4);
INSERT INTO `member_role` VALUES ('2020050269', 3);
INSERT INTO `member_role` VALUES ('2020050270', 4);
INSERT INTO `member_role` VALUES ('2020050271', 4);
INSERT INTO `member_role` VALUES ('2020050272', 4);
INSERT INTO `member_role` VALUES ('2020050273', 4);
INSERT INTO `member_role` VALUES ('2020050274', 4);
INSERT INTO `member_role` VALUES ('2020050275', 3);
INSERT INTO `member_role` VALUES ('2020050276', 4);
INSERT INTO `member_role` VALUES ('2020050277', 4);
INSERT INTO `member_role` VALUES ('2020050278', 4);
INSERT INTO `member_role` VALUES ('2020050279', 4);
INSERT INTO `member_role` VALUES ('2020050280', 4);
INSERT INTO `member_role` VALUES ('2020050281', 3);
INSERT INTO `member_role` VALUES ('2020050282', 4);
INSERT INTO `member_role` VALUES ('2020050283', 4);
INSERT INTO `member_role` VALUES ('2020050284', 4);
INSERT INTO `member_role` VALUES ('2020050285', 4);
INSERT INTO `member_role` VALUES ('2020050286', 4);
INSERT INTO `member_role` VALUES ('2020050287', 3);
INSERT INTO `member_role` VALUES ('2020050288', 4);
INSERT INTO `member_role` VALUES ('2020050289', 4);
INSERT INTO `member_role` VALUES ('2020050290', 4);
INSERT INTO `member_role` VALUES ('2020050291', 4);
INSERT INTO `member_role` VALUES ('2020050292', 4);
INSERT INTO `member_role` VALUES ('2020050293', 6);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `message_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `message_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `letter_time` datetime(0) NULL DEFAULT NULL COMMENT '发信时间',
  `letter_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发信人',
  `state` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态',
  `scope` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '范围 -1全部 0主席 1副主席 2部长 3部门',
  `message_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息内容',
  `me_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发信人ID',
  PRIMARY KEY (`message_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1bcd93aac3d849d6bf10ca5cb7387372', '测试123', '2022-05-23 11:09:06', '管理员', '0', '0', '1233', '10011');
INSERT INTO `message` VALUES ('29eadeebb8464c359fb68f08ebe738e7', 'zx-bz', '2022-05-22 12:16:23', '毛迷伤', '0', '2', 'zx-bz', '2020050004');
INSERT INTO `message` VALUES ('5f83427287594e6ba4f6b2b6cdbeab19', '主席发送', '2022-05-02 13:27:27', '仝辉', '0', '1', '主席发', '2020050047');
INSERT INTO `message` VALUES ('5fe1b6ec962d47c6bbad98aadf16de26', 'zx--fzx', '2022-05-22 12:16:04', '毛迷伤', '0', '1', 'zx--fzx', '2020050004');
INSERT INTO `message` VALUES ('989045e93cc74a478c636134df493f0d', '测试1111', '2022-05-18 20:32:53', '管理员', '0', '0', '1111111', '10011');
INSERT INTO `message` VALUES ('b92e30b299f74a8f8538b1050458d945', '所有人', '2022-05-01 17:35:26', '管理员', '0', '-1', '所有人所有人', '10011');
INSERT INTO `message` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '测试bz', '2022-05-22 12:12:22', '管理员', '0', '2', '测试bz', '10011');
INSERT INTO `message` VALUES ('caf67504d64b4e89afe3670cd12105ea', '测试456', '2022-05-23 11:09:51', '管理员', '0', '-1', '456', '10011');
INSERT INTO `message` VALUES ('d1f9073b6c40432e8e7c81a65265378e', '测试fzx', '2022-05-22 12:10:54', '管理员', '0', '1', '测试fzx', '10011');
INSERT INTO `message` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '测试123', '2022-05-22 12:09:06', '管理员', '0', '-1', '测试123', '10011');
INSERT INTO `message` VALUES ('e4cd7221f7e947479a50ae2112d1fe8b', '测试zx', '2022-05-22 12:10:27', '管理员', '0', '0', '测试zx', '10011');

-- ----------------------------
-- Table structure for msg_sink
-- ----------------------------
DROP TABLE IF EXISTS `msg_sink`;
CREATE TABLE `msg_sink`  (
  `message_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '消息ID',
  `receive_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接收人ID',
  `is_click` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否查看',
  PRIMARY KEY (`message_id`, `receive_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of msg_sink
-- ----------------------------
INSERT INTO `msg_sink` VALUES ('1bcd93aac3d849d6bf10ca5cb7387372', '2020050004', '1');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050001', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050007', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050013', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050019', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050025', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050031', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050037', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050043', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050049', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050055', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050061', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050067', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050074', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050080', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050086', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050092', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050098', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050104', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050111', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050117', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050123', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050129', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050135', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050141', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050147', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050153', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050159', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050165', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050171', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050184', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050190', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050196', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050202', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050208', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050214', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050221', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050227', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050233', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050239', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050245', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050251', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050257', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050263', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050269', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050275', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050281', '0');
INSERT INTO `msg_sink` VALUES ('29eadeebb8464c359fb68f08ebe738e7', '2020050287', '0');
INSERT INTO `msg_sink` VALUES ('5f83427287594e6ba4f6b2b6cdbeab19', '2020050036', '0');
INSERT INTO `msg_sink` VALUES ('5f83427287594e6ba4f6b2b6cdbeab19', '2020050073', '0');
INSERT INTO `msg_sink` VALUES ('5f83427287594e6ba4f6b2b6cdbeab19', '2020050110', '0');
INSERT INTO `msg_sink` VALUES ('5f83427287594e6ba4f6b2b6cdbeab19', '2020050146', '0');
INSERT INTO `msg_sink` VALUES ('5f83427287594e6ba4f6b2b6cdbeab19', '2020050183', '0');
INSERT INTO `msg_sink` VALUES ('5f83427287594e6ba4f6b2b6cdbeab19', '2020050220', '0');
INSERT INTO `msg_sink` VALUES ('5f83427287594e6ba4f6b2b6cdbeab19', '2020050293', '0');
INSERT INTO `msg_sink` VALUES ('5fe1b6ec962d47c6bbad98aadf16de26', '2020050036', '0');
INSERT INTO `msg_sink` VALUES ('5fe1b6ec962d47c6bbad98aadf16de26', '2020050073', '0');
INSERT INTO `msg_sink` VALUES ('5fe1b6ec962d47c6bbad98aadf16de26', '2020050110', '0');
INSERT INTO `msg_sink` VALUES ('5fe1b6ec962d47c6bbad98aadf16de26', '2020050146', '0');
INSERT INTO `msg_sink` VALUES ('5fe1b6ec962d47c6bbad98aadf16de26', '2020050183', '0');
INSERT INTO `msg_sink` VALUES ('5fe1b6ec962d47c6bbad98aadf16de26', '2020050220', '0');
INSERT INTO `msg_sink` VALUES ('5fe1b6ec962d47c6bbad98aadf16de26', '2020050293', '0');
INSERT INTO `msg_sink` VALUES ('989045e93cc74a478c636134df493f0d', '2020050047', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050001', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050002', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050003', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050004', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050005', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050006', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050007', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050008', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050009', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050010', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050011', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050012', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050013', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050014', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050015', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050016', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050017', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050018', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050019', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050020', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050021', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050022', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050023', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050024', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050025', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050026', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050027', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050028', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050029', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050030', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050031', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050032', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050033', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050034', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050035', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050036', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050037', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050038', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050039', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050040', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050041', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050042', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050043', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050044', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050045', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050046', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050047', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050048', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050049', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050050', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050051', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050052', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050053', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050054', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050055', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050056', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050057', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050058', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050059', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050060', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050061', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050062', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050063', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050064', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050065', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050066', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050067', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050068', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050069', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050070', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050071', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050072', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050073', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050074', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050075', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050076', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050077', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050078', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050079', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050080', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050081', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050082', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050083', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050084', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050085', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050086', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050087', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050088', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050089', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050090', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050091', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050092', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050093', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050094', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050095', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050096', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050097', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050098', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050099', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050100', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050101', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050102', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050103', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050104', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050105', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050106', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050107', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050108', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050109', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050110', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050111', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050112', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050113', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050114', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050115', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050116', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050117', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050118', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050119', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050120', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050121', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050122', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050123', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050124', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050125', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050126', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050127', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050128', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050129', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050130', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050131', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050132', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050133', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050134', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050135', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050136', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050137', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050138', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050139', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050140', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050141', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050142', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050143', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050144', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050145', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050146', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050147', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050148', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050149', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050150', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050151', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050152', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050153', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050154', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050155', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050156', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050157', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050158', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050159', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050160', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050161', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050162', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050163', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050164', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050165', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050166', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050167', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050168', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050169', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050170', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050171', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050172', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050173', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050174', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050175', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050176', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050177', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050178', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050179', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050180', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050181', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050182', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050183', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050184', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050185', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050186', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050187', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050188', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050189', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050190', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050191', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050192', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050193', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050194', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050195', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050196', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050197', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050198', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050199', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050200', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050201', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050202', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050203', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050204', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050205', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050206', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050207', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050208', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050209', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050210', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050211', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050212', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050213', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050214', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050215', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050216', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050217', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050218', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050219', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050220', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050221', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050222', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050223', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050224', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050225', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050226', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050227', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050228', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050229', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050230', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050231', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050232', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050233', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050234', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050235', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050236', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050237', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050238', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050239', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050240', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050241', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050242', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050243', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050244', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050245', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050246', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050247', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050248', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050249', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050250', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050251', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050252', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050253', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050254', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050255', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050256', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050257', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050258', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050259', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050260', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050261', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050262', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050263', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050264', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050265', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050266', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050267', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050268', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050269', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050270', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050271', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050272', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050273', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050274', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050275', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050276', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050277', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050278', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050279', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050280', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050281', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050282', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050283', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050284', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050285', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050286', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050287', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050288', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050289', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050290', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050291', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050292', '0');
INSERT INTO `msg_sink` VALUES ('b92e30b299f74a8f8538b1050458d945', '2020050293', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050001', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050007', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050013', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050019', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050025', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050031', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050037', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050043', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050049', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050055', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050061', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050067', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050074', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050080', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050086', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050092', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050098', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050104', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050111', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050117', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050123', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050129', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050135', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050141', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050147', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050153', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050159', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050165', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050171', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050184', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050190', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050196', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050202', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050208', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050214', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050221', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050227', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050233', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050239', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050245', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050251', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050257', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050263', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050269', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050275', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050281', '0');
INSERT INTO `msg_sink` VALUES ('bcea84f2d0de462b977edf294f2a79c9', '2020050287', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050001', '1');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050002', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050003', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050004', '1');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050005', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050006', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050007', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050008', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050009', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050010', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050011', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050012', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050013', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050014', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050015', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050016', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050017', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050018', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050019', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050020', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050021', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050022', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050023', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050024', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050025', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050026', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050027', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050028', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050029', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050030', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050031', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050032', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050033', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050034', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050035', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050036', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050037', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050038', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050039', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050041', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050042', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050043', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050044', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050045', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050046', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050047', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050048', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050049', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050050', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050051', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050052', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050053', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050054', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050055', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050056', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050057', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050058', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050059', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050060', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050061', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050062', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050063', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050064', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050065', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050066', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050067', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050068', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050069', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050070', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050071', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050072', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050073', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050074', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050075', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050076', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050077', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050078', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050079', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050080', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050081', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050082', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050083', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050084', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050085', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050086', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050087', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050088', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050089', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050090', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050091', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050092', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050093', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050094', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050095', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050096', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050097', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050098', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050099', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050100', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050101', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050102', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050103', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050104', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050105', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050106', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050107', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050108', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050109', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050110', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050111', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050112', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050113', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050114', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050115', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050116', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050117', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050118', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050119', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050120', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050121', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050122', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050123', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050124', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050125', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050126', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050127', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050128', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050129', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050130', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050131', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050132', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050133', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050134', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050135', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050136', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050137', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050138', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050139', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050140', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050141', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050142', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050143', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050144', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050145', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050146', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050147', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050148', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050149', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050150', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050151', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050152', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050153', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050154', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050155', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050156', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050157', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050158', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050159', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050160', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050161', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050162', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050163', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050164', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050165', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050166', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050167', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050168', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050169', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050170', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050171', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050172', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050173', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050174', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050175', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050176', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050177', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050178', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050179', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050180', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050181', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050182', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050183', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050184', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050185', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050186', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050187', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050188', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050189', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050190', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050191', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050192', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050193', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050194', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050195', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050196', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050197', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050198', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050199', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050200', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050201', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050202', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050203', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050204', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050205', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050206', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050207', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050208', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050209', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050210', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050211', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050212', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050213', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050214', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050215', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050216', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050217', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050218', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050219', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050220', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050221', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050222', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050223', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050224', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050225', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050226', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050227', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050228', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050229', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050230', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050231', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050232', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050233', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050234', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050235', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050236', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050237', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050238', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050239', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050240', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050241', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050242', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050243', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050244', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050245', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050246', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050247', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050248', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050249', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050250', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050251', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050252', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050253', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050254', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050255', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050256', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050257', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050258', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050259', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050260', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050261', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050262', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050263', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050264', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050265', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050266', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050267', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050268', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050269', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050270', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050271', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050272', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050273', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050274', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050275', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050276', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050277', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050278', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050279', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050280', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050281', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050282', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050283', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050284', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050285', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050286', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050287', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050288', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050289', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050290', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050291', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050292', '0');
INSERT INTO `msg_sink` VALUES ('caf67504d64b4e89afe3670cd12105ea', '2020050293', '0');
INSERT INTO `msg_sink` VALUES ('d1f9073b6c40432e8e7c81a65265378e', '2020050036', '0');
INSERT INTO `msg_sink` VALUES ('d1f9073b6c40432e8e7c81a65265378e', '2020050073', '0');
INSERT INTO `msg_sink` VALUES ('d1f9073b6c40432e8e7c81a65265378e', '2020050110', '0');
INSERT INTO `msg_sink` VALUES ('d1f9073b6c40432e8e7c81a65265378e', '2020050146', '0');
INSERT INTO `msg_sink` VALUES ('d1f9073b6c40432e8e7c81a65265378e', '2020050183', '0');
INSERT INTO `msg_sink` VALUES ('d1f9073b6c40432e8e7c81a65265378e', '2020050220', '0');
INSERT INTO `msg_sink` VALUES ('d1f9073b6c40432e8e7c81a65265378e', '2020050293', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050001', '1');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050002', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050003', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050004', '1');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050005', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050006', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050007', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050008', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050009', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050010', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050011', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050012', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050013', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050014', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050015', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050016', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050017', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050018', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050019', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050020', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050021', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050022', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050023', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050024', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050025', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050026', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050027', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050028', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050029', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050030', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050031', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050032', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050033', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050034', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050035', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050036', '1');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050037', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050038', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050039', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050040', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050041', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050042', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050043', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050044', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050045', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050046', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050047', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050048', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050049', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050050', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050051', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050052', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050053', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050054', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050055', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050056', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050057', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050058', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050059', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050060', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050061', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050062', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050063', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050064', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050065', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050066', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050067', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050068', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050069', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050070', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050071', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050072', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050073', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050074', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050075', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050076', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050077', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050078', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050079', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050080', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050081', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050082', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050083', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050084', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050085', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050086', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050087', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050088', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050089', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050090', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050091', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050092', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050093', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050094', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050095', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050096', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050097', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050098', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050099', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050100', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050101', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050102', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050103', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050104', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050105', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050106', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050107', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050108', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050109', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050110', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050111', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050112', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050113', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050114', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050115', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050116', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050117', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050118', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050119', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050120', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050121', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050122', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050123', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050124', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050125', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050126', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050127', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050128', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050129', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050130', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050131', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050132', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050133', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050134', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050135', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050136', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050137', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050138', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050139', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050140', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050141', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050142', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050143', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050144', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050145', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050146', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050147', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050148', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050149', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050150', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050151', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050152', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050153', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050154', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050155', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050156', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050157', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050158', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050159', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050160', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050161', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050162', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050163', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050164', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050165', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050166', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050167', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050168', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050169', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050170', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050171', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050172', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050173', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050174', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050175', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050176', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050177', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050178', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050179', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050180', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050181', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050182', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050183', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050184', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050185', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050186', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050187', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050188', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050189', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050190', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050191', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050192', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050193', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050194', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050195', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050196', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050197', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050198', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050199', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050200', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050201', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050202', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050203', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050204', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050205', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050206', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050207', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050208', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050209', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050210', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050211', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050212', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050213', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050214', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050215', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050216', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050217', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050218', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050219', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050220', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050221', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050222', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050223', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050224', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050225', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050226', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050227', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050228', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050229', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050230', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050231', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050232', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050233', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050234', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050235', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050236', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050237', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050238', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050239', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050240', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050241', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050242', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050243', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050244', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050245', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050246', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050247', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050248', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050249', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050250', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050251', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050252', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050253', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050254', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050255', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050256', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050257', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050258', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050259', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050260', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050261', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050262', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050263', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050264', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050265', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050266', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050267', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050268', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050269', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050270', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050271', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050272', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050273', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050274', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050275', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050276', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050277', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050278', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050279', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050280', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050281', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050282', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050283', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050284', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050285', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050286', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050287', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050288', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050289', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050290', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050291', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050292', '0');
INSERT INTO `msg_sink` VALUES ('de150ca0d4bb4f71abf12a54c0dadfb8', '2020050293', '0');
INSERT INTO `msg_sink` VALUES ('e4cd7221f7e947479a50ae2112d1fe8b', '2020050004', '0');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `fun_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '功能ID',
  `fun_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '功能名称',
  `fun_type` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型 1:菜单,2:按钮',
  `fun_href` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '功能对应请求',
  `fun_auth` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `pid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级功能id,根菜单的父级功能是-1',
  PRIMARY KEY (`fun_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 78 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '系统管理', '1', '', '', '-1');
INSERT INTO `permission` VALUES (2, '成员信息', '1', '', '', '1');
INSERT INTO `permission` VALUES (3, '角色信息', '1', '', '', '1');
INSERT INTO `permission` VALUES (4, '权限信息', '1', '', '', '1');
INSERT INTO `permission` VALUES (5, '部门管理', '1', '', '', '1');
INSERT INTO `permission` VALUES (6, '公告管理', '1', '', '', '1');
INSERT INTO `permission` VALUES (7, '添加', '0', '/add/role', 'system:role:add', '3');
INSERT INTO `permission` VALUES (8, '删除', '0', '/del/role', 'system:role:del', '3');
INSERT INTO `permission` VALUES (9, '编辑', '0', '/update/role', 'system:role:edit', '3');
INSERT INTO `permission` VALUES (10, '展示', '0', '/roleFind/all', 'system:role:all', '3');
INSERT INTO `permission` VALUES (11, '添加', '0', '/add/fun', 'system:permission:add', '4');
INSERT INTO `permission` VALUES (12, '删除', '0', '/del/fun', 'system:permission:del', '4');
INSERT INTO `permission` VALUES (13, '编辑', '0', '/update/fun', 'system:permission:update', '4');
INSERT INTO `permission` VALUES (14, '展示', '0', '/all/fun', 'system:permission:all', '4');
INSERT INTO `permission` VALUES (15, '功能分配', '0', '/update/roleByFunid', 'system:role:allot', '3');
INSERT INTO `permission` VALUES (16, '删除', '0', '/del/member', 'system:member:del', '2');
INSERT INTO `permission` VALUES (17, '角色分配', '0', '/update/memberRole', 'system:member:allot', '2');
INSERT INTO `permission` VALUES (18, '展示', '0', '/member/all', 'system:member:all', '2');
INSERT INTO `permission` VALUES (19, '日常事务管理', '1', '', '', '-1');
INSERT INTO `permission` VALUES (20, '计划管理', '1', '', '', '19');
INSERT INTO `permission` VALUES (21, '活动管理', '1', '', '', '19');
INSERT INTO `permission` VALUES (22, '文件管理', '1', '', '', '19');
INSERT INTO `permission` VALUES (23, '物品管理', '1', '', '', '-1');
INSERT INTO `permission` VALUES (24, '借还记录', '1', '', '', '23');
INSERT INTO `permission` VALUES (25, '全部物品', '1', '', '', '23');
INSERT INTO `permission` VALUES (26, '消息管理', '1', '', '', '-1');
INSERT INTO `permission` VALUES (27, '添加', '0', '/add/depa', 'system:department:add', '5');
INSERT INTO `permission` VALUES (28, '编辑', '0', '/update/depa', 'system:department:update', '5');
INSERT INTO `permission` VALUES (29, '删除', '0', '/del/depa', 'system:department:del', '5');
INSERT INTO `permission` VALUES (30, '添加', '0', '/add/anno', 'system:announcement:add', '6');
INSERT INTO `permission` VALUES (31, '查看', '0', '/view-edit', 'system:announcement:look', '6');
INSERT INTO `permission` VALUES (32, '编辑', '0', '/update/anno', 'system:announcement:update', '6');
INSERT INTO `permission` VALUES (33, '删除', '0', '/del/anno', 'system:announcement:del', '6');
INSERT INTO `permission` VALUES (34, '添加', '0', '/work/add', 'transaction:plan:add', '20');
INSERT INTO `permission` VALUES (35, '编辑', '0', '/work/update', 'transaction:plan:update', '20');
INSERT INTO `permission` VALUES (36, '删除', '0', '/work/del', 'transaction:plan:del', '20');
INSERT INTO `permission` VALUES (37, '添加', '0', '/activity/add', 'transaction:activity:add', '21');
INSERT INTO `permission` VALUES (38, '查看', '0', '/activity/look', 'transaction:activity:look', '21');
INSERT INTO `permission` VALUES (39, '编辑', '0', '/activity/update', 'transaction:activity:update', '21');
INSERT INTO `permission` VALUES (40, '通过', '0', '/activity/through', 'transaction:activity:through', '21');
INSERT INTO `permission` VALUES (41, '驳回', '0', '/activity/reject', 'transaction:activity:reject', '21');
INSERT INTO `permission` VALUES (42, '删除', '0', '/activity/del', 'transaction:activity:del', '21');
INSERT INTO `permission` VALUES (43, '新增', '0', '/record/add', 'goods:borrowed:add', '24');
INSERT INTO `permission` VALUES (44, '归还', '0', '/record/return', 'goods:borrowed:return', '24');
INSERT INTO `permission` VALUES (45, '删除', '0', '/record/del', 'goods:borrowed:del', '24');
INSERT INTO `permission` VALUES (46, '新增', '0', '/items/add', 'goods:items:add', '25');
INSERT INTO `permission` VALUES (47, '编辑', '0', '/items/update', 'goods:items:update', '25');
INSERT INTO `permission` VALUES (48, '删除', '0', '/items/del', 'goods:items:del', '25');
INSERT INTO `permission` VALUES (49, '发送', '0', '/message/add', 'message:add:*', '26');
INSERT INTO `permission` VALUES (50, '查看', '0', 'message/look', 'message:look:*', '26');
INSERT INTO `permission` VALUES (51, '删除', '0', '/message/del', 'message:del:*', '26');
INSERT INTO `permission` VALUES (52, '预览', '0', '/files/preview', 'transaction:file:preview', '22');
INSERT INTO `permission` VALUES (53, '下载', '0', '/files/download', 'transaction:file:download', '22');
INSERT INTO `permission` VALUES (54, '删除', '0', '/files/del', 'transaction:file:del', '22');
INSERT INTO `permission` VALUES (55, '提交', '0', '/activity/submit', 'transaction:activity:submit', '21');
INSERT INTO `permission` VALUES (56, '菜单选项', '0', '/member', 'system:member:member', '2');
INSERT INTO `permission` VALUES (57, '菜单选项', '0', '/role', 'system:role:role', '3');
INSERT INTO `permission` VALUES (58, '菜单选项', '0', '/permission', 'system:permission:permission', '4');
INSERT INTO `permission` VALUES (59, '菜单选项', '0', '/departments', 'system:department:department', '5');
INSERT INTO `permission` VALUES (60, '菜单选项', '0', '/announcement', 'system:announcement:announcement', '6');
INSERT INTO `permission` VALUES (61, '菜单选项', '0', '/work', 'transaction:plan:plan', '20');
INSERT INTO `permission` VALUES (62, '菜单选项', '0', '/activity', 'transaction:activity:activity', '21');
INSERT INTO `permission` VALUES (63, '菜单选项', '0', '/files', 'transaction:file:file', '22');
INSERT INTO `permission` VALUES (64, '菜单选项', '0', '/record', 'goods:borrowed:borrowed', '24');
INSERT INTO `permission` VALUES (65, '菜单选项', '0', '/items', 'goods:items:items', '25');
INSERT INTO `permission` VALUES (66, '部门信息', '1', '', '', '-1');
INSERT INTO `permission` VALUES (67, '菜单选项', '0', '/departmentsInfo', 'departments:info:info', '66');
INSERT INTO `permission` VALUES (68, '添加', '0', '/departmentsInfo/add', 'departments:info:add', '66');
INSERT INTO `permission` VALUES (69, '删除', '0', '/departmentsInfo/del', 'departments:info:del', '66');
INSERT INTO `permission` VALUES (70, '换届', '0', '/transition/*', 'departments:info:transition', '66');
INSERT INTO `permission` VALUES (71, '主席换届(校)', '0', '', 'departments:info:transition3', '66');
INSERT INTO `permission` VALUES (72, '主席换届(系)', '0', '', 'departments:info:transition2', '66');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record`  (
  `record_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `item_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品名称',
  `lend_time` datetime(0) NULL DEFAULT NULL COMMENT '借出时间',
  `me_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借物人',
  `me_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '借物人ID',
  `is_return` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '是否归还 0否 1是',
  `number` int(10) NULL DEFAULT NULL COMMENT '数量',
  `department` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门',
  `item_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '物品ID',
  PRIMARY KEY (`record_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('2df58cec8aee4c6984591f1f05e9e380', '11111', '2022-05-18 20:32:15', '赖帮琼', '2020050005', '1', 2, '体育部', '79a8d5b48024444ebfbaec01a8ce65a2');
INSERT INTO `record` VALUES ('4ee4be25a51c4c1ead444f34587095b7', '测试123', '2022-05-23 11:08:29', '车伟娜', '2020050002', '1', 10, '体育部', '32f8e4a3aa5a4c41a87df784a548995f');
INSERT INTO `record` VALUES ('50eaa5075645466a97dbeeb4888eb2fb', '测试物品', '2022-03-13 16:16:02', '张三', '2020050067', '1', 5, '1', 'c8d287c5706c4cea969cd7a448ed149d');
INSERT INTO `record` VALUES ('6a0d4784b5424413870af49c9f08a490', '测试物品2', '2022-03-14 22:35:43', '韩信', '2020050079', '1', 1, '学习部', '5cb83da0cd4b4eab89aaea26264f802b');
INSERT INTO `record` VALUES ('c32e4b0f4e5c4bc58f11965ef420b3c4', '测试物品2', '2022-05-01 16:28:50', '冀利尧', '2020050001', '1', 2, '体育部', '5cb83da0cd4b4eab89aaea26264f802b');
INSERT INTO `record` VALUES ('cf44eed369824a77907bb0497ef7402a', '测试物品2', '2022-05-01 16:33:47', '刘波', '2020050007', '1', 5, '学习部', '5cb83da0cd4b4eab89aaea26264f802b');
INSERT INTO `record` VALUES ('ff576ad4fb78474d9e1b06976b9ecbe7', '测试物品2', '2022-03-13 16:12:10', '刘备', '2020050448', '1', 2, '1', '5cb83da0cd4b4eab89aaea26264f802b');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'admin', '管理员');
INSERT INTO `role` VALUES (2, 'chairman', '主席');
INSERT INTO `role` VALUES (3, 'minister', '部长');
INSERT INTO `role` VALUES (4, 'member', '成员');
INSERT INTO `role` VALUES (5, 'warehouse', '物品管理员');
INSERT INTO `role` VALUES (6, 'vice-chairman', '副主席');

-- ----------------------------
-- Table structure for role_per
-- ----------------------------
DROP TABLE IF EXISTS `role_per`;
CREATE TABLE `role_per`  (
  `role_id` int(2) NOT NULL COMMENT '角色ID',
  `fun_id` int(2) NOT NULL COMMENT '功能ID',
  PRIMARY KEY (`role_id`, `fun_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role_per
-- ----------------------------
INSERT INTO `role_per` VALUES (1, 1);
INSERT INTO `role_per` VALUES (1, 2);
INSERT INTO `role_per` VALUES (1, 3);
INSERT INTO `role_per` VALUES (1, 4);
INSERT INTO `role_per` VALUES (1, 5);
INSERT INTO `role_per` VALUES (1, 6);
INSERT INTO `role_per` VALUES (1, 7);
INSERT INTO `role_per` VALUES (1, 8);
INSERT INTO `role_per` VALUES (1, 9);
INSERT INTO `role_per` VALUES (1, 10);
INSERT INTO `role_per` VALUES (1, 11);
INSERT INTO `role_per` VALUES (1, 12);
INSERT INTO `role_per` VALUES (1, 13);
INSERT INTO `role_per` VALUES (1, 14);
INSERT INTO `role_per` VALUES (1, 15);
INSERT INTO `role_per` VALUES (1, 16);
INSERT INTO `role_per` VALUES (1, 17);
INSERT INTO `role_per` VALUES (1, 18);
INSERT INTO `role_per` VALUES (1, 19);
INSERT INTO `role_per` VALUES (1, 20);
INSERT INTO `role_per` VALUES (1, 21);
INSERT INTO `role_per` VALUES (1, 22);
INSERT INTO `role_per` VALUES (1, 23);
INSERT INTO `role_per` VALUES (1, 24);
INSERT INTO `role_per` VALUES (1, 25);
INSERT INTO `role_per` VALUES (1, 26);
INSERT INTO `role_per` VALUES (1, 27);
INSERT INTO `role_per` VALUES (1, 28);
INSERT INTO `role_per` VALUES (1, 29);
INSERT INTO `role_per` VALUES (1, 30);
INSERT INTO `role_per` VALUES (1, 31);
INSERT INTO `role_per` VALUES (1, 32);
INSERT INTO `role_per` VALUES (1, 33);
INSERT INTO `role_per` VALUES (1, 34);
INSERT INTO `role_per` VALUES (1, 35);
INSERT INTO `role_per` VALUES (1, 36);
INSERT INTO `role_per` VALUES (1, 37);
INSERT INTO `role_per` VALUES (1, 38);
INSERT INTO `role_per` VALUES (1, 39);
INSERT INTO `role_per` VALUES (1, 40);
INSERT INTO `role_per` VALUES (1, 41);
INSERT INTO `role_per` VALUES (1, 42);
INSERT INTO `role_per` VALUES (1, 43);
INSERT INTO `role_per` VALUES (1, 44);
INSERT INTO `role_per` VALUES (1, 45);
INSERT INTO `role_per` VALUES (1, 46);
INSERT INTO `role_per` VALUES (1, 47);
INSERT INTO `role_per` VALUES (1, 48);
INSERT INTO `role_per` VALUES (1, 49);
INSERT INTO `role_per` VALUES (1, 50);
INSERT INTO `role_per` VALUES (1, 51);
INSERT INTO `role_per` VALUES (1, 52);
INSERT INTO `role_per` VALUES (1, 53);
INSERT INTO `role_per` VALUES (1, 54);
INSERT INTO `role_per` VALUES (1, 56);
INSERT INTO `role_per` VALUES (1, 57);
INSERT INTO `role_per` VALUES (1, 58);
INSERT INTO `role_per` VALUES (1, 59);
INSERT INTO `role_per` VALUES (1, 60);
INSERT INTO `role_per` VALUES (1, 61);
INSERT INTO `role_per` VALUES (1, 62);
INSERT INTO `role_per` VALUES (1, 63);
INSERT INTO `role_per` VALUES (1, 64);
INSERT INTO `role_per` VALUES (1, 65);
INSERT INTO `role_per` VALUES (2, 1);
INSERT INTO `role_per` VALUES (2, 2);
INSERT INTO `role_per` VALUES (2, 5);
INSERT INTO `role_per` VALUES (2, 6);
INSERT INTO `role_per` VALUES (2, 16);
INSERT INTO `role_per` VALUES (2, 18);
INSERT INTO `role_per` VALUES (2, 19);
INSERT INTO `role_per` VALUES (2, 20);
INSERT INTO `role_per` VALUES (2, 21);
INSERT INTO `role_per` VALUES (2, 22);
INSERT INTO `role_per` VALUES (2, 23);
INSERT INTO `role_per` VALUES (2, 24);
INSERT INTO `role_per` VALUES (2, 25);
INSERT INTO `role_per` VALUES (2, 26);
INSERT INTO `role_per` VALUES (2, 28);
INSERT INTO `role_per` VALUES (2, 30);
INSERT INTO `role_per` VALUES (2, 31);
INSERT INTO `role_per` VALUES (2, 32);
INSERT INTO `role_per` VALUES (2, 33);
INSERT INTO `role_per` VALUES (2, 34);
INSERT INTO `role_per` VALUES (2, 35);
INSERT INTO `role_per` VALUES (2, 36);
INSERT INTO `role_per` VALUES (2, 37);
INSERT INTO `role_per` VALUES (2, 38);
INSERT INTO `role_per` VALUES (2, 39);
INSERT INTO `role_per` VALUES (2, 40);
INSERT INTO `role_per` VALUES (2, 41);
INSERT INTO `role_per` VALUES (2, 42);
INSERT INTO `role_per` VALUES (2, 49);
INSERT INTO `role_per` VALUES (2, 50);
INSERT INTO `role_per` VALUES (2, 51);
INSERT INTO `role_per` VALUES (2, 52);
INSERT INTO `role_per` VALUES (2, 53);
INSERT INTO `role_per` VALUES (2, 54);
INSERT INTO `role_per` VALUES (2, 55);
INSERT INTO `role_per` VALUES (2, 56);
INSERT INTO `role_per` VALUES (2, 59);
INSERT INTO `role_per` VALUES (2, 60);
INSERT INTO `role_per` VALUES (2, 61);
INSERT INTO `role_per` VALUES (2, 62);
INSERT INTO `role_per` VALUES (2, 63);
INSERT INTO `role_per` VALUES (2, 64);
INSERT INTO `role_per` VALUES (2, 65);
INSERT INTO `role_per` VALUES (2, 66);
INSERT INTO `role_per` VALUES (2, 67);
INSERT INTO `role_per` VALUES (2, 68);
INSERT INTO `role_per` VALUES (2, 69);
INSERT INTO `role_per` VALUES (2, 71);
INSERT INTO `role_per` VALUES (3, 19);
INSERT INTO `role_per` VALUES (3, 20);
INSERT INTO `role_per` VALUES (3, 21);
INSERT INTO `role_per` VALUES (3, 22);
INSERT INTO `role_per` VALUES (3, 23);
INSERT INTO `role_per` VALUES (3, 24);
INSERT INTO `role_per` VALUES (3, 25);
INSERT INTO `role_per` VALUES (3, 26);
INSERT INTO `role_per` VALUES (3, 34);
INSERT INTO `role_per` VALUES (3, 35);
INSERT INTO `role_per` VALUES (3, 36);
INSERT INTO `role_per` VALUES (3, 37);
INSERT INTO `role_per` VALUES (3, 38);
INSERT INTO `role_per` VALUES (3, 39);
INSERT INTO `role_per` VALUES (3, 42);
INSERT INTO `role_per` VALUES (3, 49);
INSERT INTO `role_per` VALUES (3, 50);
INSERT INTO `role_per` VALUES (3, 51);
INSERT INTO `role_per` VALUES (3, 52);
INSERT INTO `role_per` VALUES (3, 53);
INSERT INTO `role_per` VALUES (3, 54);
INSERT INTO `role_per` VALUES (3, 61);
INSERT INTO `role_per` VALUES (3, 62);
INSERT INTO `role_per` VALUES (3, 63);
INSERT INTO `role_per` VALUES (3, 64);
INSERT INTO `role_per` VALUES (3, 65);
INSERT INTO `role_per` VALUES (3, 66);
INSERT INTO `role_per` VALUES (3, 67);
INSERT INTO `role_per` VALUES (3, 68);
INSERT INTO `role_per` VALUES (3, 69);
INSERT INTO `role_per` VALUES (3, 70);
INSERT INTO `role_per` VALUES (4, 19);
INSERT INTO `role_per` VALUES (4, 20);
INSERT INTO `role_per` VALUES (4, 22);
INSERT INTO `role_per` VALUES (4, 34);
INSERT INTO `role_per` VALUES (4, 35);
INSERT INTO `role_per` VALUES (4, 36);
INSERT INTO `role_per` VALUES (4, 52);
INSERT INTO `role_per` VALUES (4, 53);
INSERT INTO `role_per` VALUES (4, 54);
INSERT INTO `role_per` VALUES (4, 61);
INSERT INTO `role_per` VALUES (4, 63);
INSERT INTO `role_per` VALUES (4, 66);
INSERT INTO `role_per` VALUES (4, 67);
INSERT INTO `role_per` VALUES (5, 23);
INSERT INTO `role_per` VALUES (5, 24);
INSERT INTO `role_per` VALUES (5, 25);
INSERT INTO `role_per` VALUES (5, 43);
INSERT INTO `role_per` VALUES (5, 44);
INSERT INTO `role_per` VALUES (5, 45);
INSERT INTO `role_per` VALUES (5, 46);
INSERT INTO `role_per` VALUES (5, 47);
INSERT INTO `role_per` VALUES (5, 48);
INSERT INTO `role_per` VALUES (5, 64);
INSERT INTO `role_per` VALUES (5, 65);
INSERT INTO `role_per` VALUES (6, 19);
INSERT INTO `role_per` VALUES (6, 20);
INSERT INTO `role_per` VALUES (6, 21);
INSERT INTO `role_per` VALUES (6, 22);
INSERT INTO `role_per` VALUES (6, 23);
INSERT INTO `role_per` VALUES (6, 24);
INSERT INTO `role_per` VALUES (6, 25);
INSERT INTO `role_per` VALUES (6, 26);
INSERT INTO `role_per` VALUES (6, 34);
INSERT INTO `role_per` VALUES (6, 35);
INSERT INTO `role_per` VALUES (6, 36);
INSERT INTO `role_per` VALUES (6, 37);
INSERT INTO `role_per` VALUES (6, 38);
INSERT INTO `role_per` VALUES (6, 39);
INSERT INTO `role_per` VALUES (6, 40);
INSERT INTO `role_per` VALUES (6, 41);
INSERT INTO `role_per` VALUES (6, 42);
INSERT INTO `role_per` VALUES (6, 49);
INSERT INTO `role_per` VALUES (6, 50);
INSERT INTO `role_per` VALUES (6, 51);
INSERT INTO `role_per` VALUES (6, 52);
INSERT INTO `role_per` VALUES (6, 53);
INSERT INTO `role_per` VALUES (6, 54);
INSERT INTO `role_per` VALUES (6, 55);
INSERT INTO `role_per` VALUES (6, 61);
INSERT INTO `role_per` VALUES (6, 62);
INSERT INTO `role_per` VALUES (6, 63);
INSERT INTO `role_per` VALUES (6, 64);
INSERT INTO `role_per` VALUES (6, 65);
INSERT INTO `role_per` VALUES (6, 66);
INSERT INTO `role_per` VALUES (6, 67);
INSERT INTO `role_per` VALUES (6, 70);
INSERT INTO `role_per` VALUES (6, 72);
INSERT INTO `role_per` VALUES (7, 1);
INSERT INTO `role_per` VALUES (7, 2);
INSERT INTO `role_per` VALUES (7, 3);
INSERT INTO `role_per` VALUES (7, 4);
INSERT INTO `role_per` VALUES (7, 5);
INSERT INTO `role_per` VALUES (7, 6);
INSERT INTO `role_per` VALUES (7, 7);
INSERT INTO `role_per` VALUES (7, 8);
INSERT INTO `role_per` VALUES (7, 9);
INSERT INTO `role_per` VALUES (7, 10);
INSERT INTO `role_per` VALUES (7, 11);
INSERT INTO `role_per` VALUES (7, 12);
INSERT INTO `role_per` VALUES (7, 13);
INSERT INTO `role_per` VALUES (7, 14);
INSERT INTO `role_per` VALUES (7, 15);
INSERT INTO `role_per` VALUES (7, 16);
INSERT INTO `role_per` VALUES (7, 17);
INSERT INTO `role_per` VALUES (7, 18);
INSERT INTO `role_per` VALUES (7, 27);
INSERT INTO `role_per` VALUES (7, 28);
INSERT INTO `role_per` VALUES (7, 29);
INSERT INTO `role_per` VALUES (7, 30);
INSERT INTO `role_per` VALUES (7, 31);
INSERT INTO `role_per` VALUES (7, 32);
INSERT INTO `role_per` VALUES (7, 33);
INSERT INTO `role_per` VALUES (7, 56);
INSERT INTO `role_per` VALUES (7, 57);
INSERT INTO `role_per` VALUES (7, 58);
INSERT INTO `role_per` VALUES (7, 59);
INSERT INTO `role_per` VALUES (7, 60);

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work`  (
  `work_id` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `work_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计划名称',
  `work_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '计划内容',
  `submit_time` date NULL DEFAULT NULL COMMENT '提交时间',
  `me_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提交人',
  `me_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '提交人ID',
  PRIMARY KEY (`work_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of work
-- ----------------------------
INSERT INTO `work` VALUES ('18a08785e6d048f2aed5002b8ee7df82', '部长测试计划', '部长测试计划            ', '2022-03-15', '刘备', '2020050448');
INSERT INTO `work` VALUES ('2517af41b19e4713b11d2f64645a3a67', '5-1假期安排', '      5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排5-1假期安排      ', '2022-05-01', '管理员', '10011');
INSERT INTO `work` VALUES ('2b8035b883b34f7ea8befabfa79d5ba6', '部长测试', '部长测试', '2022-03-15', '韩信', '2020050079');
INSERT INTO `work` VALUES ('330ea775035345b790ef8f86e0a79ff7', '成员测试计划', ' 成员测试计划     ', '2022-03-15', '曹操', '2020050067');
INSERT INTO `work` VALUES ('66879fd9f2674ef3be00aeb4c4a7668a', '测试计划2', '           阿斯弗阿斯顿阿萨阿斯顿阿斯顿撒旦安抚撒af阿斯弗asdf  阿斯顿发顺丰asd', '2022-03-10', '张良', '2020050447');
INSERT INTO `work` VALUES ('a101bfea80ac4c0aa3119c4f11278e4a', '成员测试计划', '            成员测试计划', '2022-03-15', NULL, NULL);
INSERT INTO `work` VALUES ('beffd814d3d74dcca0562cc589275768', '测试计划', '            ask的肌肤看拉萨酱豆腐看来撒娇的卢卡斯京东方绿卡就是了会计分录凯撒角度来看吉萨独立开发就', '2022-03-10', '张良', '2020050447');
INSERT INTO `work` VALUES ('d342fcf4eba94e35a823eb2f06a5c037', '测试计划3', '测试计划3', '2022-03-15', '张良', '2020050447');

SET FOREIGN_KEY_CHECKS = 1;
