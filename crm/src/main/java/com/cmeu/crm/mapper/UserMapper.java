package com.cmeu.crm.mapper;

import com.cmeu.pojo.User;

public interface UserMapper {
	User queryByLoginName(User user);
}
