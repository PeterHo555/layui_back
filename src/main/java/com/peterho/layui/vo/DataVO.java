package com.peterho.layui.vo;

import lombok.Data;

import java.util.List;

@Data
public class DataVO<T> {
    private Integer code;
    private String message;
    private Long count;
    private List<T> data;
}
