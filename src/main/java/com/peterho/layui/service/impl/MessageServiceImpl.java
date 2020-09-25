package com.peterho.layui.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.peterho.layui.entity.*;
import com.peterho.layui.mapper.DistrictMapper;
import com.peterho.layui.mapper.MessageMapper;
import com.peterho.layui.mapper.UserMapper;
import com.peterho.layui.service.MessageService;
import com.peterho.layui.vo.AlarmVO;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.MessageVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageMapper messageMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private DistrictMapper districtMapper;


    @Override
    public DataVO<MessageVO> findData(Integer page, Integer limit){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("");
        //分页操作
        IPage<Message> messageIPage = new Page<>(page,limit);
        IPage<Message> result = messageMapper.selectPage(messageIPage,null);

        dataVO.setCount(result.getTotal());

        List<Message> messageList = result.getRecords();
        List<MessageVO> messageVOList = new ArrayList<>();

        for (Message message : messageList){
            MessageVO messageVO = new MessageVO();
            BeanUtils.copyProperties(message, messageVO);

            messageVO.setId(message.getId());
            messageVO.setUserId(message.getUserId());
            messageVO.setMessage(message.getMessage());
            messageVO.setMsgTime(message.getMsgTime());

            QueryWrapper userWrapper = new QueryWrapper();
            userWrapper.eq("id", message.getUserId());
            User tempUser = userMapper.selectOne(userWrapper);
            if (tempUser != null){
                messageVO.setUserName(tempUser.getUsername());
            }else{
                messageVO.setUserName("暂无");
            }

            QueryWrapper districtWrapper = new QueryWrapper();
            districtWrapper.eq("district_id", message.getDistrictId());
            District tempDistrict = districtMapper.selectOne(districtWrapper);
            if (tempDistrict != null){
                messageVO.setDistrictName(tempDistrict.getDistrictName());
            }else{
                messageVO.setDistrictName("暂无");
            }
            messageVOList.add(messageVO);
        }

        dataVO.setData(messageVOList);
        return dataVO;
    }




    public String addMessage(Message message){
        String msg = "200";
        SimpleDateFormat sdf = new SimpleDateFormat();// 格式化时间
        sdf.applyPattern("yyyy-MM-dd HH:mm:ss");// a为am/pm的标记
        Date date = new Date();// 获取当前时间
        message.setMsgTime(sdf.format(date));
        messageMapper.insert(message);
        return msg;
    }


}
