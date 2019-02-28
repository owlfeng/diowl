package com.cmeu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmeu.mapper.UserMapper;
import com.cmeu.pojo.User;
import com.cmeu.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	UserMapper userMapper;
	
	public User queryByLoginName(User user) {
		return userMapper.queryByLoginName(user);
	}

}
