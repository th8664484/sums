package com.sums.entity;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class ReturnLinkage {
    private String name;
    private Integer value;
    private List<ReturnLinkage> children;

    public ReturnLinkage(){}
    public ReturnLinkage(String name ,Integer value){
        this.name = name;
        this.value = value;
    }
}
