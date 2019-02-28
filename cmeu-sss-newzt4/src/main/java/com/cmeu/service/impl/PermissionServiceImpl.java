package com.cmeu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmeu.mapper.PermissionMapper;
import com.cmeu.pojo.Permission;
import com.cmeu.service.PermissionService;
@Service
public class PermissionServiceImpl implements PermissionService {
	@Autowired
	private PermissionMapper permissionMapper;
	
	@Override
	public List<Permission> listPermissions() {
		return permissionMapper.list();
	}
	
	public List<Permission> listPermissions(int userId) {
		return permissionMapper.listPermissions(userId);
	}

	@Override
	public boolean needInterceptor(String requestURI) {
//		取出所有权限
		List<Permission> ps = this.listPermissions();
		for (Permission p : ps) {
//		权限对比
//      有这个权限的话 ture
            if (requestURI.equals(p.getUrl())) {
                return true;
            }
        }
//      没有这个权限的话 false
        return false;
	}

}
