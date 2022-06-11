layui.config({
    base: '/treetable-lay/'
}).use('treeTable',function (){
    var treeTable = layui.treeTable;

     treeTable.render({
        elem:'#funGrid',//指定渲染位置
        url:'/all/fun',//使用ajax技术，请求表格中的数据
        toolbar: '#permissionAddBtn' //开启头部工具栏，并为其绑定左侧模板
        ,defaultToolbar: []
        , height: 'full-42'
        ,cols:[[      //按照什么格式展示数据
            {type:'numbers'},
            {type:'checkbox'},
            {title:'功能名称',field:'funName', align: 'center'},
            {title:'功能类别',field:'funType', align: 'center',templet:'#typeText'},
            {title:'URL',field:'funHref', align: 'center'},
            {title:'权限标识',field:'funAuth', align: 'center'},
            {title:'操作',width: 260,templet:'#rowBtns', align: 'center'}
        ]],
        tree:{//设置查询数据之间的关系
            iconIndex:2,
            idName:'funId',
            pidName:'pid',
            isPidData:true,//按照id和pid的关系，实现子父级别
        },
        size:'lg',
        done: function(res, curr, count){
            console.log(res);
            tablePermissionIns = res;
        }
    });
    //监听行工具事件
    treeTable.on('tool(funGrid)', function(obj){
        var data = obj.data;
        console.log(obj.data)
        if(obj.event === 'add'){
            var fun ={
                "action":"/add/fun",
                "tit":'新建功能',
                "data":{
                    "pid":data.funId,
                    "pname":data.funName
                }
            };
            popupwin(fun)
        } else
        if (obj.event === 'detele'){
            layer.confirm('你确定要删除【' + data.funName + '】这个功能吗？', {icon: 3, title: '提示'}, function (index) {
                ajax("/del/fun",{funId:data.funId},"post")
                layer.close(index);
            });
        }else if (obj.event === 'edit'){
            var fun = {
                "action":"/update/fun",
                "tit":'修改功能',
                "data":data
            }
            popupwin(fun)
        }
    });

    /**提交form表单*/
    form.on('submit(formDemo)', function(data){
        var obj = data.field
        ajax(data.form.action,obj,data.form.method)
        return false;
    });
})

function add(obj){
    var fun ={
        "action":"/add/fun",
        "tit":'新建功能',
        "data":{
            "pid":obj.pid,
            "pname":obj.pname
        }
    };
    popupwin(fun)
}
/**修改*/
function popupwin(obj){
    layui.use(['layer'],function(){
        var layer = layui.layer;
        var $ = layui.jquery;
        if (Object.keys(obj.data).length >4 ){
            $('#funAddForm').attr( 'action' ,obj.action);
            $('#fid').val(obj.data.funId);
            $('#funName').val(obj.data.funName);
            $('#funHref').val(obj.data.funHref);
            $('#funAuth').val(obj.data.funAuth);
            var radio = $("input:radio");
            var radioLength = radio.length;
            for (var i = 0; i < radioLength; i++) {
                if (obj.data.funType == radio[i].value) {
                    $(radio[i]).next().click();
                }
            }
            $('#pid').val(obj.data.pid);
            $('#pname').val(getPname(obj.data.pid));
        }
        else {
            $('#funAddForm').attr( 'action' ,obj.action);
            $('#pid').val(obj.data.pid);
            $('#pname').val(obj.data.pname);
            // $('#fid').remove();
        }
        layer.open({
            type:1,//5种层类型。可传入的值有：0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
            offset: 'auto',
            scrollbar: false,
            area:'380px',//宽高
            title:obj.tit,
            content:$('#funAddForm')
        });

    });
}

function getPname(pid) {
    for (let i = 0; i < tablePermissionIns.length; i++) {

        if (tablePermissionIns[i].funId == pid){
            return tablePermissionIns[i].funName;
        }
        var children = tablePermissionIns[i].children
        for (let j=0;j<children.length;j++){
            if (children[j].funId == pid){
                return children[j].funName;
            }
        }
    }
    return "根菜单";
}

function ajax(url,data,type){
    $.ajax({
        type: type,
        url: url,
        data: data,
        synch:true,
        dataType:'json',
        success:function(res){
            layer.msg(res.msg,{time:1000},function (){
                location.reload()
            });
        },
        error:function (res){
            console.log(res)
        }
    });
}
