var data = [
    {
        name:"计算机系",
        value:['大数据管理与应用','网络与新媒体','数据科学与大数据技术','数字媒体技术专业','软件工程专业']
    },
    {
        name:"水利工程系",
        value:['农业水利工程','水利水电工程专业','给排水科学与工程','测绘工程专业','水利工程专业']
    },
    {
        name:"土木工程系",
        value:['土木工程专业','建筑环境与能源应用工程专业','供热通风与空调工程专业','建筑工程技术专业','建设工程监理专业']
    },
    {
        name:"交通工程系",
        value:['道路桥梁与渡河工程专业','勘查技术与工程专业','工程造价专业','交通工程专业','房地产开发与管理专业']
    },
    {
        name:"电力工程系",
        value:['电气工程及其自动化','机械电子工程','机械设计制造及其自动化','智能电网控制工程','电力系统自动化技术']
    },
    {
        name:"电气自动化系",
        value:['自动化专业','通信工程专业','电子信息工程技术专业','通信技术专业','电气自动化技术专业']
    },
    {
        name:"经济贸易系",
        value:['国际商务专业介绍','跨境电子商务专业','审计学专业','财务管理专业介绍','营销专业介绍']
    },
    {
        name:"机械工程系",
        value:['机器人工程','机械电子工程','机械设计制造及其自动化']
    },
]

function select(){
    var optionstring = "";
    $.each(data, function (i, item) {
        optionstring += "<option value=\"" + item.name + "\" >" + item.name + "</option>";
    });
    $("#info_faculty").html('<option value="" selected="">请选择</option>' + optionstring);
}
function selectByName(name){
    var optionstring = "";
    $.each(data, function (i, item) {
        if (item.name == name){
            $.each(item.value,function (i,item){
                optionstring += "<option value=\"" + item + "\" >" + item + "</option>";
            })
        }
    });
    $("#info_major").html('<option value="" selected="">请选择</option>' + optionstring);
}
