package com.cmeu.service;

import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.cmeu.pojo.Permission;
@Service
public interface PermissionService {

	List<Permission> listPermissions();
	
	List<Permission> listPermissions(int userId);

	boolean needInterceptor(String requestURI);
}
