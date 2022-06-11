var tablePermissionIns;
var tableMemberIns;
var activityTable;
var tableRoleIns;
var formSelects;
var recordTable;
var annoTable;
var depaTable;
var workTable;
var fileTable;
var itemTable;
var msgTable;
var DepaInfo;
var element;
var laydate;
var upload;
var layer;
var table;
var form;
var $;
layui.config({
    base: '/layui-formSelects/' //此处路径请自行处理, 可以使用绝对路径
}).extend({
    formSelects: 'formSelects-v4'
});

layui.use(['element', 'layer', 'util', 'carousel', 'form', 'table', 'formSelects', 'upload', 'laydate'], function () {
    formSelects = layui.formSelects;
    laydate = layui.laydate;
    element = layui.element;
    var util = layui.util;
    upload = layui.upload;
    layer = layui.layer;
    table = layui.table;
    form = layui.form;
    $ = layui.$;

    // homepage开始 =======================================================================================================
    $("#home_login").on('click', function () {
        layer.open({
            title: "登录",
            type: 1,
            scrollbar: false,
            offset: 'auto',
            area: 'auto',
            content: $("#login")
        });
    })
    form.on('submit(homepageform)', function (data) {
        // console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
        // console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
        console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
        $.ajax({
            type: "post",
            url: "/login",
            data: data.field,
            dataType: "json",
            success: function (data) {
                console.log(data)
                if (data.result == "SUCCESS") {
                    window.location.href = "/login-success";
                } else {
                    layer.msg(data.message);
                    return false;
                }

            }
        });
        return false;
        //阻止表单跳转。如果需要表单跳转，去掉这段即可。
    });
    // homepage结束 =======================================================================================================

    //首页开始==========================================================================================================
    var carousel = layui.carousel;

    carousel.render({
        elem: '#test1'
        ,width: '100%' //设置容器宽度
        ,arrow: 'always' //始终显示箭头
        //,anim: 'updown' //切换动画方式
    });
    carousel.render({
        elem: '#test2'
        ,width: '100%' //设置容器宽度
        ,arrow: 'always' //始终显示箭头
        //,anim: 'updown' //切换动画方式
    });

    //首页结束=============================================================================================================
    //头部事件  index开始==========================================================================================================
    util.event('lay-header-event', {
        //左侧菜单事件
        menuLeft: function (othis) {
            layer.msg('展开左侧菜单的操作', {
                icon: 0
            });
        },
        menuRight: function () {
            layer.open({
                type: 1,
                content: $('#msg_list'),
                area: ['260px', '100%'],
                offset: 'rt',
                anim: 5,
                shadeClose: true,
                success:function (){
                    $("#msg_list").load('/message/getMsgList');
                }
            });
        }
    });

    $("#newMsg").trigger("click");

    //演示动画
    $(document).on('click','.site-doc-icon .msg_title', function(){
        if ($(this).parent().parent().hasClass("newMsg")){
            $(this).parent().parent().removeClass("newMsg")
            var messageId = $(this).parent().parent().attr("data")
            ajax("/message/click",{messageId:messageId},'post').then(function (res){
                if (res.data >0){
                    var n = $("#newMsg").html();
                    if (n - res.data >0){
                        $("#newMsg").html(n-res.data);
                    }else {
                        $("#newMsg").hide();
                    }
                }
            })
        }
        var node = $(this).parent().next()
        if(node.is(':visible')){　　//如果node是显示的则隐藏node元素，否则显示
            node.hide();
        }else{
            node.show();
        }
    });


    function myDate() {
        var myDate = new Date;
        var year = myDate.getFullYear(); //获取当前年
        var mon = myDate.getMonth() + 1; //获取当前月
        var date = myDate.getDate(); //获取当前日
        var h = myDate.getHours(); //获取当前小时数(0-23)
        var m = myDate.getMinutes(); //获取当前分钟数(0-59)
        var s = myDate.getSeconds(); //获取当前秒
        var week = myDate.getDay();
        var weeks = ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六"];
        return year + "年" + (mon < 10 ? "0" + mon : mon) + "月" + (date < 10 ? "0" + date : date) +
            "日(" + weeks[week] + ") " + (h < 10 ? " 0" + h : h) + ":" + (m < 10 ? "0" + m : m) + ":" + (s <
            10 ? "0" + s : s);
    }

    setInterval(function () {
        var now = myDate();
        $('#current-time').text(now);
    }, 1000);


    //index结束=============================================================================================================
    //member开始=============================================================================================================
    tableMemberIns = table.render({
        elem: '#member'
        , url: '/member/all'
        , toolbar: '#toolbarMember' //开启头部工具栏，并为其绑定左侧模板
        , defaultToolbar: ['filter', 'exports', 'print']
        , height: 'full-42'
        , title: '学生会成员数据表'
        , cols: [[
            {type: 'checkbox', fixed: 'left'}
            , {field: 'meId', title: '学号', align: 'center'}
            , {field: 'meName', title: '姓名', align: 'center'}
            , {field: 'sex', title: '性别', align: 'center'}
            , {field: 'faculty', title: '院系', align: 'center'}
            , {field: 'major', title: '专业', align: 'center'}
            , {field: 'grade', title: '班级', align: 'center'}
            , {field: 'tel', title: '电话', align: 'center'}
            , {field: 'department', title: '部门', align: 'center', sort: true}
            , {field: 'position', title: '职位', align: 'center', sort: true}
            , {
                field: 'joinTime', title: '加入时间', align: 'center', templet: function (d) {
                    return dateFormatter(d.joinTime);
                }
            }
            , {fixed: 'right', title: '操作', width: 200, toolbar: '#barMember', fixed: 'right', align: 'center'}
        ]]
        , skin: 'line'
        , size: 'lg'
        , page: true
        , limit:12
        , done: function () {
            $(".layui-table-header tr").css("background-color", "#b0b0b0");
        }
    });
    //监听行工具事件
    table.on('tool(member)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('你确定要删除【' + data.meName + '】这个成员吗？', {icon: 3, title: '提示'}, function (index) {
                ajax('/del/member', {meId: data.meId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload('member');
                })
            });
        }
        if (obj.event === 'allot') {
            layer.open({
                type: 1,
                btn: ['确认', '关闭'],
                area: ['500px', '500px'],
                title: '分配角色',
                content: $('#setRole'),
                success: function () {
                    $("#set_meId").val(data.meId)
                    $("#set_meName").val(data.meName)
                    table.render({
                        elem: '#roleGrid'
                        , url: 'roleFind/all'//底层使用ajax请求数据
                        , cols: [[
                            {type: 'checkbox'},
                            {title: '角色编号', field: 'roleId', align: 'center'},
                            {title: '角色名称', field: 'roleName', align: 'center',templet: function (d) {
                                return rn(d.roleName)
                            }},
                        ]],
                        done: function (res, page, count) {
                            ajax('/findRoleIdByMeId', {meId: data.meId}, 'get').then(function (resId) {
                                for (var i in res.data) {
                                    for (var j in resId.data) {
                                        if (resId.data[j] == res.data[i].roleId) {
                                            res.data[i]['LAY_CHECKED'] = true;
                                            var index = res.data[i]['LAY_TABLE_INDEX'];
                                            $('div[lay-id="roleGrid"] tr[data-index=' + index + '] input[type="checkbox"]').prop('checked', true);
                                            $('div[lay-id="roleGrid"] tr[data-index=' + index + '] input[type="checkbox"]').next().addClass('layui-form-checked');
                                        }
                                    }
                                }
                            })
                            $(".layui-table-header tr").css("background-color", "#b0b0b0");
                        }
                    });
                },
                yes: function (index, layero) {
                    var cs = table.checkStatus('roleGrid').data;
                    var roleIds = [];
                    cs.forEach(c => {
                        roleIds.push(c.roleId)
                    })
                    if(!(roleIds.length>0)){
                        layer.msg('角色不能为空',{icon: 2})
                        return
                    }

                    if(roleIds.indexOf(4) != -1 ||roleIds.indexOf(2) != -1 || roleIds.indexOf(6) != -1 || roleIds.indexOf(3) != -1){
                        if(isRoleExist(roleIds)>1){
                            layer.msg('主席-副主席-部长-成员，不能同时存在',{icon: 3})
                            return
                        }
                    }
                    // if(roleIds.indexOf(5) != -1 ){
                    //     if(roleIds.indexOf(3) == -1){
                    //         layer.msg('物品管理员只能和部长一起设置',{icon: 3})
                    //         return
                    //     }
                    // }
                    var obj = {
                        meId: data.meId,
                        roleIds: roleIds.toString()
                    }
                    ajax('/update/memberRole', obj, 'post').then(function (res) {
                        layer.msg(res.msg)
                        table.reload('member');
                    })
                },
                btn2: function (index, layero) {
                    layer.close(index)
                }
            })
        }
    });

    linkage()

    //member结束=============================================================================================================
    //role开始=============================================================================================================

    table.render({
        elem: '#roleGrid'
        , url: 'roleFind/all'//底层使用ajax请求数据
        , toolbar: '#roleAddBtn' //开启头部工具栏，并为其绑定左侧模板
        , defaultToolbar: []
        , height: 'full-42'
        , cols: [[
            {title: '角色编号', field: 'roleId', align: 'center', width: 100},
            {title: '角色名称', field: 'roleName', align: 'center'},
            {title: '角色描述', field: 'description', align: 'center'},
            {title: '操作', templet: '#rowBtns', align: 'center'}
        ]],
        skin: 'line',
        size: 'lg',
        page: true,
        done: function () {
            $(".layui-table-header tr").css("background-color", "#b0b0b0");
        }
    });

    tableRoleIns = table.on('tool(roleGrid)', function (obj) {
        var data = obj.data;
        if (obj.event == 'edit') {
            //onclick="toEdit('{{d.rid}}','{{d.roleName}}','{{d.rdescription}}')"
            var r = {
                "action": "/update/role",
                "tit": "编辑角色",
                "roleId": data.roleId,
                "roleName": data.roleName,
                "rdescription": data.description
            }
            popupwin(r, 'role');
        } else if (obj.event == 'detele') {
            layer.confirm('你确定要删除【' + data.roleName + '】这个角色吗？', {icon: 3, title: '提示'}, function (index) {
                ajax("/del/role", {roleId: data.roleId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload('roleGrid');
                })
            });
        }
    })

    //role结束=============================================================================================================
    //部门开始=============================================================================================================
    depaTable = table.render({
        elem: '#depa'
        , url: '/all/depa'
        , toolbar: '#toolDepa' //开启头部工具栏，并为其绑定左侧模板
        , defaultToolbar: []
        , height: 'full-42'
        , title: '部门信息数据表'
        , cols: [[
            {type: 'numbers', align: 'center'}
            , {field: 'depaName', title: '部门名称', align: 'center'}
            , {field: 'minister', title: '部门描述', align: 'center'}
            , {fixed: 'right', title: '操作', toolbar: '#barMember', fixed: 'right', align: 'center'}
        ]],
        skin: 'line',
        size: 'lg',
        page: true,
        done: function () {
            $(".layui-table-header tr").css("background-color", "#b0b0b0");
        }
    });

    //监听行工具事件
    table.on('tool(depa)', function (obj) {
        var data = obj.data;
        console.log(data)
        if (obj.event === 'del') {
            layer.confirm('你确定要删除【' + data.depaName + '】这个部门吗？', {icon: 3, title: '提示'}, function (index) {
                ajax("/del/depa", {depaId: data.depaId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        } else if (obj.event == 'edit') {
            var depa = {
                "action": "/update/depa",
                "tit": "编辑部门",
                "depaId": data.depaId,
                "depaName": data.depaName,
                "description": data.description,
                "minister": data.minister,
                "tel": data.tel
            }
            popupwin(depa, 'depa');
        }
    });
    //部门结束=============================================================================================================
    //公告开始=============================================================================================================
    annoTable = table.render({
        elem: '#anno'
        , url: '/all/anno'
        , toolbar: '#toolAnno' //开启头部工具栏，并为其绑定左侧模板
        , defaultToolbar: []
        , height: 'full-42'
        , title: '公告数据表'
        , cols: [[
            {type: 'numbers', align: 'center'}
            , {field: 'annoTitle', title: '公告名称', align: 'center'}
            , {
                field: 'annoTime', title: '发布时间', align: 'center', templet: function (d) {
                    return dateFormatter(d.annoTime);
                }
            }
            , {field: 'meName', title: '发布人', align: 'center'}
            , {fixed: 'right', title: '操作', toolbar: '#barMember', align: 'center'}
        ]],
        skin: 'line',
        size: 'lg',
        page: true,
        done: function () {
            $(".layui-table-header tr").css("background-color", "#b0b0b0");
        }
    });

    //监听行工具事件
    table.on('tool(anno)', function (obj) {
        var data = obj.data;
        console.log(data)
        if (obj.event === 'del') {
            layer.confirm('你确定要删除【' + data.annoTitle + '】这个公告吗？', {icon: 3, title: '提示'}, function (index) {
                ajax("/del/anno", {annoId: data.annoId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        } else if (obj.event == 'edit') {
            var a = {
                "tit": "编辑公告",
                "annoId": data.annoId,
                "edit": "y"
            }
            popupwin(a, 'anno');
        } else if (obj.event == 'look') {
            var a = {
                "tit": "查看公告",
                "annoId": data.annoId,
                "edit": "n"
            }
            popupwin(a, 'anno');
        }
    });

    //监听指定开关
    // form.on('switch(switchTest)', function(data){
    //     layer.msg('活动审核：'+ (this.checked ? '通过' : '失败'), {
    //         offset: '6px'
    //     });
    // });
    //公告结束=============================================================================================================
    //计划开始=============================================================================================================
    workTable = table.render({
        elem: '#work'
        , url: '/work/all'
        , toolbar: '#toolWork' //开启头部工具栏，并为其绑定左侧模板
        , defaultToolbar: []
        , height: 'full-42'
        , title: '计划数据表'
        , cols: [
            [
                {title: '编号', type: 'numbers', align: 'center'}
                , {field: 'workName', title: '计划名称', align: 'center'}
                , {
                field: 'submitTime', title: '提交时间', align: 'center', templet: function (d) {
                    return dateFormatter(d.submitTime);
                }
            }
                , {field: 'meName', title: '提交人', align: 'center'}
                , {fixed: 'right', title: '操作', toolbar: '#barWork', align: 'center'}
            ]
        ],
        skin: 'line',
        size: 'lg',
        page: true,
        done: function () {
            $(".layui-table-header tr").css("background-color", "#b0b0b0");
        }
    });

    //监听行工具事件
    table.on('tool(work)', function (obj) {
        var data = obj.data;
        console.log(data)
        if (obj.event === 'del') {
            layer.confirm('你确定要删除【' + data.workName + '】这个计划吗？', {icon: 3, title: '提示'}, function (index) {
                ajax('/work/del', {workId: data.workId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        } else if (obj.event == 'edit') {
            var depa = {
                "action": "/work/update",
                "tit": "查看编辑",
                "workId": data.workId,
                "meName": data.meName,
                "workName": data.workName,
                "workText": data.workText,
            }
            popupwin(depa, 'work');
        }
    });

    //计划结束=============================================================================================================
    //活动开始=============================================================================================================
    activityTable = table.render({
        elem: '#activity'
        , url: '/activity/all'
        , toolbar: '#toolActivity' //开启头部工具栏，并为其绑定左侧模板
        , defaultToolbar: []
        , height: 'full-42'
        , title: '活动数据表'
        , cols: [[
            {title: '编号', type: 'numbers', align: 'center',width:"50"}
            , {field: 'activityName', title: '活动名称', align: 'center',width:"270"}
            , {
                field: 'submitTime', title: '提交时间', align: 'center',width:"170", templet: function (d) {
                    return dateFormatter(d.submitTime);
                }
            }
            , {field: 'faculty', title: '系别',width:"170", align: 'center'}
            , {field: 'department', title: '提交部门',width:"170", align: 'center'}
            , {field: 'approver', title: '审批人',width:"100", align: 'center'}
            , {
                field: 'auditStatus', title: '状态',width:"170", align: 'center', templet: function (d) {
                    return d.auditStatus == 0 ? "审核中..." : d.auditStatus == 1 ? "通过" : "驳回";
                }
            }
            , {fixed: 'right', title: '操作', toolbar: '#barActivity',width:"670", align: 'center'}
        ]],
        skin: 'line',
        size: 'lg',
        page: true,
        limit:13,
        done: function () {
            $(".layui-table-header tr").css("background-color", "#b0b0b0");
        }
    });

    //监听行工具事件
    table.on('tool(activity)', function (obj) {
        var data = obj.data;
        console.log(data)
        if (obj.event === 'del') {
            layer.confirm('你确定要删除【' + data.activityName + '】这个活动吗？', {icon: 3, title: '提示'}, function (index) {
                ajax('/activity/del', {activityId: data.activityId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        } else if (obj.event == 'edit') {
            var a = {
                "tit": "编辑活动",
                "activityId": data.activityId,
                "edit": "y"
            }
            popupwin(a, 'activity');
        } else if (obj.event == 'look') {
            var a = {
                "tit": "查看活动",
                "activityId": data.activityId,
                "edit": "n"
            }
            popupwin(a, 'activity');
        } else if (obj.event == 'through') {
            layer.confirm('你确定通过【' + data.activityName + '】这个活动吗？', {icon: 3, title: '提示'}, function (index) {
                ajax('/activity/through', {activityId: data.activityId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        } else if (obj.event == 'reject') {
            layer.confirm('你确定驳回【' + data.activityName + '】这个活动吗？', {icon: 3, title: '提示'}, function (index) {
                ajax('/activity/reject', {activityId: data.activityId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        } else if (obj.event == 'submit') {
            layer.confirm('你确定提交【' + data.activityName + '】这个活动吗？', {icon: 3, title: '提示'}, function (index) {
                ajax('/activity/submit', {activityId: data.activityId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        }
    });
    form.on('switch(transition-switch)', function(data){
        console.log(data.elem.checked); //开关是否开启，true或者false
    });
    //活动结束=============================================================================================================
    //文件开始=============================================================================================================
    //演示多文件列表
    var uploadListIns = upload.render({
        elem: '#file'
        , elemList: $('#fileList') //列表元素对象
        , url: '/files/upload' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
        , data: {
            visible: function () {
                var val = $('input:radio[name="visible"]:checked').val();
                return val
            }
        }
        , accept: 'file'
        , multiple: true
        , number: 3
        , auto: false
        , bindAction: '#fileListAction'
        , choose: function (obj) {
            var that = this;
            var files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
            //读取本地文件
            obj.preview(function (index, file, result) {
                var tr = $(['<tr id="upload-' + index + '">'
                    , '<td>' + file.name + '</td>'
                    , '<td>' + (file.size / 1014).toFixed(1) + 'kb</td>'
                    , '<td><div class="layui-progress" lay-filter="progress-demo-' + index + '"><div class="layui-progress-bar" lay-percent=""></div></div></td>'
                    , '<td>'
                    , '<button class="layui-btn layui-btn-xs demo-reload layui-hide">重传</button>'
                    , '<button class="layui-btn layui-btn-xs layui-btn-danger demo-delete">删除</button>'
                    , '</td>'
                    , '</tr>'].join(''));

                //单个重传
                tr.find('.demo-reload').on('click', function () {
                    obj.upload(index, file);
                });

                //删除
                tr.find('.demo-delete').on('click', function () {
                    delete files[index]; //删除对应的文件
                    tr.remove();
                    uploadListIns.config.elem.next()[0].value = ''; //清空 input file 值，以免删除后出现同名文件不可选
                });

                that.elemList.append(tr);
                element.render('progress'); //渲染新加的进度条组件
            });
        }
        , done: function (res, index, upload) { //成功的回调
            var that = this;
            if (res.code == '200') { //上传成功
                layer.msg(res.msg)
                var tr = that.elemList.find('tr#upload-' + index)
                    , tds = tr.children();
                // tds.eq(3).html(''); //清空操作
                tr.remove();
                delete that.files[index]; //删除文件队列已经上传成功的文件
                return;
            }
            this.error(index, upload);
        }
        , allDone: function (obj) { //多文件上传完毕后的状态回调
            layer.confirm('文件总数:' + obj.total + "--成功:" + obj.successful + "--失败:" + obj.aborted, {
                icon: 3,
                title: '提示'
            }, function (index) {
                fileTable.reload("fileTable");
                layer.close(index)
            });
        }
        , error: function (index, upload) { //错误回调
            var that = this;
            var tr = that.elemList.find('tr#upload-' + index)
                , tds = tr.children();
            tds.eq(3).find('.demo-reload').removeClass('layui-hide'); //显示重传
        }
        , progress: function (n, elem, e, index) { //注意：index 参数为 layui 2.6.6 新增
            element.progress('progress-demo-' + index, n + '%'); //执行进度条。n 即为返回的进度百分比
        }
    });
    fileTable = table.render({
        elem: '#fileTable'
        , url: '/files/all'
        , toolbar: '#toolFile' //开启头部工具栏，并为其绑定左侧模板
        , defaultToolbar: []
        , height: 'full-170'
        , title: '文件列表'
        , cols: [[
            {title: '编号', type: 'numbers', align: 'center',width:50}
            , {field: 'fileName', title: '文件名称', align: 'center'}
            , {
                field: 'submitTime', title: '提交时间', align: 'center',width:150, templet: function (d) {
                    return dateFormatter(d.submitTime);
                }
            }
            , {field: 'faculty', title: '系别', align: 'center',width:200}
            , {field: 'department', title: '部门', align: 'center',width:150}
            , {field: 'meName', title: '所属人', align: 'center',width:150}
            , {fixed: 'right', title: '操作', toolbar: '#barFile', align: 'center',width:283}
        ]],
        skin: 'line',
        size: 'lg',
        page: true,
        done: function () {
            $(".layui-table-header tr").css("background-color", "#b0b0b0");
        }
    });
    //监听行工具事件
    table.on('tool(fileTable)', function (obj) {
        var data = obj.data;
        if (obj.event == 'del') {
            layer.confirm('你确定要删除【' + data.fileName + '】这个文件吗？', {icon: 3, title: '提示'}, function (index) {
                ajax('/files/del', {fileId: data.fileId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        } else if (obj.event == 'download') {
            var a = document.createElement('a');
            a.setAttribute('href', "/files/download?path=" + data.filePath + "&name=" + data.fileName);
            a.setAttribute('id', 'startTelMedicine');

            // 防止反复添加
            if (document.getElementById('startTelMedicine')) {
                document.body.removeChild(document.getElementById('startTelMedicine'));
            }
            document.body.appendChild(a);
            a.click();
            // window.open("/files/download?path="+data.filePath+"&name="+data.fileName);
        } else if (obj.event == 'preview') {
            var originUrl = "http://127.0.0.1:8088" + data.filePath; //要预览文件的访问地址
            console.log(originUrl)
            window.open('http://127.0.0.1:8012/onlinePreview?url=' + encodeURIComponent(Base64.encode(originUrl)));
        }
    });
    //文件结束=============================================================================================================
    //物品开始=============================================================================================================
    //执行一个laydate实例
    laydate.render({
        elem: '#purchaseDate' //指定元素
    });
    itemTable = table.render({
        elem: '#items'
        , url: '/items/all'
        , toolbar: '#toolItem' //开启头部工具栏，并为其绑定左侧模板
        , defaultToolbar: ['exports', 'print']
        , height: 'full-42'
        , title: '计划数据表'
        , cols: [[
            {title: '编号', type: 'numbers', align: 'center'}
            , {field: 'itemName', title: '物品名称', align: 'center'}
            , {
                field: 'buyDate', title: '购买日期', align: 'center', templet: function (d) {
                    return dateFormatter(d.buyDate);
                }
            }
            , {field: 'price', title: '单价', align: 'center'}
            , {field: 'itemNumber', title: '数量', align: 'center'}
            , {field: 'lentNumber', title: '借出数量', align: 'center'}
            , {field: 'itemDescribe', title: '物品描述', align: 'center', edit: 'text'}
            , {fixed: 'right', title: '操作', toolbar: '#barItem', align: 'center'}
        ]],
        skin: 'line',
        size: 'lg',
        page: true,
        done: function () {
            $(".layui-table-header tr").css("background-color", "#b0b0b0");
        }
    });
    //监听行工具事件
    table.on('tool(items)', function (obj) {
        var data = obj.data;
        console.log(data)
        if (obj.event === 'del') {
            layer.confirm('你确定要删除【' + data.itemName + '】这个物品吗？', {icon: 3, title: '提示'}, function (index) {
                ajax('/items/del', {itemId: data.itemId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        } else if (obj.event == 'edit') {
            data.action = "/items/update";
            data.tit = "编辑物品信息";
            console.log(data)
            popupwin(data, 'item');
        }
    });
    //物品结束=============================================================================================================
    //物品记录开始=============================================================================================================
    recordTable = table.render({
        elem: '#record'
        , url: '/record/all'
        , toolbar: '#toolRecord' //开启头部工具栏，并为其绑定左侧模板
        , defaultToolbar: ['exports', 'print']
        , height: 'full-42'
        , title: '计划数据表'
        , cols: [[
            {title: '编号', type: 'numbers', align: 'center'}
            , {field: 'itemName', title: '物品名称', align: 'center'}
            , {
                field: 'lendTime', title: '借出时间', align: 'center', templet: function (d) {
                    return dateFormatter(d.lendTime);
                }
            }
            , {field: 'department', title: '部门', align: 'center'}
            , {field: 'meName', title: '借物人', align: 'center'}
            , {
                field: 'isReturn', title: '是否归还', align: 'center', templet: function (d) {
                    return d.isReturn == '0' ? '待归还' : '已归还';
                }
            }
            , {field: 'number', title: '数量', align: 'center'}
            , {fixed: 'right', title: '操作', toolbar: '#barRecord', align: 'center'}
        ]],
        skin: 'line',
        size: 'lg',
        page: true,
        done: function () {
            $(".layui-table-header tr").css("background-color", "#b0b0b0");
        }
    });

    //监听行工具事件
    table.on('tool(record)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('你确定要删除【编号：' + data.numbers + '】这条记录吗？', {icon: 3, title: '提示'}, function (index) {
                ajax('/record/del', {recordId: data.recordId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        } else if (obj.event == 'return') {
            layer.confirm('请确认归还物品：【' + data.itemName + '】,数量：【' + data.number + '】是否正确', {
                icon: 3,
                title: '提示'
            }, function (index) {
                ajax('/record/return', {recordId: data.recordId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        }
    });
    form.on('select(recordDepa)', function (data) {
        console.log(data)
        ajax('/record/getDepaMemberName', {depaId: data.value}, 'get').then(function (res) {
            console.log(res.data)
            var optionstring = "";
            $.each(res.data, function (i, item) {
                optionstring += "<option value=\"" + item.meId + "\" >" + item.meName + "</option>";
            });
            $("#recordMeName").html('<option value="" selected="">请选择</option>' + optionstring);
            form.render('select', 'recordForm'); //这个很重要
        })
    });
    //物品记录结束=============================================================================================================
    //消息开始=============================================================================================================
    msgTable = table.render({
        elem: '#message'
        ,url:'/message/all'
        , toolbar: '#toolMessage' //开启头部工具栏，并为其绑定左侧模板
        , defaultToolbar: []
        , height: 'full-42'
        , title: '消息数据表'
        , cols: [[
            {title: '编号', type: 'numbers', align: 'center'}
            , {field: 'messageTitle', title: '标题', align: 'center'}
            , {field: 'letterTime', title: '发信时间', align: 'center',templet: function (d) {
                    return dateFormatter(d.letterTime);
                }}
            , {field: 'letterName', title: '发信人', align: 'center'}
            , {field: 'scope', title: '收信人', align: 'center',templet:function (d) {
                    return d.scope == '0'?'主席': d.scope == '-1'?'所有' : d.scope == '1'?'副主席' : d.scope == '1'?'部长':'部门';
                }}
            , {field: 'state', title: '状态', align: 'center',templet:function (d) {
                    return d.state == '0'? '已发送':'发送失败';
                }}
            , {fixed: 'right', title: '操作', toolbar: '#barMessage', align: 'center'}
        ]],
        skin: 'line',
        size: 'lg',
        page: true,
        done: function () {
            $(".layui-table-header tr").css("background-color", "#b0b0b0");
        }
    });

    //监听行工具事件
    table.on('tool(message)', function (obj) {
        var data = obj.data;
        console.log(data)
        if (obj.event === 'del') {
            layer.confirm('你确定要删除【' + data.messageTitle + '】这个公告吗？', {icon: 3, title: '提示'}, function (index) {
                ajax('/message/del', {messageId: data.messageId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload(res.data);
                })
            });
        } else if (obj.event == 'edit') {
            data.tit = "查看消息"
            popupwin(data,'msg');
        }
    });
    //消息结束=============================================================================================================
    //部门情况开始=============================================================================================================
    DepaInfo=table.render({
        elem: '#departmentsInfo'
        ,url:'/departmentsInfo/all'
        ,toolbar: '#toolbarDepaInfo' //开启头部工具栏，并为其绑定左侧模板
        ,defaultToolbar: []
        , height: 'full-240'
        ,title: '用户数据表'
        ,cols: [[
            {type: 'radio', fixed: 'left'}
            , {field: 'meId', title: '学号', align: 'center'}
            , {field: 'meName', title: '姓名', align: 'center'}
            , {field: 'sex', title: '性别', align: 'center'}
            , {field: 'faculty', title: '院系', align: 'center'}
            , {field: 'major', title: '专业', align: 'center'}
            , {field: 'grade', title: '班级', align: 'center'}
            , {field: 'tel', title: '电话', align: 'center'}
            , {field: 'department', title: '部门', align: 'center', sort: true}
            , {field: 'position', title: '职位', align: 'center', sort: true}
            , {
                field: 'joinTime', title: '加入时间', align: 'center', templet: function (d) {
                    return dateFormatter(d.joinTime);
                }
            }
            ,{fixed: 'right', title:'操作', toolbar: '#barDepaInfo', width:150}
        ]],
        skin: 'line',
        size: 'lg',
        page: true,
        limit:11,
        done: function () {
            $(".layui-table-header tr").css("background-color", "#b0b0b0");
        }
    });
    //监听行工具事件
    table.on('tool(departmentsInfo)', function(obj){
        var data = obj.data;
        if(obj.event === 'del'){
            layer.confirm('你确定要删除【' + data.meName + '】这个成员吗？', {icon: 3, title: '提示'}, function (index) {
                ajax('/departmentsInfo/del', {meId: data.meId}, 'post').then(function (res) {
                    layer.msg(res.msg)
                    table.reload("departmentsInfo");
                })
            });
        }
    });

    form.on('select(info_faculty)', function (data) {
        console.log(data)
        selectByName(data.value)
        form.render('select', 'memberAddForm'); //这个很重要
    });
    //部门情况结束=============================================================================================================

    //清空表单
    $(".clean").on('click', function () {
        $("form")[0].reset();

        $(".xm-select-parent .xm-select").attr("title", '')
        $("div[xm-select-skin=default] .xm-select-title div.xm-select-label>span").remove()
        $(".xm-select-parent .xm-select--suffix input").attr("placeholder", "请选择");
        $(".xm-select-parent .xm-form-select dl dd").removeClass("xm-select-this")

    })

    /**提交form表单*/
    form.on('submit(formDemo)', function (data) {
        var obj = data.field
        console.log(obj)
        ajax(data.form.action, obj, data.form.method).then(function (res) {
            layer.msg(res.msg, {time: 1000}, function () {
                layer.closeAll();
                table.reload(res.data);
            });
        })
        return false;
    });

});


//联动框
function linkage(){
    //server模式 联动  系
    formSelects.config('faculty', {
        keyName: 'name',
        keyVal: 'val'
    }).data('faculty', 'server', {
        url: "/member/allFaculty"
    });
    formSelects.on('faculty', function(id, vals, val, isAdd, isDisabled){
        // 专业
        if (isAdd){
            formSelects.config('major', {
                keyName: 'name',
                keyVal: 'val'
            }).data('major', 'server', {
                url: "/member/getMajorName?faculty="+val.name
            });

            formSelects.on('major', function(id, vals, val, isAdd, isDisabled){
                //班级
                if (isAdd){
                    formSelects.config('grade', {
                        keyName: 'name',
                        keyVal: 'val'
                    }).data('grade', 'server', {
                        url: "/member/getGradeName?major="+val.name
                    });
                }
                //如果return false, 那么将取消本次操作
            });
        }
        //如果return false, 那么将取消本次操作
    });

}
// 条件查询
function ConditionsQuery(th){
    var type = $(th).attr("data-type")
    var data = form.val();
    if (type == 'member'){
        var faculty = formSelects.value('faculty', 'nameStr');
        var major = faculty.length > 0 ? formSelects.value('major', 'nameStr'):"";
        var grade = major.length > 0 ? formSelects.value('grade', 'nameStr') : "";

        var student = {
            "me_id":data.me_id,
            "me_name":data.me_name,
            "faculty":faculty,
            "major":major,
            "grade":grade,
            "department":data.department,
            "position":data.position
        }
        // console.log(student)
        tableMemberIns.reload({
            where: student  //设定异步数据接口的额外参数，任意设
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        });
        linkage()
    }
    if (type == 'depa'){
        var depa={
            depa_name:data.depa_name,
            minister:data.depa_m
        }
        console.log(depa)
        depaTable.reload({
            where: depa
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        })
    }
    if (type == 'anno'){
        var anno={
            anno_title:data.annoTitle,
            me_name:data.meName
        }
        console.log(anno)
        annoTable.reload({
            where: anno
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        })
    }
    if (type == 'work'){
        var work={
            work_name:data.name
        }
        workTable.reload({
            where:work
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        })
    }
    if (type == 'activity'){
        var activity={
            activity_name:data.activityName,
            department:data.department
        }
        activityTable.reload({
            where:activity
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        })
    }
    if (type =='file'){
        var file={
            file_name:data.fileName,
            me_name:data.meName
        }
        fileTable.reload({
            where:file
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        })
    }
    if (type=='item'){
        var item={
            item_name:data.itemName_,
        }
        itemTable.reload({
            where:item
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        })
    }
    if (type == 'msg'){
        var msg = {
            message_title:data.messageTitle_
        }
        msgTable.reload({
            where:msg
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        })
    }
    if (type == 'depaInfo'){
        var d={
            "me_id":data.me_id,
            "me_name":data.me_name,
        }
        DepaInfo.reload({
            where:d
            ,page: {
                curr: 1 //重新从第 1 页开始
            }
        })
    }
}

function add(obj){
    if (obj.type=='depa'){
        var d = {
            action: "/add/depa",
            tit: "添加部门"
        }
        popupwin(d,obj.type)
    }
    if (obj.type=='role'){
        var r = {
            action:"/add/role",
            tit:"添加角色"
        }
        popupwin(r,obj.type);
    }
    if (obj.type=='anno'){
        var o = {
            tit: "发布公告"
        }
        popupwin(o,obj.type);
    }
    if (obj.type =='work'){
        var w = {
            action: "/work/add",
            tit: "新建计划"
        }
        popupwin(w,obj.type);
    }
    if (obj.type=='activity'){
        var o = {
            tit: "发布活动"
        }
        popupwin(o,obj.type);
    }
    if (obj.type == 'item'){
        var o = {
            action:"/items/add",
            tit: "新增物品"
        }
        popupwin(o,obj.type);
    }
    if (obj.type=='record'){
        var o = {
            tit: "新增记录"
        }
        popupwin(o,obj.type);
    }
    if (obj.type=='msg'){
        var o = {
            tit: "发送消息"
        }
        popupwin(o,obj.type);
    }
}
/**修改*/
function popupwin(obj,type){
    layui.use(['layer'],function(){
        var layer = layui.layer;
        var $ = layui.jquery;
        if (type=='depa'){
            $('#depaEditForm').attr('action', obj.action);
            if (Object.keys(obj).length > 3) {
                $('#depaId').val(obj.depaId);
                $('#minister').val(obj.minister);
                $('#tel').val(obj.tel);
                $('#tel').attr("lay-verify","phone");
                $('#depaName').val(obj.depaName);
                $('#description').val(obj.description);
            } else {
                $("input").val("");
            }
            layer.open({
                type: 1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                scrollbar: false,
                area: '380px',//宽高
                title: obj.tit,
                content: $('#depaEditForm')
            });
            return;
        }
        if (type=='role'){
            $('#roleEditForm').attr( 'action' ,obj.action);
            if (Object.keys(obj).length > 3){
                $('#roleId').val(obj.roleId) ;
                $('#roleName').val(obj.roleName) ;
                $('#description').val(obj.rdescription);
            }else{
                $("input").val("");
            }
            layer.open({
                type:1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                scrollbar: false,
                area:'380px',//宽高
                title:obj.tit,
                content:$('#roleEditForm')
            });
            return;
        }
        if (type=='anno'){
            console.log(obj)
            layer.full(
                layer.open({
                    type: 2,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                    // maxmin: true,
                    title: obj.tit,
                    content: ['/view-edit?annoId='+obj.annoId+'&edit='+obj.edit, 'no'],
                    end:function (){
                        table.reload('anno');
                    }
                })
            );
            return;
        }
        if (type=='work'){

            $('#workEditForm').attr('action', obj.action);
            if (Object.keys(obj).length > 2) {
                $('#workId').val(obj.workId);
                $('#meName').val(obj.meName);
                $('#workName').val(obj.workName);
                $('#workText').val(obj.workText);
            } else {
                $("input").val("");
            }
            layer.open({
                type: 1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                scrollbar: false,
                area: '400px',//宽高
                title: obj.tit,
                content: $('#workEditForm')
            });
            return;
        }
        if (type=='activity'){
            layer.full(
                layer.open({
                    type: 2,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                    // maxmin: true,
                    title: obj.tit,
                    content: ['/activity/view-edit?activityId='+obj.activityId+'&edit='+obj.edit, 'no'],
                    end:function (){
                        table.reload('activity');
                    }
                })
            );
            return;
        }
        if (type == 'item'){
            $('#itemEditForm').attr('action', obj.action);
            if (Object.keys(obj).length > 2) {
                $('#itemId').val(obj.itemId);
                $('#itemName').val(obj.itemName);
                $('#price').val(obj.price);
                $('#itemNumber').val(obj.itemNumber);
                $('#itemDescribe').val(obj.itemDescribe);
            } else {
                $("input").val("");
            }
            layer.open({
                type: 1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                scrollbar: false,
                area: '400px',//宽高
                title: obj.tit,
                content: $('#itemEditForm')
            });
            return;
        }
        if (type == 'record'){
            $("input").val("");
            layer.open({
                type: 1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                scrollbar: false,
                area: '400px',//宽高
                title: obj.tit,
                content: $('#recordEditForm'),
                success: function(layero, index){
                    // $("#recordEditForm").load('/record/getRecordInfo',function (res){
                    //     console.log(res)
                    // });
                }
            });
            return;
        }
        if (type == 'msg'){
            if (Object.keys(obj).length >4){
                $('#messageId').val(obj.messageId)
                $('#messageTitle').val(obj.messageTitle)
                $("input:radio[value="+obj.scope+"]").attr('checked','true');
                $('#messageText').val(obj.messageText)
                $('#msgbtn').attr("disabled","disabled");
            }else{
                $("input").val("");
                $('textarea').val("")
            }
            layer.open({
                type:1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                scrollbar: false,
                area: '500px',//宽高
                title:obj.tit,
                content:$('.message'),
                success:function (){
                    var count = $('input[name=scope]').length;
                    if (count == 4){
                        var i = -1;
                        $('input[name=scope]').each(function (){
                            $(this).val(i)
                            i +=1;
                        })
                    }
                    if (count == 2){
                        var i = 1;
                        $('input[name=scope]').each(function (){
                            $(this).val(i)
                            i +=1;
                        })
                    }
                    if (count == 1 && $('input[name=scope]').attr('title')=='部长'){
                        var i = 2;
                        $('input[name=scope]').each(function (){
                            $(this).val(i)
                            i +=1;
                        })
                    }
                    if (count == 1 && $('input[name=scope]').attr('title')=='部门'){
                        var i = 3;
                        $('input[name=scope]').each(function (){
                            $(this).val(i)
                            i +=1;
                        })
                    }
                }
            })
            return;
        }
        if (type == 'depaInfo'){
            $("input").val("");
            $('#info_major').html("<option value=\"\" selected=\"\">请选择</option>");
            layer.open({
                type:1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                scrollbar: false,
                area: '400px',//宽高
                title:obj.tit,
                content:$('#memberAddForm'),
                success:function (){
                    $("input[title='男']").attr('value',"男")
                    $("input[title='女']").attr('value',"女")
                    select()
                    form.render('select', 'memberAddForm'); //这个很重要
                }
            })
            return;
        }
        if (type == 'prop'){
            var index = layer.open({
                type:1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                scrollbar: false,
                area: '400px',//宽高
                title:obj.tit,
                content:$('#propagandaDiv'),
                success:function (){
                }
            })
            //常规使用 - 普通图片上传
            var propaganda = upload.render({
                elem: '#propaganda'
                ,url: '/activity/upload' //此处用的是第三方的 http 请求演示，实际使用时改成您自己的上传接口即可。
                ,data:{activityId:obj.activityId}
                ,accept:'images'
                ,number:1
                ,before: function(obj){
                    //预读本地文件示例，不支持ie8
                    obj.preview(function(index, file, result){
                        $('#demo1').attr('src', result); //图片链接（base64）
                    });

                    element.progress('demo', '0%'); //进度条复位
                    layer.msg('上传中', {icon: 16, time: 0});
                }
                ,done: function(res){
                    layer.msg(res.msg,function (){
                        //上传成功的一些操作
                        $('#demoText').html(''); //置空上传失败的状态
                        layer.close(index)
                        table.reload('activity');
                    })
                }
                ,error: function(){
                    //演示失败状态，并实现重传
                    var demoText = $('#demoText');
                    demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
                    demoText.find('.demo-reload').on('click', function(){
                        propaganda.upload();
                    });
                }
                //进度条
                ,progress: function(n, elem, e){
                    element.progress('demo', n + '%'); //可配合 layui 进度条元素使用
                    if(n == 100){
                        layer.msg('上传完毕', {icon: 1});
                    }
                }
            });

            return;
        }
    });
}

/**格式化时间*/
function dateFormatter(date) {
    //Object对象转为日期格式
    var date = new Date(date);
    var strDate = date.getFullYear() + "-";
    var month = date.getMonth() + 1;
    var day = date.getDate();
    //格式化日期,月日时分秒保持两位
    strDate = strDate + (month > 9 ? month : "0" + month) + "-"
        + (day > 9 ? day : "0" + day) + "&nbsp"
    return strDate;
}

/**格式化角色名称*/
function rn(name){
    if (name == 'admin') return "管理员";
    if (name == 'chairman') return "主席";
    if (name == 'vice-chairman') return "副主席";
    if (name == 'warehouse') return "物品管理员";
    if (name == 'minister') return "部长";
    if (name == 'member') return "成员";
}
/**分配功能*/
function toSetFun(rid,roleName){
    var insTb;
    layer.open({
        type:1,
        btn: ['确认', '关闭'],
        area:['500px','500px'],
        title: '分配功能',
        content: $('#setFun'),
        success:function (){
            $("#set_roleId").val(rid)
            $("#set_roleName").val(roleName)
            layui.config({
                base: '/treetable-lay/'
            }).use('treeTable',function (){
                var treeTable = layui.treeTable;
                insTb = treeTable.render({
                    elem:'#funGrid',//指定渲染位置
                    url:'/all/fun',
                    cols: [
                        [
                            {type:'numbers'},
                            {type:'checkbox'},
                            {title:'功能名称',field:'funName', align: 'center'},
                            {title:'功能类别',field:'funType', align: 'center',templet:'#typeText'}
                        ]
                    ],
                    tree:{//设置查询数据之间的关系
                        iconIndex:2,
                        idName:'funId',
                        pidName:'pid',
                        isPidData:true,//按照id和pid的关系，实现子父级别
                    },
                    done:function (){
                        ajax('/findFidByRole',{roleId:$("#set_roleId").val()},'get').then(function (res){
                            insTb.setChecked(res.data);
                        })
                    }
                });
            })
        },
        yes:function (index, layero){
            var cs = insTb.checkStatus();
            var funIds=[];
            cs.forEach(c =>{
                funIds.push(c.funId)
            })
            var obj ={
                roleId:rid,
                funIds:funIds.toString()
            }
            ajax('/update/roleByFunid',obj,'post').then(function (res){
                layer.msg(res.msg)
            })
        },
        btn2: function (index, layero){
            layer.close(index)
        }
    })

}
/**删除消息*/
function delMsg(th){
    ajax('/message/delMsg',{messageId:$(th).attr("data")},'post').then(function (res){
        if (res.data > 0){
            layer.msg(res.msg,function (){
                $(th).parent().parent().remove()
            })
        }
    })
}
/**更新消息条数*/
function mewMsg(){
    ajax('/message/getNewMsg',{},'get').then(function (res){
        if (res.data > 0) {
            $("#newMsg").show();
            $("#newMsg").html(res.data)
        }else {
            $("#newMsg").hide();
        }
    })
}
/**部长换届*/
function transitionMinister(){
   var data =  table.checkStatus('departmentsInfo').data
    if (data.length>0){
        ajax('/departmentsInfo/transition/minister',{meId:data[0].meId},'post').then(function (res){
            layer.msg(res.msg,function (){
                $(window.parent.document).find("#logout")[0].click()
            })

            // table.reload("departmentsInfo");
        })
    }else {
        layer.msg("请选择候选人");
    }
}
/**主席换届*/
function transitionChairman(s){
    ajax('/departmentsInfo/getMinisterInfo',{'chairmanType':s},'post').then(function (res){

        var index = layer.open({
            type:1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
            scrollbar: false,
            btn: ['确定'],
            area: ['400px'],//宽高
            title: s==3?'主席换届':'副主席换届',
            content: $('#transitionChairman'),
            success:function (){
                var radio = "";
                $.each(res.data, function (i, item) {
                    radio += "<span style='display: block;height: 35px;line-height: 35px;padding: 5px;width: 80px;'>"
                    radio += "<input type='radio' name='transitionChairman' value='"+item.meId+"' title='"+item.faculty+"' >"+item.meName+"</span>"
                });
                $("#transitionChairman .layui-form-item .layui-input-inline").html(radio)
            },
            yes: function(index, layero){
                var id = $("input[name='transitionChairman']:checked").val()
                if(!id){
                    layer.close(index)
                    return
                }
                ajax('/departmentsInfo/transition/chairman'+s,{meId:id},'post').then(function (res){
                    layer.msg(res.msg,function (){
                        $(window.parent.document).find("#logout")[0].click()
                    })
                    // table.reload("departmentsInfo");
                    // layer.close(index);

                })
            }
        })
    })
}

/** 活动报名情况*/
function apply(obj){
    var activityId = obj.activityId;
    layer.open({
        type:1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
        scrollbar: false,
        area: ['1000px','500px'],//宽高
        title:'报名情况',
        content:$('#enrollmentInfo'),
        success:function (){
            $("#enrollmentInfo").load('/activity/getEnrollment?activityId='+activityId);
        }
    })

}
/** 截止时间 */
function cutOffTime(activityId){
    var index =layer.open({
        type:1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
        scrollbar: false,
        offset: '100px',
        area: '273px',//宽高
        title:'选择截止日期',
        content:'<div><input type="text" placeholder="选择截止日期--yyyy-MM-dd" class="layui-input" id="cutOffTime"></div>',
        success:function (){
            laydate.render({
                elem: '#cutOffTime' //指定元素
                ,min:  0 //7天前
                ,max:  3 //7天后
                ,done: function(value, date, endDate){
                    layer.close(index)
                    ajax('/activity/updateCutOffTime',{activityId:activityId,cutOffDate:value},'post').then(function (res){
                        layer.msg(res.msg)
                        table.reload(res.data);
                    })
                }
            });
            laydate.render({
                elem: '#cutOffTime' //指定元素
                ,min:  0 //7天前
                ,max:  3 //7天后
            });
        }
    })
}

/** 判断角色是否重复*/
function isRoleExist(roleIds){
    var num = 0;
    if(roleIds.indexOf(2) != -1){
        num ++
    }
    if(roleIds.indexOf(6) != -1){
        roleIds[0] = roleIds.splice(roleIds.length-1,1,roleIds[0])[0]
        num ++
    }
    if(roleIds.indexOf(3) != -1){
        num ++
    }
    if(roleIds.indexOf(4) != -1){
        num ++
    }
    return num;
}
/**关闭弹窗*/
function closeEditWin(){
    layui.use('layer',function(){
        var layer = layui.layer ;
        layer.closeAll();
    });
}

function ajax(url,data,type){
    return new Promise(function(resolve, reject) {
        $.ajax({
            type: type,
            url: url,
            data: data,
            synch:true,
            dataType:'json',
            success:function(res){
                resolve(res)
            },
            error: function(res) {
                console.log(res)
            }
        });
    });
}




