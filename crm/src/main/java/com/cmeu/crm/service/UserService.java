package com.cmeu.crm.service;

import org.springframework.stereotype.Service;

import com.cmeu.pojo.User;
@Service
public interface UserService {
	User queryByLoginName(User user);
}
