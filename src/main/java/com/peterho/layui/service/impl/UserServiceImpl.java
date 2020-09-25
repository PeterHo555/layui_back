package com.peterho.layui.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.peterho.layui.entity.User;
import com.peterho.layui.mapper.UserMapper;
import com.peterho.layui.service.UserService;
import com.peterho.layui.vo.DataVO;
import com.peterho.layui.vo.UserVO;
import net.sf.json.JSONObject;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;


@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;


    @Override
    public DataVO<UserVO> findData(Integer page, Integer limit){
        DataVO dataVO = new DataVO();
        dataVO.setCode(0);
        dataVO.setMessage("");

        //分页操作
        IPage<User> userIPage = new Page<>(page,limit);
        IPage<User> result = userMapper.selectPage(userIPage,null);
//        dataVO.setCount(userMapper.selectCount(null));
        dataVO.setCount(result.getTotal());
        //data json 数据填充
//        List<User> userList = userMapper.selectList(null);
//        List<UserVO> userVOList = new ArrayList<>();

        List<User> userList = result.getRecords();
        List<UserVO> userVOList = new ArrayList<>();

        for (User user : userList){
            UserVO userVO = new UserVO();
            BeanUtils.copyProperties(user, userVO);

            QueryWrapper wrapper = new QueryWrapper();
            wrapper.eq("id",user.getId());
            User tempUser = userMapper.selectOne(wrapper);

            if (tempUser!=null){
                userVO.setId(tempUser.getId());
                userVO.setLoginName(tempUser.getLoginName());
                userVO.setPassword(tempUser.getPassword());
                userVO.setEmail(tempUser.getEmail());
                userVO.setPhone(tempUser.getPhone());
                userVO.setUsername(tempUser.getUsername());
                userVO.setUserType(tempUser.getUserType());
            }
            userVOList.add(userVO);
        }

        dataVO.setData(userVOList);
        return dataVO;
    }


    public String userLogin(String loginName, String password){
        JSONObject data = new JSONObject();
        try {
            QueryWrapper wrapper = new QueryWrapper();
            wrapper.eq("login_name", loginName);
            User tempUser = userMapper.selectOne(wrapper);
            if (tempUser == null) {
                //用户不存在
                System.out.println("查询用户不存在");
                data.put("message",100);
                return data.toString();

            }else if(!tempUser.getPassword().equals(password)){
                //密码不正确
                data.put("message",101);
                return data.toString();

            }else {
                //密码正确
                data.put("message", 200);
                JSONObject userData = new JSONObject();
                userData.put("userId", tempUser.getId());
                userData.put("loginName", tempUser.getLoginName());
                userData.put("username", tempUser.getUsername());
                userData.put("phone", tempUser.getPhone());
                userData.put("email", tempUser.getEmail());
                userData.put("userType", tempUser.getUserType());
                data.put("userData", userData);
                return data.toString();
            }
        }catch (Exception e){
            //数据异常
            data.put("message",102);
            return data.toString();
        }
    }

    public String userUpdate(String loginName, String userName, String email, String phone, String userType){
        QueryWrapper wrapper = new QueryWrapper();
        wrapper.eq("login_name",loginName);
        User forUserId = userMapper.selectOne(wrapper);
        System.out.println("查找userid："+forUserId);
        if (forUserId!=null){
            UpdateWrapper<User> userUpdateWrapper = new UpdateWrapper<>();
            userUpdateWrapper.eq("id",forUserId.getId());
            User tempUser = new User();
            tempUser.setLoginName(loginName);
            tempUser.setEmail(email);
            tempUser.setPhone(phone);
            tempUser.setUsername(userName);
            if (userType.equals("系统管理员")){
                tempUser.setUserType(1);
            }else {
                tempUser.setUserType(2);
            }
            System.out.println(tempUser);
            int flag = userMapper.update(tempUser,userUpdateWrapper);
            System.out.println("状态："+flag);
            return "200";
        }else {
            return "100";
        }
    }

    public String users(){
        List<User> userList = userMapper.selectList(null);
        JSONObject data = new JSONObject();
        List<String> dataList = new LinkedList<>();
        for (User user : userList) {
            data.put("userId",user.getId());
            data.put("userName",user.getUsername());
            dataList.add(data.toString());
        }
        return dataList.toString();
    }


}
