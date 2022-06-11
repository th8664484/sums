# StudentUnionManagementSystem

#### 介绍
学生会管理系统
SpringBoot
Mybatis-plus
shiro
layui

#### 软件架构
软件架构说明
卷 软件 的文件夹 PATH 列表
卷序列号为 DA00-FF47
D:.
│  list.txt
│  mvnw
│  pom.xml
│  sums.iml
│  
├─.gradle
│  ├─6.7
│  │  │  gc.properties
│  │  │  
│  │  ├─fileChanges
│  │  │      last-build.bin
│  │  │      
│  │  ├─fileHashes
│  │  │      fileHashes.lock
│  │  │      
│  │  └─vcsMetadata-1
│  ├─buildOutputCleanup
│  │      buildOutputCleanup.lock
│  │      cache.properties
│  │      
│  ├─checksums
│  │      checksums.lock
│  │      
│  ├─configuration-cache
│  │      gc.properties
│  │      
│  └─vcs-1
│          gc.properties
│          
├─.idea
│  │  .gitignore
│  │  compiler.xml
│  │  encodings.xml
│  │  jarRepositories.xml
│  │  misc.xml
│  │  modules.xml
│  │  uiDesigner.xml
│  │  vcs.xml
│  │  workspace.xml
│  │  
│  ├─inspectionProfiles
│  │      Project_Default.xml
│  │      
│  └─libraries
│          Maven__ch_qos_logback_logback_classic_1_2_3.xml
│          Maven__ch_qos_logback_logback_core_1_2_3.xml
│          Maven__cn_hutool_hutool_all_5_7_22.xml
│          Maven__commons_beanutils_commons_beanutils_1_9_4.xml
│          Maven__commons_collections_commons_collections_3_2_2.xml
│          Maven__com_alibaba_druid_1_1_22.xml
│          Maven__com_alibaba_druid_spring_boot_starter_1_1_22.xml
│          Maven__com_alibaba_fastjson_1_2_73.xml
│          Maven__com_atlassian_commonmark_commonmark_0_12_1.xml
│          Maven__com_atlassian_commonmark_commonmark_ext_gfm_tables_0_12_1.xml
│          Maven__com_atlassian_commonmark_commonmark_ext_heading_anchor_0_12_1.xml
│          Maven__com_baomidou_mybatis_plus_3_5_1.xml
│          Maven__com_baomidou_mybatis_plus_annotation_3_5_1.xml
│          Maven__com_baomidou_mybatis_plus_boot_starter_3_5_1.xml
│          Maven__com_baomidou_mybatis_plus_core_3_5_1.xml
│          Maven__com_baomidou_mybatis_plus_extension_3_5_1.xml
│          Maven__com_baomidou_mybatis_plus_generator_3_5_1.xml
│          Maven__com_fasterxml_jackson_core_jackson_annotations_2_11_0.xml
│          Maven__com_fasterxml_jackson_core_jackson_core_2_11_0.xml
│          Maven__com_fasterxml_jackson_core_jackson_databind_2_11_0.xml
│          Maven__com_fasterxml_jackson_datatype_jackson_datatype_jdk8_2_11_0.xml
│          Maven__com_fasterxml_jackson_datatype_jackson_datatype_jsr310_2_11_0.xml
│          Maven__com_fasterxml_jackson_module_jackson_module_parameter_names_2_11_0.xml
│          Maven__com_github_jsqlparser_jsqlparser_4_3.xml
│          Maven__com_github_theborakompanioni_thymeleaf_extras_shiro_2_0_0.xml
│          Maven__com_jayway_jsonpath_json_path_2_4_0.xml
│          Maven__com_vaadin_external_google_android_json_0_0_20131108_vaadin1.xml
│          Maven__com_zaxxer_HikariCP_3_4_5.xml
│          Maven__io_lettuce_lettuce_core_5_3_0_RELEASE.xml
│          Maven__io_netty_netty_buffer_4_1_49_Final.xml
│          Maven__io_netty_netty_codec_4_1_49_Final.xml
│          Maven__io_netty_netty_common_4_1_49_Final.xml
│          Maven__io_netty_netty_handler_4_1_49_Final.xml
│          Maven__io_netty_netty_resolver_4_1_49_Final.xml
│          Maven__io_netty_netty_transport_4_1_49_Final.xml
│          Maven__io_projectreactor_reactor_core_3_3_5_RELEASE.xml
│          Maven__jakarta_activation_jakarta_activation_api_1_2_2.xml
│          Maven__jakarta_annotation_jakarta_annotation_api_1_3_5.xml
│          Maven__jakarta_xml_bind_jakarta_xml_bind_api_2_3_3.xml
│          Maven__junit_junit_4_13.xml
│          Maven__mysql_mysql_connector_java_8_0_20.xml
│          Maven__net_bytebuddy_byte_buddy_1_10_10.xml
│          Maven__net_bytebuddy_byte_buddy_agent_1_10_10.xml
│          Maven__net_minidev_accessors_smart_1_2.xml
│          Maven__net_minidev_json_smart_2_3.xml
│          Maven__net_sf_ehcache_ehcache_core_2_6_11.xml
│          Maven__org_apache_logging_log4j_log4j_api_2_13_2.xml
│          Maven__org_apache_logging_log4j_log4j_to_slf4j_2_13_2.xml
│          Maven__org_apache_shiro_shiro_cache_1_8_0.xml
│          Maven__org_apache_shiro_shiro_config_core_1_8_0.xml
│          Maven__org_apache_shiro_shiro_config_ogdl_1_8_0.xml
│          Maven__org_apache_shiro_shiro_core_1_8_0.xml
│          Maven__org_apache_shiro_shiro_crypto_cipher_1_8_0.xml
│          Maven__org_apache_shiro_shiro_crypto_core_1_8_0.xml
│          Maven__org_apache_shiro_shiro_crypto_hash_1_8_0.xml
│          Maven__org_apache_shiro_shiro_ehcache_1_8_0.xml
│          Maven__org_apache_shiro_shiro_event_1_8_0.xml
│          Maven__org_apache_shiro_shiro_lang_1_8_0.xml
│          Maven__org_apache_shiro_shiro_spring_1_8_0.xml
│          Maven__org_apache_shiro_shiro_spring_boot_starter_1_8_0.xml
│          Maven__org_apache_shiro_shiro_web_1_8_0.xml
│          Maven__org_apache_tomcat_embed_tomcat_embed_core_9_0_35.xml
│          Maven__org_apache_tomcat_embed_tomcat_embed_websocket_9_0_35.xml
│          Maven__org_apiguardian_apiguardian_api_1_1_0.xml
│          Maven__org_aspectj_aspectjweaver_1_9_5.xml
│          Maven__org_assertj_assertj_core_3_16_1.xml
│          Maven__org_attoparser_attoparser_2_0_5_RELEASE.xml
│          Maven__org_freemarker_freemarker_2_3_30.xml
│          Maven__org_glassfish_jakarta_el_3_0_3.xml
│          Maven__org_hamcrest_hamcrest_2_2.xml
│          Maven__org_junit_jupiter_junit_jupiter_5_6_2.xml
│          Maven__org_junit_jupiter_junit_jupiter_api_5_6_2.xml
│          Maven__org_junit_jupiter_junit_jupiter_engine_5_6_2.xml
│          Maven__org_junit_jupiter_junit_jupiter_params_5_6_2.xml
│          Maven__org_junit_platform_junit_platform_commons_1_6_2.xml
│          Maven__org_junit_platform_junit_platform_engine_1_6_2.xml
│          Maven__org_junit_vintage_junit_vintage_engine_5_6_2.xml
│          Maven__org_mockito_mockito_core_3_3_3.xml
│          Maven__org_mockito_mockito_junit_jupiter_3_3_3.xml
│          Maven__org_mybatis_mybatis_3_5_9.xml
│          Maven__org_mybatis_mybatis_spring_2_0_6.xml
│          Maven__org_objenesis_objenesis_2_6.xml
│          Maven__org_opentest4j_opentest4j_1_2_0.xml
│          Maven__org_ow2_asm_asm_5_0_4.xml
│          Maven__org_owasp_encoder_encoder_1_2_2.xml
│          Maven__org_projectlombok_lombok_1_18_12.xml
│          Maven__org_reactivestreams_reactive_streams_1_0_3.xml
│          Maven__org_skyscreamer_jsonassert_1_5_0.xml
│          Maven__org_slf4j_jul_to_slf4j_1_7_30.xml
│          Maven__org_slf4j_slf4j_api_1_7_30.xml
│          Maven__org_springframework_boot_spring_boot_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_autoconfigure_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_devtools_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_starter_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_starter_aop_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_starter_data_redis_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_starter_jdbc_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_starter_json_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_starter_logging_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_starter_test_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_starter_thymeleaf_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_starter_tomcat_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_starter_web_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_test_2_3_0_RELEASE.xml
│          Maven__org_springframework_boot_spring_boot_test_autoconfigure_2_3_0_RELEASE.xml
│          Maven__org_springframework_data_spring_data_commons_2_3_0_RELEASE.xml
│          Maven__org_springframework_data_spring_data_keyvalue_2_3_0_RELEASE.xml
│          Maven__org_springframework_data_spring_data_redis_2_3_0_RELEASE.xml
│          Maven__org_springframework_spring_aop_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_beans_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_context_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_context_support_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_core_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_expression_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_jcl_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_jdbc_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_oxm_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_test_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_tx_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_webmvc_5_2_6_RELEASE.xml
│          Maven__org_springframework_spring_web_5_2_6_RELEASE.xml
│          Maven__org_thymeleaf_extras_thymeleaf_extras_java8time_3_0_4_RELEASE.xml
│          Maven__org_thymeleaf_thymeleaf_3_0_11_RELEASE.xml
│          Maven__org_thymeleaf_thymeleaf_spring5_3_0_11_RELEASE.xml
│          Maven__org_unbescape_unbescape_1_1_6_RELEASE.xml
│          Maven__org_xmlunit_xmlunit_core_2_7_0.xml
│          Maven__org_yaml_snakeyaml_1_26.xml
│          
├─log
│      a1.puml
│      activity.puml
│      addactivity.puml
│      all.puml
│      entitly.puml
│      factory.puml
│      fiels.puml
│      member.puml
│      rolebyfun.puml
│      sums-dev.log
│      sums-dev.log.2022-05-18.0.gz
│      sums-dev.log.2022-05-19.0.gz
│      sums-dev.log.2022-05-20.0.gz
│      sums-dev.log.2022-05-21.0.gz
│      sums-dev.log.2022-05-22.0.gz
│      text.puml
│      use1.puml
│      use2.puml
│      
├─src
│  ├─main
│  │  ├─java
│  │  │  └─com
│  │  │      └─sums
│  │  │          │  SumsApplication.java
│  │  │          │  
│  │  │          ├─annotations
│  │  │          │      PermissionVerify.java
│  │  │          │      
│  │  │          ├─aspect
│  │  │          │      LogAspect.java
│  │  │          │      ShiroAuthenticationAspect.java
│  │  │          │      
│  │  │          ├─config
│  │  │          │      MyApplicationRunner.java
│  │  │          │      MybatisPlusConfig.java
│  │  │          │      OpenBrowser.java
│  │  │          │      ShiroConfig.java
│  │  │          │      UploadFileConfig.java
│  │  │          │      UploadFilePathConfig.java
│  │  │          │      WebMvcConfig.java
│  │  │          │      
│  │  │          ├─controller
│  │  │          │      ActivityController.java
│  │  │          │      AnnouncementController.java
│  │  │          │      DepartmentController.java
│  │  │          │      DepartmentsInfoController.java
│  │  │          │      FilesController.java
│  │  │          │      HomeController.java
│  │  │          │      IndexController.java
│  │  │          │      ItemsController.java
│  │  │          │      LoginController.java
│  │  │          │      LogoutController.java
│  │  │          │      MemberController.java
│  │  │          │      MessageController.java
│  │  │          │      OpenController.java
│  │  │          │      PermissionController.java
│  │  │          │      PersonalInfoController.java
│  │  │          │      RecordController.java
│  │  │          │      RoleController.java
│  │  │          │      Test.java
│  │  │          │      WorkController.java
│  │  │          │      
│  │  │          ├─dao
│  │  │          │      ActivityMapper.java
│  │  │          │      AnnouncementMapper.java
│  │  │          │      DepartmentMapper.java
│  │  │          │      EnrollmentMapper.java
│  │  │          │      FilesMapper.java
│  │  │          │      ItemsMapper.java
│  │  │          │      MemberMapper.java
│  │  │          │      MessageMapper.java
│  │  │          │      MsgSinkMapper.java
│  │  │          │      PermissionMapper.java
│  │  │          │      RecordMapper.java
│  │  │          │      RoleMapper.java
│  │  │          │      WorkMapper.java
│  │  │          │      
│  │  │          ├─entity
│  │  │          │      Activity.java
│  │  │          │      Announcement.java
│  │  │          │      Department.java
│  │  │          │      Enrollment.java
│  │  │          │      Files.java
│  │  │          │      Items.java
│  │  │          │      Member.java
│  │  │          │      Message.java
│  │  │          │      MsgSink.java
│  │  │          │      Permission.java
│  │  │          │      Record.java
│  │  │          │      ReturnLinkage.java
│  │  │          │      ReturnResult.java
│  │  │          │      Role.java
│  │  │          │      Work.java
│  │  │          │      
│  │  │          ├─service
│  │  │          │  │  ActivityService.java
│  │  │          │  │  AnnouncementService.java
│  │  │          │  │  DepartmentService.java
│  │  │          │  │  EnrollmentService.java
│  │  │          │  │  FilesService.java
│  │  │          │  │  ItemsService.java
│  │  │          │  │  MemberService.java
│  │  │          │  │  MessageService.java
│  │  │          │  │  PermissionService.java
│  │  │          │  │  RecordService.java
│  │  │          │  │  RoleService.java
│  │  │          │  │  WorkService.java
│  │  │          │  │  
│  │  │          │  ├─factory
│  │  │          │  │      RoleFactory.java
│  │  │          │  │      RolesConfig.java
│  │  │          │  │      
│  │  │          │  ├─impl
│  │  │          │  │      ActivityServiceImpl.java
│  │  │          │  │      AnnouncementServiceImpl.java
│  │  │          │  │      DepartmentServiceImpl.java
│  │  │          │  │      EnrollmentServiceImpl.java
│  │  │          │  │      FilesServiceImpl.java
│  │  │          │  │      ItemsServiceImpl.java
│  │  │          │  │      MemberServiceImpl.java
│  │  │          │  │      MessageServiceImpl.java
│  │  │          │  │      PermissionServiceImpl.java
│  │  │          │  │      RecordServiceImpl.java
│  │  │          │  │      RoleServiceImpl.java
│  │  │          │  │      WorkServiceImpl.java
│  │  │          │  │      
│  │  │          │  └─roles
│  │  │          │      │  AdaptiveStrategyRoles.java
│  │  │          │      │  StrategyRoles.java
│  │  │          │      │  
│  │  │          │      └─impl
│  │  │          │              AdminRole.java
│  │  │          │              ChairmanRole.java
│  │  │          │              MemberRole.java
│  │  │          │              MinisterRole.java
│  │  │          │              ViceChairmanRole.java
│  │  │          │              
│  │  │          ├─shiro
│  │  │          │      CustomerRealm.java
│  │  │          │      MyByteSource.java
│  │  │          │      MySessionManager.java
│  │  │          │      RedisCache.java
│  │  │          │      RedisCacheManager.java
│  │  │          │      
│  │  │          └─utils
│  │  │                  ApplicationContextUtil.java
│  │  │                  CodeGenerator.java
│  │  │                  DepaNameUtil.java
│  │  │                  DownloadUtils.java
│  │  │                  LoginMemberUtils.java
│  │  │                  MarkdownUtil.java
│  │  │                  MyCacheUtils.java
│  │  │                  PageUtils.java
│  │  │                  RoleQuerWrapper.java
│  │  │                  SaltUtil.java
│  │  │                  VerifyCodeUtils.java
│  │  │                  
│  │  └─resources
│  │      │  application-dev.yml
│  │      │  application.yml
│  │      │  banner.txt
│  │      │  
│  │      ├─mappers
│  │      │      ActivityMapper.xml
│  │      │      AnnouncementMapper.xml
│  │      │      DepartmentMapper.xml
│  │      │      EnrollmentMapper.xml
│  │      │      FilesMapper.xml
│  │      │      ItemsMapper.xml
│  │      │      MemberMapper.xml
│  │      │      MessageMapper.xml
│  │      │      MsgSinkMapper.xml
│  │      │      PermissionMapper.xml
│  │      │      RecordMapper.xml
│  │      │      RoleMapper.xml
│  │      │      WorkMapper.xml
│  │      │      
│  │      ├─static
│  │      │  ├─css
│  │      │  │      style.css
│  │      │  │      
│  │      │  ├─editormd
│  │      │  │  │  editormd.js
│  │      │  │  │  editormd.min.js
│  │      │  │  │  
│  │      │  │  ├─css
│  │      │  │  │      editormd.css
│  │      │  │  │      editormd.logo.css
│  │      │  │  │      editormd.logo.min.css
│  │      │  │  │      editormd.min.css
│  │      │  │  │      editormd.preview.css
│  │      │  │  │      editormd.preview.min.css
│  │      │  │  │      
│  │      │  │  ├─fonts
│  │      │  │  │      editormd-logo.eot
│  │      │  │  │      editormd-logo.svg
│  │      │  │  │      editormd-logo.ttf
│  │      │  │  │      editormd-logo.woff
│  │      │  │  │      fontawesome-webfont.eot
│  │      │  │  │      fontawesome-webfont.svg
│  │      │  │  │      fontawesome-webfont.ttf
│  │      │  │  │      fontawesome-webfont.woff
│  │      │  │  │      fontawesome-webfont.woff2
│  │      │  │  │      FontAwesome.otf
│  │      │  │  │      
│  │      │  │  ├─images
│  │      │  │  │  │  loading.gif
│  │      │  │  │  │  loading@2x.gif
│  │      │  │  │  │  loading@3x.gif
│  │      │  │  │  │  
│  │      │  │  │  └─logos
│  │      │  │  │          editormd-favicon-16x16.ico
│  │      │  │  │          editormd-favicon-24x24.ico
│  │      │  │  │          editormd-favicon-32x32.ico
│  │      │  │  │          editormd-favicon-48x48.ico
│  │      │  │  │          editormd-favicon-64x64.ico
│  │      │  │  │          editormd-logo-114x114.png
│  │      │  │  │          editormd-logo-120x120.png
│  │      │  │  │          editormd-logo-144x144.png
│  │      │  │  │          editormd-logo-16x16.png
│  │      │  │  │          editormd-logo-180x180.png
│  │      │  │  │          editormd-logo-240x240.png
│  │      │  │  │          editormd-logo-24x24.png
│  │      │  │  │          editormd-logo-320x320.png
│  │      │  │  │          editormd-logo-32x32.png
│  │      │  │  │          editormd-logo-48x48.png
│  │      │  │  │          editormd-logo-57x57.png
│  │      │  │  │          editormd-logo-64x64.png
│  │      │  │  │          editormd-logo-72x72.png
│  │      │  │  │          editormd-logo-96x96.png
│  │      │  │  │          vi.png
│  │      │  │  │          
│  │      │  │  ├─languages
│  │      │  │  │      en.js
│  │      │  │  │      zh-tw.js
│  │      │  │  │      
│  │      │  │  ├─lib
│  │      │  │  │  │  flowchart.min.js
│  │      │  │  │  │  jquery.flowchart.min.js
│  │      │  │  │  │  marked.min.js
│  │      │  │  │  │  prettify.min.js
│  │      │  │  │  │  raphael.min.js
│  │      │  │  │  │  sequence-diagram.min.js
│  │      │  │  │  │  underscore.min.js
│  │      │  │  │  │  
│  │      │  │  │  └─codemirror
│  │      │  │  │      │  addons.min.js
│  │      │  │  │      │  AUTHORS
│  │      │  │  │      │  bower.json
│  │      │  │  │      │  codemirror.min.css
│  │      │  │  │      │  codemirror.min.js
│  │      │  │  │      │  LICENSE
│  │      │  │  │      │  modes.min.js
│  │      │  │  │      │  package.json
│  │      │  │  │      │  README.md
│  │      │  │  │      │  
│  │      │  │  │      ├─addon
│  │      │  │  │      │  ├─comment
│  │      │  │  │      │  │      comment.js
│  │      │  │  │      │  │      continuecomment.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─dialog
│  │      │  │  │      │  │      dialog.css
│  │      │  │  │      │  │      dialog.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─display
│  │      │  │  │      │  │      fullscreen.css
│  │      │  │  │      │  │      fullscreen.js
│  │      │  │  │      │  │      panel.js
│  │      │  │  │      │  │      placeholder.js
│  │      │  │  │      │  │      rulers.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─edit
│  │      │  │  │      │  │      closebrackets.js
│  │      │  │  │      │  │      closetag.js
│  │      │  │  │      │  │      continuelist.js
│  │      │  │  │      │  │      matchbrackets.js
│  │      │  │  │      │  │      matchtags.js
│  │      │  │  │      │  │      trailingspace.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─fold
│  │      │  │  │      │  │      brace-fold.js
│  │      │  │  │      │  │      comment-fold.js
│  │      │  │  │      │  │      foldcode.js
│  │      │  │  │      │  │      foldgutter.css
│  │      │  │  │      │  │      foldgutter.js
│  │      │  │  │      │  │      indent-fold.js
│  │      │  │  │      │  │      markdown-fold.js
│  │      │  │  │      │  │      xml-fold.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─hint
│  │      │  │  │      │  │      anyword-hint.js
│  │      │  │  │      │  │      css-hint.js
│  │      │  │  │      │  │      html-hint.js
│  │      │  │  │      │  │      javascript-hint.js
│  │      │  │  │      │  │      show-hint.css
│  │      │  │  │      │  │      show-hint.js
│  │      │  │  │      │  │      sql-hint.js
│  │      │  │  │      │  │      xml-hint.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─lint
│  │      │  │  │      │  │      coffeescript-lint.js
│  │      │  │  │      │  │      css-lint.js
│  │      │  │  │      │  │      javascript-lint.js
│  │      │  │  │      │  │      json-lint.js
│  │      │  │  │      │  │      lint.css
│  │      │  │  │      │  │      lint.js
│  │      │  │  │      │  │      yaml-lint.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─merge
│  │      │  │  │      │  │      merge.css
│  │      │  │  │      │  │      merge.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─mode
│  │      │  │  │      │  │      loadmode.js
│  │      │  │  │      │  │      multiplex.js
│  │      │  │  │      │  │      multiplex_test.js
│  │      │  │  │      │  │      overlay.js
│  │      │  │  │      │  │      simple.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─runmode
│  │      │  │  │      │  │      colorize.js
│  │      │  │  │      │  │      runmode-standalone.js
│  │      │  │  │      │  │      runmode.js
│  │      │  │  │      │  │      runmode.node.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─scroll
│  │      │  │  │      │  │      annotatescrollbar.js
│  │      │  │  │      │  │      scrollpastend.js
│  │      │  │  │      │  │      simplescrollbars.css
│  │      │  │  │      │  │      simplescrollbars.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─search
│  │      │  │  │      │  │      match-highlighter.js
│  │      │  │  │      │  │      matchesonscrollbar.css
│  │      │  │  │      │  │      matchesonscrollbar.js
│  │      │  │  │      │  │      search.js
│  │      │  │  │      │  │      searchcursor.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─selection
│  │      │  │  │      │  │      active-line.js
│  │      │  │  │      │  │      mark-selection.js
│  │      │  │  │      │  │      selection-pointer.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─tern
│  │      │  │  │      │  │      tern.css
│  │      │  │  │      │  │      tern.js
│  │      │  │  │      │  │      worker.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  └─wrap
│  │      │  │  │      │          hardwrap.js
│  │      │  │  │      │          
│  │      │  │  │      ├─lib
│  │      │  │  │      │      codemirror.css
│  │      │  │  │      │      codemirror.js
│  │      │  │  │      │      
│  │      │  │  │      ├─mode
│  │      │  │  │      │  │  index.html
│  │      │  │  │      │  │  meta.js
│  │      │  │  │      │  │  
│  │      │  │  │      │  ├─apl
│  │      │  │  │      │  │      apl.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─asterisk
│  │      │  │  │      │  │      asterisk.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─clike
│  │      │  │  │      │  │      clike.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      scala.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─clojure
│  │      │  │  │      │  │      clojure.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─cobol
│  │      │  │  │      │  │      cobol.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─coffeescript
│  │      │  │  │      │  │      coffeescript.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─commonlisp
│  │      │  │  │      │  │      commonlisp.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─css
│  │      │  │  │      │  │      css.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      less.html
│  │      │  │  │      │  │      less_test.js
│  │      │  │  │      │  │      scss.html
│  │      │  │  │      │  │      scss_test.js
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─cypher
│  │      │  │  │      │  │      cypher.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─d
│  │      │  │  │      │  │      d.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─dart
│  │      │  │  │      │  │      dart.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─diff
│  │      │  │  │      │  │      diff.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─django
│  │      │  │  │      │  │      django.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─dockerfile
│  │      │  │  │      │  │      dockerfile.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─dtd
│  │      │  │  │      │  │      dtd.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─dylan
│  │      │  │  │      │  │      dylan.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─ebnf
│  │      │  │  │      │  │      ebnf.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─ecl
│  │      │  │  │      │  │      ecl.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─eiffel
│  │      │  │  │      │  │      eiffel.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─erlang
│  │      │  │  │      │  │      erlang.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─forth
│  │      │  │  │      │  │      forth.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─fortran
│  │      │  │  │      │  │      fortran.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─gas
│  │      │  │  │      │  │      gas.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─gfm
│  │      │  │  │      │  │      gfm.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─gherkin
│  │      │  │  │      │  │      gherkin.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─go
│  │      │  │  │      │  │      go.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─groovy
│  │      │  │  │      │  │      groovy.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─haml
│  │      │  │  │      │  │      haml.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─haskell
│  │      │  │  │      │  │      haskell.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─haxe
│  │      │  │  │      │  │      haxe.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─htmlembedded
│  │      │  │  │      │  │      htmlembedded.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─htmlmixed
│  │      │  │  │      │  │      htmlmixed.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─http
│  │      │  │  │      │  │      http.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─idl
│  │      │  │  │      │  │      idl.js
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─jade
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      jade.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─javascript
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      javascript.js
│  │      │  │  │      │  │      json-ld.html
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      typescript.html
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─jinja2
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      jinja2.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─julia
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      julia.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─kotlin
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      kotlin.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─livescript
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      livescript.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─lua
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      lua.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─markdown
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      markdown.js
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─mirc
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      mirc.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─mllike
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      mllike.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─modelica
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      modelica.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─nginx
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      nginx.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─ntriples
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      ntriples.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─octave
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      octave.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─pascal
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      pascal.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─pegjs
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      pegjs.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─perl
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      perl.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─php
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      php.js
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─pig
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      pig.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─properties
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      properties.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─puppet
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      puppet.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─python
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      python.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─q
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      q.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─r
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      r.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─rpm
│  │      │  │  │      │  │  │  index.html
│  │      │  │  │      │  │  │  rpm.js
│  │      │  │  │      │  │  │  
│  │      │  │  │      │  │  └─changes
│  │      │  │  │      │  │          index.html
│  │      │  │  │      │  │          
│  │      │  │  │      │  ├─rst
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      rst.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─ruby
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      ruby.js
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─rust
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      rust.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─sass
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      sass.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─scheme
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      scheme.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─shell
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      shell.js
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─sieve
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      sieve.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─slim
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      slim.js
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─smalltalk
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      smalltalk.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─smarty
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      smarty.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─smartymixed
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      smartymixed.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─solr
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      solr.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─soy
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      soy.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─sparql
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      sparql.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─spreadsheet
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      spreadsheet.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─sql
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      sql.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─stex
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      stex.js
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─stylus
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      stylus.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─tcl
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      tcl.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─textile
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      textile.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─tiddlywiki
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      tiddlywiki.css
│  │      │  │  │      │  │      tiddlywiki.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─tiki
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      tiki.css
│  │      │  │  │      │  │      tiki.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─toml
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      toml.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─tornado
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      tornado.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─turtle
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      turtle.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─vb
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      vb.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─vbscript
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      vbscript.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─velocity
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      velocity.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─verilog
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      verilog.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─xml
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      xml.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─xquery
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      test.js
│  │      │  │  │      │  │      xquery.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  ├─yaml
│  │      │  │  │      │  │      index.html
│  │      │  │  │      │  │      yaml.js
│  │      │  │  │      │  │      
│  │      │  │  │      │  └─z80
│  │      │  │  │      │          index.html
│  │      │  │  │      │          z80.js
│  │      │  │  │      │          
│  │      │  │  │      └─theme
│  │      │  │  │              3024-day.css
│  │      │  │  │              3024-night.css
│  │      │  │  │              ambiance-mobile.css
│  │      │  │  │              ambiance.css
│  │      │  │  │              base16-dark.css
│  │      │  │  │              base16-light.css
│  │      │  │  │              blackboard.css
│  │      │  │  │              cobalt.css
│  │      │  │  │              colorforth.css
│  │      │  │  │              eclipse.css
│  │      │  │  │              elegant.css
│  │      │  │  │              erlang-dark.css
│  │      │  │  │              lesser-dark.css
│  │      │  │  │              mbo.css
│  │      │  │  │              mdn-like.css
│  │      │  │  │              midnight.css
│  │      │  │  │              monokai.css
│  │      │  │  │              neat.css
│  │      │  │  │              neo.css
│  │      │  │  │              night.css
│  │      │  │  │              paraiso-dark.css
│  │      │  │  │              paraiso-light.css
│  │      │  │  │              pastel-on-dark.css
│  │      │  │  │              rubyblue.css
│  │      │  │  │              solarized.css
│  │      │  │  │              the-matrix.css
│  │      │  │  │              tomorrow-night-bright.css
│  │      │  │  │              tomorrow-night-eighties.css
│  │      │  │  │              twilight.css
│  │      │  │  │              vibrant-ink.css
│  │      │  │  │              xq-dark.css
│  │      │  │  │              xq-light.css
│  │      │  │  │              zenburn.css
│  │      │  │  │              
│  │      │  │  └─plugins
│  │      │  │      │  plugin-template.js
│  │      │  │      │  
│  │      │  │      ├─code-block-dialog
│  │      │  │      │      code-block-dialog.js
│  │      │  │      │      
│  │      │  │      ├─emoji-dialog
│  │      │  │      │      emoji-dialog.js
│  │      │  │      │      emoji.json
│  │      │  │      │      
│  │      │  │      ├─goto-line-dialog
│  │      │  │      │      goto-line-dialog.js
│  │      │  │      │      
│  │      │  │      ├─help-dialog
│  │      │  │      │      help-dialog.js
│  │      │  │      │      help.md
│  │      │  │      │      
│  │      │  │      ├─html-entities-dialog
│  │      │  │      │      html-entities-dialog.js
│  │      │  │      │      html-entities.json
│  │      │  │      │      
│  │      │  │      ├─image-dialog
│  │      │  │      │      image-dialog.js
│  │      │  │      │      
│  │      │  │      ├─link-dialog
│  │      │  │      │      link-dialog.js
│  │      │  │      │      
│  │      │  │      ├─preformatted-text-dialog
│  │      │  │      │      preformatted-text-dialog.js
│  │      │  │      │      
│  │      │  │      ├─reference-link-dialog
│  │      │  │      │      reference-link-dialog.js
│  │      │  │      │      
│  │      │  │      ├─table-dialog
│  │      │  │      │      table-dialog.js
│  │      │  │      │      
│  │      │  │      └─test-plugin
│  │      │  │              test-plugin.js
│  │      │  │              
│  │      │  ├─file
│  │      │  │      1653115505833.jpg
│  │      │  │      2a19b189649f4ebf84f7f7e4de064b44.file
│  │      │  │      2aa8964c47ba451aa074a679a60c7d55.docx
│  │      │  │      356d320605dd454abbb0abc34f8e854b.doc
│  │      │  │      44982ca9b92f4b4f80ed3902c0af5d11.pdf
│  │      │  │      496a4364a0594ceebb759f5b4daadb91.docx
│  │      │  │      4f37586072d6458ca3855e1af327d1a3.pdf
│  │      │  │      68dcd13ca34b4624b77470d49bcef1a7.file
│  │      │  │      6cd17119923b4198920630fa5a4136a3.docx
│  │      │  │      76a06a3241a64a08b75060617f528ca8.docx
│  │      │  │      7c559cd4e50b4d83a25bd64831305891.docx
│  │      │  │      99894e25940e4d85aef4b2511021104b.xlsx
│  │      │  │      a4015721b2f54075868db37702516afd.file
│  │      │  │      addf2f1b70ab4975b193aef1c5e4696d.xls
│  │      │  │      bbbeca6194ce445aaa48d6b859d5709c.docx
│  │      │  │      e001233b68824785bac504c40ed17ae4.file
│  │      │  │      eb2c256313414d01a0263aab3a8a8f9a.txt
│  │      │  │      f114e35073444640abaef6a90695e123.file
│  │      │  │      toux.jpg
│  │      │  │      
│  │      │  ├─font-awesome
│  │      │  │  ├─css
│  │      │  │  │      font-awesome.css
│  │      │  │  │      font-awesome.min.css
│  │      │  │  │      
│  │      │  │  └─fonts
│  │      │  │          fontawesome-webfont.eot
│  │      │  │          fontawesome-webfont.svg
│  │      │  │          fontawesome-webfont.ttf
│  │      │  │          fontawesome-webfont.woff
│  │      │  │          fontawesome-webfont.woff2
│  │      │  │          FontAwesome.otf
│  │      │  │          
│  │      │  ├─imgs
│  │      │  │      1.png
│  │      │  │      bgbj.jpg
│  │      │  │      favicon.ico
│  │      │  │      logo.jpg
│  │      │  │      sprt_eagle.png
│  │      │  │      starrySky.jpg
│  │      │  │      
│  │      │  ├─js
│  │      │  │      base64.min.js
│  │      │  │      chart.js
│  │      │  │      echarts.js
│  │      │  │      fun.js
│  │      │  │      jquery-2.1.0.js
│  │      │  │      jquery.table2excel.min.js
│  │      │  │      select_data.js
│  │      │  │      style.js
│  │      │  │      
│  │      │  ├─layui
│  │      │  │  │  layui.js
│  │      │  │  │  
│  │      │  │  ├─css
│  │      │  │  │  │  layui.css
│  │      │  │  │  │  
│  │      │  │  │  └─modules
│  │      │  │  │      │  code.css
│  │      │  │  │      │  
│  │      │  │  │      ├─laydate
│  │      │  │  │      │  └─default
│  │      │  │  │      │          laydate.css
│  │      │  │  │      │          
│  │      │  │  │      └─layer
│  │      │  │  │          └─default
│  │      │  │  │                  icon-ext.png
│  │      │  │  │                  icon.png
│  │      │  │  │                  layer.css
│  │      │  │  │                  loading-0.gif
│  │      │  │  │                  loading-1.gif
│  │      │  │  │                  loading-2.gif
│  │      │  │  │                  
│  │      │  │  ├─font
│  │      │  │  │      iconfont.eot
│  │      │  │  │      iconfont.svg
│  │      │  │  │      iconfont.ttf
│  │      │  │  │      iconfont.woff
│  │      │  │  │      iconfont.woff2
│  │      │  │  │      
│  │      │  │  └─icon
│  │      │  │          demo.css
│  │      │  │          iconfont.css
│  │      │  │          iconfont.js
│  │      │  │          iconfont.json
│  │      │  │          iconfont.ttf
│  │      │  │          iconfont.woff
│  │      │  │          iconfont.woff2
│  │      │  │          
│  │      │  ├─layui-formSelects
│  │      │  │      formSelects-v4.css
│  │      │  │      formSelects-v4.js
│  │      │  │      formSelects-v4.min.js
│  │      │  │      
│  │      │  └─treetable-lay
│  │      │          treeTable.css
│  │      │          treeTable.js
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
│  │          │      activity.html
│  │          │      announcements-manage.html
│  │          │      borrow-return-records.html
│  │          │      departments-manage.html
│  │          │      departmentsInfo.html
│  │          │      files.html
│  │          │      home.html
│  │          │      index.html
│  │          │      items-all.html
│  │          │      login.html
│  │          │      login2.html
│  │          │      member.html
│  │          │      message.html
│  │          │      permission.html
│  │          │      personalInfo.html
│  │          │      register.html
│  │          │      role.html
│  │          │      setFuns.html
│  │          │      view-edit.html
│  │          │      work-project.html
│  │          │      _fragments.html
│  │          │      
│  │          └─test
│  │                  test.html
│  │                  test2.html
│  │                  test3.html
│  │                  
│  └─test
│      └─java
│          └─com
│              └─sums
│                  │  SumsApplicationTests.java
│                  │  
│                  └─test
│                          test.java
│                          
└─target
    ├─classes
    │  │  application-dev.yml
    │  │  application.yml
    │  │  banner.txt
    │  │  
    │  ├─com
    │  │  └─sums
    │  │      │  SumsApplication.class
    │  │      │  
    │  │      ├─annotations
    │  │      │      PermissionVerify.class
    │  │      │      
    │  │      ├─aspect
    │  │      │      LogAspect$RequestLog.class
    │  │      │      LogAspect.class
    │  │      │      ShiroAuthenticationAspect.class
    │  │      │      
    │  │      ├─config
    │  │      │      MyApplicationRunner.class
    │  │      │      MybatisPlusConfig.class
    │  │      │      OpenBrowser.class
    │  │      │      ShiroConfig.class
    │  │      │      UploadFileConfig.class
    │  │      │      UploadFilePathConfig.class
    │  │      │      WebMvcConfig.class
    │  │      │      
    │  │      ├─controller
    │  │      │      ActivityController.class
    │  │      │      AnnouncementController.class
    │  │      │      DepartmentController.class
    │  │      │      DepartmentsInfoController.class
    │  │      │      FilesController.class
    │  │      │      HomeController.class
    │  │      │      IndexController.class
    │  │      │      ItemsController.class
    │  │      │      LoginController.class
    │  │      │      LogoutController.class
    │  │      │      MemberController.class
    │  │      │      MessageController.class
    │  │      │      OpenController.class
    │  │      │      PermissionController.class
    │  │      │      PersonalInfoController.class
    │  │      │      RecordController.class
    │  │      │      RoleController.class
    │  │      │      Test.class
    │  │      │      WorkController.class
    │  │      │      
    │  │      ├─dao
    │  │      │      ActivityMapper.class
    │  │      │      AnnouncementMapper.class
    │  │      │      DepartmentMapper.class
    │  │      │      EnrollmentMapper.class
    │  │      │      FilesMapper.class
    │  │      │      ItemsMapper.class
    │  │      │      MemberMapper.class
    │  │      │      MessageMapper.class
    │  │      │      MsgSinkMapper.class
    │  │      │      PermissionMapper.class
    │  │      │      RecordMapper.class
    │  │      │      RoleMapper.class
    │  │      │      WorkMapper.class
    │  │      │      
    │  │      ├─entity
    │  │      │      Activity.class
    │  │      │      Announcement.class
    │  │      │      Department.class
    │  │      │      Enrollment.class
    │  │      │      Files.class
    │  │      │      Items.class
    │  │      │      Member.class
    │  │      │      Message.class
    │  │      │      MsgSink.class
    │  │      │      Permission.class
    │  │      │      Record.class
    │  │      │      ReturnLinkage.class
    │  │      │      ReturnResult.class
    │  │      │      Role.class
    │  │      │      Work.class
    │  │      │      
    │  │      ├─service
    │  │      │  │  ActivityService.class
    │  │      │  │  AnnouncementService.class
    │  │      │  │  DepartmentService.class
    │  │      │  │  EnrollmentService.class
    │  │      │  │  FilesService.class
    │  │      │  │  ItemsService.class
    │  │      │  │  MemberService.class
    │  │      │  │  MessageService.class
    │  │      │  │  PermissionService.class
    │  │      │  │  RecordService.class
    │  │      │  │  RoleService.class
    │  │      │  │  WorkService.class
    │  │      │  │  
    │  │      │  ├─factory
    │  │      │  │      RoleFactory.class
    │  │      │  │      RolesConfig.class
    │  │      │  │      
    │  │      │  ├─impl
    │  │      │  │      ActivityServiceImpl.class
    │  │      │  │      AnnouncementServiceImpl.class
    │  │      │  │      DepartmentServiceImpl.class
    │  │      │  │      EnrollmentServiceImpl.class
    │  │      │  │      FilesServiceImpl.class
    │  │      │  │      ItemsServiceImpl.class
    │  │      │  │      MemberServiceImpl.class
    │  │      │  │      MessageServiceImpl$1.class
    │  │      │  │      MessageServiceImpl.class
    │  │      │  │      PermissionServiceImpl.class
    │  │      │  │      RecordServiceImpl.class
    │  │      │  │      RoleServiceImpl.class
    │  │      │  │      WorkServiceImpl.class
    │  │      │  │      
    │  │      │  └─roles
    │  │      │      │  AdaptiveStrategyRoles.class
    │  │      │      │  StrategyRoles.class
    │  │      │      │  
    │  │      │      └─impl
    │  │      │              AdminRole.class
    │  │      │              ChairmanRole.class
    │  │      │              MemberRole.class
    │  │      │              MinisterRole.class
    │  │      │              ViceChairmanRole.class
    │  │      │              
    │  │      ├─shiro
    │  │      │      CustomerRealm.class
    │  │      │      MyByteSource$1.class
    │  │      │      MyByteSource$BytesHelper.class
    │  │      │      MyByteSource.class
    │  │      │      MySessionManager.class
    │  │      │      RedisCache.class
    │  │      │      RedisCacheManager.class
    │  │      │      
    │  │      └─utils
    │  │              ApplicationContextUtil.class
    │  │              CodeGenerator.class
    │  │              DepaNameUtil.class
    │  │              DownloadUtils.class
    │  │              LoginMemberUtils.class
    │  │              MarkdownUtil$1.class
    │  │              MarkdownUtil$CustomAttributeProvider.class
    │  │              MarkdownUtil.class
    │  │              MyCacheUtils.class
    │  │              PageUtils.class
    │  │              RoleQuerWrapper.class
    │  │              SaltUtil.class
    │  │              VerifyCodeUtils.class
    │  │              
    │  ├─mappers
    │  │      ActivityMapper.xml
    │  │      AnnouncementMapper.xml
    │  │      DepartmentMapper.xml
    │  │      EnrollmentMapper.xml
    │  │      FilesMapper.xml
    │  │      ItemsMapper.xml
    │  │      MemberMapper.xml
    │  │      MessageMapper.xml
    │  │      MsgSinkMapper.xml
    │  │      PermissionMapper.xml
    │  │      RecordMapper.xml
    │  │      RoleMapper.xml
    │  │      WorkMapper.xml
    │  │      
    │  ├─static
    │  │  ├─css
    │  │  │      style.css
    │  │  │      
    │  │  ├─editormd
    │  │  │  │  editormd.js
    │  │  │  │  editormd.min.js
    │  │  │  │  
    │  │  │  ├─css
    │  │  │  │      editormd.css
    │  │  │  │      editormd.logo.css
    │  │  │  │      editormd.logo.min.css
    │  │  │  │      editormd.min.css
    │  │  │  │      editormd.preview.css
    │  │  │  │      editormd.preview.min.css
    │  │  │  │      
    │  │  │  ├─fonts
    │  │  │  │      editormd-logo.eot
    │  │  │  │      editormd-logo.svg
    │  │  │  │      editormd-logo.ttf
    │  │  │  │      editormd-logo.woff
    │  │  │  │      fontawesome-webfont.eot
    │  │  │  │      fontawesome-webfont.svg
    │  │  │  │      fontawesome-webfont.ttf
    │  │  │  │      fontawesome-webfont.woff
    │  │  │  │      fontawesome-webfont.woff2
    │  │  │  │      FontAwesome.otf
    │  │  │  │      
    │  │  │  ├─images
    │  │  │  │  │  loading.gif
    │  │  │  │  │  loading@2x.gif
    │  │  │  │  │  loading@3x.gif
    │  │  │  │  │  
    │  │  │  │  └─logos
    │  │  │  │          editormd-favicon-16x16.ico
    │  │  │  │          editormd-favicon-24x24.ico
    │  │  │  │          editormd-favicon-32x32.ico
    │  │  │  │          editormd-favicon-48x48.ico
    │  │  │  │          editormd-favicon-64x64.ico
    │  │  │  │          editormd-logo-114x114.png
    │  │  │  │          editormd-logo-120x120.png
    │  │  │  │          editormd-logo-144x144.png
    │  │  │  │          editormd-logo-16x16.png
    │  │  │  │          editormd-logo-180x180.png
    │  │  │  │          editormd-logo-240x240.png
    │  │  │  │          editormd-logo-24x24.png
    │  │  │  │          editormd-logo-320x320.png
    │  │  │  │          editormd-logo-32x32.png
    │  │  │  │          editormd-logo-48x48.png
    │  │  │  │          editormd-logo-57x57.png
    │  │  │  │          editormd-logo-64x64.png
    │  │  │  │          editormd-logo-72x72.png
    │  │  │  │          editormd-logo-96x96.png
    │  │  │  │          vi.png
    │  │  │  │          
    │  │  │  ├─languages
    │  │  │  │      en.js
    │  │  │  │      zh-tw.js
    │  │  │  │      
    │  │  │  ├─lib
    │  │  │  │  │  flowchart.min.js
    │  │  │  │  │  jquery.flowchart.min.js
    │  │  │  │  │  marked.min.js
    │  │  │  │  │  prettify.min.js
    │  │  │  │  │  raphael.min.js
    │  │  │  │  │  sequence-diagram.min.js
    │  │  │  │  │  underscore.min.js
    │  │  │  │  │  
    │  │  │  │  └─codemirror
    │  │  │  │      │  addons.min.js
    │  │  │  │      │  AUTHORS
    │  │  │  │      │  bower.json
    │  │  │  │      │  codemirror.min.css
    │  │  │  │      │  codemirror.min.js
    │  │  │  │      │  LICENSE
    │  │  │  │      │  modes.min.js
    │  │  │  │      │  package.json
    │  │  │  │      │  README.md
    │  │  │  │      │  
    │  │  │  │      ├─addon
    │  │  │  │      │  ├─comment
    │  │  │  │      │  │      comment.js
    │  │  │  │      │  │      continuecomment.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─dialog
    │  │  │  │      │  │      dialog.css
    │  │  │  │      │  │      dialog.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─display
    │  │  │  │      │  │      fullscreen.css
    │  │  │  │      │  │      fullscreen.js
    │  │  │  │      │  │      panel.js
    │  │  │  │      │  │      placeholder.js
    │  │  │  │      │  │      rulers.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─edit
    │  │  │  │      │  │      closebrackets.js
    │  │  │  │      │  │      closetag.js
    │  │  │  │      │  │      continuelist.js
    │  │  │  │      │  │      matchbrackets.js
    │  │  │  │      │  │      matchtags.js
    │  │  │  │      │  │      trailingspace.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─fold
    │  │  │  │      │  │      brace-fold.js
    │  │  │  │      │  │      comment-fold.js
    │  │  │  │      │  │      foldcode.js
    │  │  │  │      │  │      foldgutter.css
    │  │  │  │      │  │      foldgutter.js
    │  │  │  │      │  │      indent-fold.js
    │  │  │  │      │  │      markdown-fold.js
    │  │  │  │      │  │      xml-fold.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─hint
    │  │  │  │      │  │      anyword-hint.js
    │  │  │  │      │  │      css-hint.js
    │  │  │  │      │  │      html-hint.js
    │  │  │  │      │  │      javascript-hint.js
    │  │  │  │      │  │      show-hint.css
    │  │  │  │      │  │      show-hint.js
    │  │  │  │      │  │      sql-hint.js
    │  │  │  │      │  │      xml-hint.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─lint
    │  │  │  │      │  │      coffeescript-lint.js
    │  │  │  │      │  │      css-lint.js
    │  │  │  │      │  │      javascript-lint.js
    │  │  │  │      │  │      json-lint.js
    │  │  │  │      │  │      lint.css
    │  │  │  │      │  │      lint.js
    │  │  │  │      │  │      yaml-lint.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─merge
    │  │  │  │      │  │      merge.css
    │  │  │  │      │  │      merge.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─mode
    │  │  │  │      │  │      loadmode.js
    │  │  │  │      │  │      multiplex.js
    │  │  │  │      │  │      multiplex_test.js
    │  │  │  │      │  │      overlay.js
    │  │  │  │      │  │      simple.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─runmode
    │  │  │  │      │  │      colorize.js
    │  │  │  │      │  │      runmode-standalone.js
    │  │  │  │      │  │      runmode.js
    │  │  │  │      │  │      runmode.node.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─scroll
    │  │  │  │      │  │      annotatescrollbar.js
    │  │  │  │      │  │      scrollpastend.js
    │  │  │  │      │  │      simplescrollbars.css
    │  │  │  │      │  │      simplescrollbars.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─search
    │  │  │  │      │  │      match-highlighter.js
    │  │  │  │      │  │      matchesonscrollbar.css
    │  │  │  │      │  │      matchesonscrollbar.js
    │  │  │  │      │  │      search.js
    │  │  │  │      │  │      searchcursor.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─selection
    │  │  │  │      │  │      active-line.js
    │  │  │  │      │  │      mark-selection.js
    │  │  │  │      │  │      selection-pointer.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─tern
    │  │  │  │      │  │      tern.css
    │  │  │  │      │  │      tern.js
    │  │  │  │      │  │      worker.js
    │  │  │  │      │  │      
    │  │  │  │      │  └─wrap
    │  │  │  │      │          hardwrap.js
    │  │  │  │      │          
    │  │  │  │      ├─lib
    │  │  │  │      │      codemirror.css
    │  │  │  │      │      codemirror.js
    │  │  │  │      │      
    │  │  │  │      ├─mode
    │  │  │  │      │  │  index.html
    │  │  │  │      │  │  meta.js
    │  │  │  │      │  │  
    │  │  │  │      │  ├─apl
    │  │  │  │      │  │      apl.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─asterisk
    │  │  │  │      │  │      asterisk.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─clike
    │  │  │  │      │  │      clike.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      scala.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─clojure
    │  │  │  │      │  │      clojure.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─cobol
    │  │  │  │      │  │      cobol.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─coffeescript
    │  │  │  │      │  │      coffeescript.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─commonlisp
    │  │  │  │      │  │      commonlisp.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─css
    │  │  │  │      │  │      css.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      less.html
    │  │  │  │      │  │      less_test.js
    │  │  │  │      │  │      scss.html
    │  │  │  │      │  │      scss_test.js
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─cypher
    │  │  │  │      │  │      cypher.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─d
    │  │  │  │      │  │      d.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─dart
    │  │  │  │      │  │      dart.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─diff
    │  │  │  │      │  │      diff.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─django
    │  │  │  │      │  │      django.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─dockerfile
    │  │  │  │      │  │      dockerfile.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─dtd
    │  │  │  │      │  │      dtd.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─dylan
    │  │  │  │      │  │      dylan.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─ebnf
    │  │  │  │      │  │      ebnf.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─ecl
    │  │  │  │      │  │      ecl.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─eiffel
    │  │  │  │      │  │      eiffel.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─erlang
    │  │  │  │      │  │      erlang.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─forth
    │  │  │  │      │  │      forth.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─fortran
    │  │  │  │      │  │      fortran.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─gas
    │  │  │  │      │  │      gas.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─gfm
    │  │  │  │      │  │      gfm.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─gherkin
    │  │  │  │      │  │      gherkin.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─go
    │  │  │  │      │  │      go.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─groovy
    │  │  │  │      │  │      groovy.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─haml
    │  │  │  │      │  │      haml.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─haskell
    │  │  │  │      │  │      haskell.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─haxe
    │  │  │  │      │  │      haxe.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─htmlembedded
    │  │  │  │      │  │      htmlembedded.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─htmlmixed
    │  │  │  │      │  │      htmlmixed.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─http
    │  │  │  │      │  │      http.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─idl
    │  │  │  │      │  │      idl.js
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─jade
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      jade.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─javascript
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      javascript.js
    │  │  │  │      │  │      json-ld.html
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      typescript.html
    │  │  │  │      │  │      
    │  │  │  │      │  ├─jinja2
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      jinja2.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─julia
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      julia.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─kotlin
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      kotlin.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─livescript
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      livescript.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─lua
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      lua.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─markdown
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      markdown.js
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─mirc
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      mirc.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─mllike
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      mllike.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─modelica
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      modelica.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─nginx
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      nginx.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─ntriples
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      ntriples.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─octave
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      octave.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─pascal
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      pascal.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─pegjs
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      pegjs.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─perl
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      perl.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─php
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      php.js
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─pig
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      pig.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─properties
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      properties.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─puppet
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      puppet.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─python
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      python.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─q
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      q.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─r
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      r.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─rpm
    │  │  │  │      │  │  │  index.html
    │  │  │  │      │  │  │  rpm.js
    │  │  │  │      │  │  │  
    │  │  │  │      │  │  └─changes
    │  │  │  │      │  │          index.html
    │  │  │  │      │  │          
    │  │  │  │      │  ├─rst
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      rst.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─ruby
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      ruby.js
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─rust
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      rust.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─sass
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      sass.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─scheme
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      scheme.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─shell
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      shell.js
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─sieve
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      sieve.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─slim
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      slim.js
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─smalltalk
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      smalltalk.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─smarty
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      smarty.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─smartymixed
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      smartymixed.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─solr
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      solr.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─soy
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      soy.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─sparql
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      sparql.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─spreadsheet
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      spreadsheet.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─sql
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      sql.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─stex
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      stex.js
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─stylus
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      stylus.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─tcl
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      tcl.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─textile
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      textile.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─tiddlywiki
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      tiddlywiki.css
    │  │  │  │      │  │      tiddlywiki.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─tiki
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      tiki.css
    │  │  │  │      │  │      tiki.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─toml
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      toml.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─tornado
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      tornado.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─turtle
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      turtle.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─vb
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      vb.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─vbscript
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      vbscript.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─velocity
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      velocity.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─verilog
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      verilog.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─xml
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      xml.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─xquery
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      test.js
    │  │  │  │      │  │      xquery.js
    │  │  │  │      │  │      
    │  │  │  │      │  ├─yaml
    │  │  │  │      │  │      index.html
    │  │  │  │      │  │      yaml.js
    │  │  │  │      │  │      
    │  │  │  │      │  └─z80
    │  │  │  │      │          index.html
    │  │  │  │      │          z80.js
    │  │  │  │      │          
    │  │  │  │      └─theme
    │  │  │  │              3024-day.css
    │  │  │  │              3024-night.css
    │  │  │  │              ambiance-mobile.css
    │  │  │  │              ambiance.css
    │  │  │  │              base16-dark.css
    │  │  │  │              base16-light.css
    │  │  │  │              blackboard.css
    │  │  │  │              cobalt.css
    │  │  │  │              colorforth.css
    │  │  │  │              eclipse.css
    │  │  │  │              elegant.css
    │  │  │  │              erlang-dark.css
    │  │  │  │              lesser-dark.css
    │  │  │  │              mbo.css
    │  │  │  │              mdn-like.css
    │  │  │  │              midnight.css
    │  │  │  │              monokai.css
    │  │  │  │              neat.css
    │  │  │  │              neo.css
    │  │  │  │              night.css
    │  │  │  │              paraiso-dark.css
    │  │  │  │              paraiso-light.css
    │  │  │  │              pastel-on-dark.css
    │  │  │  │              rubyblue.css
    │  │  │  │              solarized.css
    │  │  │  │              the-matrix.css
    │  │  │  │              tomorrow-night-bright.css
    │  │  │  │              tomorrow-night-eighties.css
    │  │  │  │              twilight.css
    │  │  │  │              vibrant-ink.css
    │  │  │  │              xq-dark.css
    │  │  │  │              xq-light.css
    │  │  │  │              zenburn.css
    │  │  │  │              
    │  │  │  └─plugins
    │  │  │      │  plugin-template.js
    │  │  │      │  
    │  │  │      ├─code-block-dialog
    │  │  │      │      code-block-dialog.js
    │  │  │      │      
    │  │  │      ├─emoji-dialog
    │  │  │      │      emoji-dialog.js
    │  │  │      │      emoji.json
    │  │  │      │      
    │  │  │      ├─goto-line-dialog
    │  │  │      │      goto-line-dialog.js
    │  │  │      │      
    │  │  │      ├─help-dialog
    │  │  │      │      help-dialog.js
    │  │  │      │      help.md
    │  │  │      │      
    │  │  │      ├─html-entities-dialog
    │  │  │      │      html-entities-dialog.js
    │  │  │      │      html-entities.json
    │  │  │      │      
    │  │  │      ├─image-dialog
    │  │  │      │      image-dialog.js
    │  │  │      │      
    │  │  │      ├─link-dialog
    │  │  │      │      link-dialog.js
    │  │  │      │      
    │  │  │      ├─preformatted-text-dialog
    │  │  │      │      preformatted-text-dialog.js
    │  │  │      │      
    │  │  │      ├─reference-link-dialog
    │  │  │      │      reference-link-dialog.js
    │  │  │      │      
    │  │  │      ├─table-dialog
    │  │  │      │      table-dialog.js
    │  │  │      │      
    │  │  │      └─test-plugin
    │  │  │              test-plugin.js
    │  │  │              
    │  │  ├─file
    │  │  │      1653115505833.jpg
    │  │  │      2a19b189649f4ebf84f7f7e4de064b44.file
    │  │  │      2aa8964c47ba451aa074a679a60c7d55.docx
    │  │  │      356d320605dd454abbb0abc34f8e854b.doc
    │  │  │      44982ca9b92f4b4f80ed3902c0af5d11.pdf
    │  │  │      496a4364a0594ceebb759f5b4daadb91.docx
    │  │  │      4f37586072d6458ca3855e1af327d1a3.pdf
    │  │  │      68dcd13ca34b4624b77470d49bcef1a7.file
    │  │  │      6cd17119923b4198920630fa5a4136a3.docx
    │  │  │      76a06a3241a64a08b75060617f528ca8.docx
    │  │  │      7c559cd4e50b4d83a25bd64831305891.docx
    │  │  │      99894e25940e4d85aef4b2511021104b.xlsx
    │  │  │      a4015721b2f54075868db37702516afd.file
    │  │  │      addf2f1b70ab4975b193aef1c5e4696d.xls
    │  │  │      bbbeca6194ce445aaa48d6b859d5709c.docx
    │  │  │      e001233b68824785bac504c40ed17ae4.file
    │  │  │      eb2c256313414d01a0263aab3a8a8f9a.txt
    │  │  │      f114e35073444640abaef6a90695e123.file
    │  │  │      toux.jpg
    │  │  │      
    │  │  ├─font-awesome
    │  │  │  ├─css
    │  │  │  │      font-awesome.css
    │  │  │  │      font-awesome.min.css
    │  │  │  │      
    │  │  │  └─fonts
    │  │  │          fontawesome-webfont.eot
    │  │  │          fontawesome-webfont.svg
    │  │  │          fontawesome-webfont.ttf
    │  │  │          fontawesome-webfont.woff
    │  │  │          fontawesome-webfont.woff2
    │  │  │          FontAwesome.otf
    │  │  │          
    │  │  ├─imgs
    │  │  │      1.png
    │  │  │      bgbj.jpg
    │  │  │      favicon.ico
    │  │  │      logo.jpg
    │  │  │      sprt_eagle.png
    │  │  │      starrySky.jpg
    │  │  │      
    │  │  ├─js
    │  │  │      base64.min.js
    │  │  │      chart.js
    │  │  │      echarts.js
    │  │  │      fun.js
    │  │  │      jquery-2.1.0.js
    │  │  │      jquery.table2excel.min.js
    │  │  │      select_data.js
    │  │  │      style.js
    │  │  │      
    │  │  ├─layui
    │  │  │  │  layui.js
    │  │  │  │  
    │  │  │  ├─css
    │  │  │  │  │  layui.css
    │  │  │  │  │  
    │  │  │  │  └─modules
    │  │  │  │      │  code.css
    │  │  │  │      │  
    │  │  │  │      ├─laydate
    │  │  │  │      │  └─default
    │  │  │  │      │          laydate.css
    │  │  │  │      │          
    │  │  │  │      └─layer
    │  │  │  │          └─default
    │  │  │  │                  icon-ext.png
    │  │  │  │                  icon.png
    │  │  │  │                  layer.css
    │  │  │  │                  loading-0.gif
    │  │  │  │                  loading-1.gif
    │  │  │  │                  loading-2.gif
    │  │  │  │                  
    │  │  │  ├─font
    │  │  │  │      iconfont.eot
    │  │  │  │      iconfont.svg
    │  │  │  │      iconfont.ttf
    │  │  │  │      iconfont.woff
    │  │  │  │      iconfont.woff2
    │  │  │  │      
    │  │  │  └─icon
    │  │  │          demo.css
    │  │  │          iconfont.css
    │  │  │          iconfont.js
    │  │  │          iconfont.json
    │  │  │          iconfont.ttf
    │  │  │          iconfont.woff
    │  │  │          iconfont.woff2
    │  │  │          
    │  │  ├─layui-formSelects
    │  │  │      formSelects-v4.css
    │  │  │      formSelects-v4.js
    │  │  │      formSelects-v4.min.js
    │  │  │      
    │  │  └─treetable-lay
    │  │          treeTable.css
    │  │          treeTable.js
    │  │          
    │  └─templates
    │      │  activityDetails.html
    │      │  homepage.html
    │      │  _fragments.html
    │      │  
    │      ├─error
    │      │      4xx.html
    │      │      
    │      ├─studentUnion
    │      │      activity.html
    │      │      announcements-manage.html
    │      │      borrow-return-records.html
    │      │      departments-manage.html
    │      │      departmentsInfo.html
    │      │      files.html
    │      │      home.html
    │      │      index.html
    │      │      items-all.html
    │      │      login.html
    │      │      login2.html
    │      │      member.html
    │      │      message.html
    │      │      permission.html
    │      │      personalInfo.html
    │      │      register.html
    │      │      role.html
    │      │      setFuns.html
    │      │      view-edit.html
    │      │      work-project.html
    │      │      _fragments.html
    │      │      
    │      └─test
    │              test.html
    │              test2.html
    │              test3.html
    │              
    ├─generated-sources
    │  └─annotations
    ├─generated-test-sources
    │  └─test-annotations
    └─test-classes
        └─com
            └─sums
                │  SumsApplicationTests.class
                │  
                └─test
                        test.class
                        


#### 安装教程

1.  xxxx
2.  xxxx
3.  xxxx

#### 使用说明

在application-dev.yml文件配置文件的保存路径、预览文件依赖的启动路径和数据库访问路径及数据库账号、数据库密码。
完成后进入src/main/java/com/sums/中，运行SumsApplication类。
系统访问
系统启动成功后后自动打开http://localhost:8088/sums/loginView，这是学生会成员的登录入口。如图16。
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


