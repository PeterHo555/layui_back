package com.peterho.layui.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

@Data
public class District {

    @TableId(type = IdType.AUTO)
    private Integer id;
    private Integer districtId;
    private String districtName;

}
