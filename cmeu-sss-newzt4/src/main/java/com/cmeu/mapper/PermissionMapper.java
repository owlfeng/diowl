package com.cmeu.mapper;

import java.util.List;

import com.cmeu.pojo.Permission;

public interface PermissionMapper {

	List<Permission> list();
	
	List<Permission> listPermissions(int userId);
}
