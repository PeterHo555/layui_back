package com.peterho.layui.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.peterho.layui.entity.Alarm;
import com.peterho.layui.entity.Message;
import com.peterho.layui.mapper.MessageMapper;
import com.peterho.layui.service.MessageService;
import com.peterho.layui.vo.AlarmVO;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.MessageVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class MessageServiceImpl implements MessageService {

    @Autowired
    private MessageMapper messageMapper;


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

            QueryWrapper wrapper = new QueryWrapper();
            wrapper.eq("id",message.getId());
            Message tempMessage = messageMapper.selectOne(wrapper);

            if (tempMessage!=null){
                messageVO.setId(tempMessage.getId());
                messageVO.setUserId(tempMessage.getUserId());
                messageVO.setMessage(tempMessage.getMessage());
                messageVO.setMsgTime(tempMessage.getMsgTime());
            }
            messageVOList.add(messageVO);
        }

        dataVO.setData(messageVOList);
        return dataVO;
    }
}
