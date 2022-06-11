# StudentUnionManagementSystem

#### 介绍
学生会管理系统
SpringBoot
Mybatis-plus
shiro
layui

#### 软件架构
软件架构说明
```
.
├─log
│      
├─src
│  ├─main
│  │  ├─java
│  │  │  └─com
│  │  │      └─sums
│  │  │          │  
│  │  │          ├─annotations
│  │  │          │      
│  │  │          ├─aspect
│  │  │          │      
│  │  │          ├─config
│  │  │          │      
│  │  │          ├─controller
│  │  │          │      
│  │  │          ├─dao
│  │  │          │      
│  │  │          ├─entity
│  │  │          │      
│  │  │          ├─service
│  │  │          │  │  
│  │  │          │  ├─factory
│  │  │          │  │      
│  │  │          │  ├─impl
│  │  │          │  │      
│  │  │          │  └─roles
│  │  │          │      │  
│  │  │          │      └─impl
│  │  │          │              
│  │  │          ├─shiro
│  │  │          │      
│  │  │          └─utils
│  │  │                  
│  │  └─resources
│  │      │  application-dev.yml
│  │      │  application.yml
│  │      │  banner.txt
│  │      │  
│  │      ├─mappers
│  │      │      
│  │      ├─static
│  │      │  ├─css
│  │      │  │      style.css
│  │      │  │      
│  │      │  ├─editormd
│  │      │  │       
│  │      │  ├─file
│  │      │  │      
│  │      │  ├─font-awesome
│  │      │  │          
│  │      │  ├─imgs
│  │      │  │      
│  │      │  ├─js
│  │      │  │      
│  │      │  ├─layui
│  │      │  │          
│  │      │  ├─layui-formSelects
│  │      │  │      
│  │      │  └─treetable-lay
│  │      │          
│  │      └─templates
│  │          │  activityDetails.html
│  │          │  homepage.html
│  │          │  _fragments.html
│  │          │  
│  │          ├─error
│  │          │      4xx.html
│  │          │      
│  │          ├─studentUnion
│  │          │      ****.html
│  │          │      
.
```

#### 安装教程

1.  xxxx
2.  xxxx
3.  xxxx

#### 使用说明

在application-dev.yml文件配置文件的保存路径、预览文件依赖的启动路径和数据库访问路径及数据库账号、数据库密码。
完成后进入src/main/java/com/sums/中，运行SumsApplication类。
系统访问
系统启动成功后后自动打开`http://localhost:8088/sums/loginView`，这是学生会成员的登录入口。如图16。
![输入图片说明](https://images.gitee.com/uploads/images/2022/0611/215318_45504b29_9173820.png "图片1.png")
输入账号密码 10011/123456点击登录，进入系统页面。如图17。
![输入图片说明](https://images.gitee.com/uploads/images/2022/0611/215356_7f6571b8_9173820.png "图片2.png")
首页中展示的内容分为三个部分，最新的活动、公共及部门介绍。点击活动图片可以进入到活动详情页面。
以下是部分功能页面截图。

![输入图片说明](https://images.gitee.com/uploads/images/2022/0611/215610_04479a0c_9173820.png "图片3.png")
在图18这个页面中，顶部是对成员的查询条件，输入想要查询的成员信息点击查询。每个成员信息都有两个操作，一个是删除按钮，另一个是角色分配，点击角色分配弹出所有的系统角色选中想要分配的角色点击确定。
![输入图片说明](https://images.gitee.com/uploads/images/2022/0611/215623_15ee2456_9173820.png "图片4.png")
在图19这个页面中，可以增加、删除、编辑系统角色。最重要的是可以给角色分配具体的功能有哪些。点击功能分配弹出可以选择的功能，选中想要分配的功能点击确定即可。
![输入图片说明](https://images.gitee.com/uploads/images/2022/0611/215634_7b6cee8b_9173820.png "图片5.png")
在图20页面是对系统所有功能的管理，点击上面的添加按钮可以增加一个根菜单，点击已有菜单后面的新建按钮可以在对应的菜单增加它的子菜单或具体的功能。点击修改可以修改菜单或功能的信息。点击删除可以删除菜单下的所有内容，也可以删除具体的某个功能。
![输入图片说明](https://images.gitee.com/uploads/images/2022/0611/215646_5445f4de_9173820.png "图片6.png")
在图21页面是对活动信息的管理，管理员在这个页面发布活动，直接是通过的状态，也可以审核主席提交上了的活动信息。主席在这个页面可以发布活动，也可以审核副主席提交上了的活动信息。副主席在这个页面可以发布活动，也可以审核部长提交上了的活动信息。活动通过后，发布活动的用户可以设置活动的宣传图和报名截止时间。
![输入图片说明](https://images.gitee.com/uploads/images/2022/0611/215659_36f7e5d4_9173820.png "图片7.png")
在图22页面是对文件信息的管理，管理员在这个页面上传文件，可以选择主席、副主席、所有角色可以看到文件信息，也能看到主席上传的文件。主席在这个页面上传文件，可以选择哪些角色可以看到文件信息，默认是管理可见。副主席在这个页面上传文件，可以选择部长角色可以看到文件信息，默认是主席可见。部长在这个页面上传文件，可以选择部门成员可以看到文件信息，默认是副主席可见。
非学生会成员和学生会成员都能访问http://localhost:8088/open/可以浏览学生会举办活动的列表。如图23。
![输入图片说明](https://images.gitee.com/uploads/images/2022/0611/215719_5ced4558_9173820.png "图片8.png")
在活动列表页面点击活动名称可以进入活动详情页面如图23，在这个页面可以浏览活动的举办时间、地点，也可以点击报名按钮进行报名。
![输入图片说明](https://images.gitee.com/uploads/images/2022/0611/215730_a1e8d3ba_9173820.png "图片9.png")


