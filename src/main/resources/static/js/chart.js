window.onload = function (){
    echart01()
    echart02()
}
function echart01() {
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('online'));
    ajax('/departmentsInfo/getOnlineNum',{},'post').then(function (res){
        let total = 0;
        for (let i in res.data) {
            total += res.data[i].value
        }
        let option = {
            title: {
                zlevel: 0,
                text: [
                    '{value|' + total + '}',
                    '{name|总人数}',
                ].join('\n'),
                rich: {
                    value: {
                        color: '#303133',
                        fontSize: 30,
                        fontWeight: 'bold',
                        lineHeight: 30,
                    },
                    name: {
                        color: '#909399',
                        lineHeight: 10
                    },
                },
                top: 'center',
                left: '145',
                textAlign: 'center',
                textStyle: {
                    rich: {
                        value: {
                            color: '#303133',
                            fontSize: 30,
                            fontWeight: 'bold',
                            lineHeight: 30,
                        },
                        name: {
                            color: '#909399',
                            lineHeight: 10
                        },
                    },
                },
            },
            tooltip: { // 悬停指示
                trigger: 'item',
                formatter: "{b}: {c} "
            },
            series: [
                {
                    name: '访问来源',
                    type: 'pie',
                    radius: ['80%', '84%'],
                    center: [150, '50%'],
                    stillShowZeroSum: false,
                    avoidLabelOverlap: false,
                    zlevel: 1,
                    label: {
                        normal: {
                            padding: [30, 30, 30, 30],
                            backgroundColor: '#fff',
                            show: false,
                            position: 'center',
                            formatter: [
                                '{value|{c}}',
                                '{name|{b}}'
                            ].join('\n'),
                            rich: {
                                value: {
                                    color: '#303133',
                                    fontSize: 30,
                                    fontWeight: 'bold',
                                    lineHeight: 30,
                                },
                                name: {
                                    color: '#909399',
                                    lineHeight: 10
                                },
                            },
                        },
                        emphasis: {
                            show: true,
                            textStyle: {
                                fontSize: '16',
                                fontWeight: 'bold'
                            }
                        }
                    },
                    data: res.data
                }
            ],
            color: ['#12f91b','#a5a3a5']
        };
        myChart.setOption(option);
    })
}

function echart02() {
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('sex'));
    ajax('/departmentsInfo/getSexNum',{},'post').then(function (res){
        let total = 0;
        for (let i in res.data) {
            total += res.data[i].value
        }
        let option = {
            title: {
                zlevel: 0,
                text: [
                    '{value|' + total + '}',
                    '{name|总人数}',
                ].join('\n'),
                rich: {
                    value: {
                        color: '#303133',
                        fontSize: 30,
                        fontWeight: 'bold',
                        lineHeight: 30,
                    },
                    name: {
                        color: '#909399',
                        lineHeight: 10
                    },
                },
                top: 'center',
                left: '145',
                textAlign: 'center',
                textStyle: {
                    rich: {
                        value: {
                            color: '#303133',
                            fontSize: 30,
                            fontWeight: 'bold',
                            lineHeight: 30,
                        },
                        name: {
                            color: '#909399',
                            lineHeight: 10
                        },
                    },
                },
            },
            tooltip: { // 悬停指示
                trigger: 'item',
                formatter: "{b}: {c} "
            },
            series: [
                {
                    name: '访问来源',
                    type: 'pie',
                    radius: ['80%', '84%'],
                    center: [150, '50%'],
                    stillShowZeroSum: false,
                    avoidLabelOverlap: false,
                    zlevel: 1,
                    label: {
                        normal: {
                            padding: [30, 30, 30, 30],
                            backgroundColor: '#fff',
                            show: false,
                            position: 'center',
                            formatter: [
                                '{value|{c}}',
                                '{name|{b}}'
                            ].join('\n'),
                            rich: {
                                value: {
                                    color: '#303133',
                                    fontSize: 30,
                                    fontWeight: 'bold',
                                    lineHeight: 30,
                                },
                                name: {
                                    color: '#909399',
                                    lineHeight: 10
                                },
                            },
                        },
                        emphasis: {
                            show: true,
                            textStyle: {
                                fontSize: '16',
                                fontWeight: 'bold'
                            }
                        }
                    },
                    data: res.data
                }
            ],
            color: ['#410adf','#f468a3']
        };
        myChart.setOption(option);
    })

}


