package com.peterho.layui.service;

import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.DecomposeVO;

public interface AlgorithmService {
    public DataVO<DecomposeVO> getDecompose();
}
