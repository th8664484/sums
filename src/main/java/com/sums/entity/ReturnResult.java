package com.sums.entity;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReturnResult {
    @JSONField(ordinal = 1)
    private String code; //解析接口状态
    @JSONField(ordinal = 2)
    private String msg; //解析提示文本
    @JSONField(ordinal = 3)
    private Long count; //解析数据长度
    @JSONField(ordinal = 4)
    private Object data; //解析数据列表

    public ReturnResult(){}
    public ReturnResult(String code,String msg){
        this.code = code;
        this.msg = msg;
    }
    public ReturnResult(String code,String msg,Object data){
        this.code = code;
        this.msg = msg;
        this.data = data;
    }
    public ReturnResult(String code,String msg,Long count,Object data){
        this.code = code;
        this.msg = msg;
        this.count = count;
        this.data = data;
    }
}
