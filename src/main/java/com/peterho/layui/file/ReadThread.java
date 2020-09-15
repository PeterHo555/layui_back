package com.peterho.layui.file;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

//import com.alibaba.fastjson.JSONArray;
//import com.alibaba.fastjson.JSONObject;

import java.io.File;
import java.util.List;

public class ReadThread extends Thread {

    private String filePath;
    private FileOperation fileOperation;

    public ReadThread(String filePath, FileOperation fileOperation){
        this.filePath = filePath;
        this.fileOperation = fileOperation;
    }

    public void run(){
//        opFile.readFile(filePath);
        File file = new File(filePath);
        List<String> ans = fileOperation.readLastNLine(file, 5);
        JSONArray json = new JSONArray();
        for(String temp : ans){
            JSONObject jo = new JSONObject();
            jo = JSONObject.fromObject(temp.toString());
            System.out.println(jo.get("temperature"));
            json.add(jo);
        }
    }
}
