package com.peterho.layui.service.impl;

import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.DecomposeVO;
import org.python.core.PyFunction;
import org.python.core.PyInteger;
import org.python.core.PyObject;
import org.python.util.PythonInterpreter;

import java.util.Properties;

public class AlgorithmServiceImpl {
    public DataVO getDecompose(){
        String filePath = "";
        String pyFileAbsPath = "";

        DataVO<DecomposeVO> dataVO = new DataVO<>();
        // 封装python算法需要的数据
        int a = 100, b = 100;


        // 通过服务器的绝对路径调用python算法
        // 添加配置文件属性
        Properties props = new Properties();
        props.put("python.home", "path to the Lib folder");
        props.put("python.console.encoding", "UTF-8");
        props.put("python.security.respectJavaAccessibility", "false");
        props.put("python.import.site", "false");
        Properties preprops = System.getProperties();
        PythonInterpreter.initialize(preprops, props, new String[0]);

        PythonInterpreter interpreter = new PythonInterpreter();
        interpreter.execfile(pyFileAbsPath);


        // 得到算法返回的数据
        // add 表示函数名称
        PyFunction func = (PyFunction) interpreter.get("add", PyFunction.class);
        PyObject obj = func.__call__(new PyInteger(a), new PyInteger(b));
        System.out.println("anwser = " + obj.toString());


        // 封装成前端需要的数据类型回调

        return dataVO;
    }
}
