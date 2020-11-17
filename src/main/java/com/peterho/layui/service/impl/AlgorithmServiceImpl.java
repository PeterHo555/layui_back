package com.peterho.layui.service.impl;

import com.peterho.layui.file.FileOperation;
import com.peterho.layui.service.AlgorithmService;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.DecomposeVO;
import net.sf.json.JSONObject;
import org.python.core.PyFunction;
import org.python.core.PyInteger;
import org.python.core.PyObject;
import org.python.util.PythonInterpreter;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.List;
import java.util.Properties;

@Service
public class AlgorithmServiceImpl implements AlgorithmService {


    // CentOS上的电表数据日志绝对路径
    private final String absEleFilePath = "//project/log/eleData.txt";

    @Override
    public DataVO getDecompose(){
        String filePath = "";
        String pyFileAbsPath = "//Users/macbook/PycharmProjects/OpByJava/test1.py";

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

    @Override
    public DataVO<DecomposeVO> edgeDetection(float averagePowerOld){
        float addRate = 0;
        float averagePowerNew = 0;
        int deviceId = 0;

        // 取最后10条数据计算出平均功率
        FileOperation fileOperation = new FileOperation();
        // 读取绝对路径中的日志数据
        File file = new File(absEleFilePath);
        // 读取最后10行数据
        List<String> lastNLineString = fileOperation.readLastNLine(file, 10);
        float sum = 0;
        for(String temp : lastNLineString){
            JSONObject jo = new JSONObject();
            System.out.println("temp:" + temp);
            jo = JSONObject.fromObject(temp);
            float power = Float.valueOf(jo.get("power").toString());
            sum += power;
        }
        averagePowerNew = sum / 10;

        addRate = averagePowerNew - averagePowerOld;
        // 根据平均增长率，判断新插入设备
        if (addRate <= 10){
            deviceId = 0; // 表示无新增设备
        }else if(10 < addRate && addRate <= 30){
            deviceId = 1;
        }



        DataVO<DecomposeVO> dataVO = new DataVO<>();

        return dataVO;
    }


}
