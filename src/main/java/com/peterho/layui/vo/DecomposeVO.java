package com.peterho.layui.vo;

import lombok.Data;

@Data
public class DecomposeVO {
    private boolean state;
    private Integer deviceId;
    private String power;
    private String electricity;
    private String voltage;
    private float addRate;

}
