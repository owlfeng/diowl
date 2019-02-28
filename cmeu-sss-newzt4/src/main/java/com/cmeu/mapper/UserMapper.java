package com.cmeu.mapper;

import com.cmeu.pojo.User;

public interface UserMapper {
	User queryByLoginName(User user);
}
