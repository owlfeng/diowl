package com.cmeu.service.impl;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmeu.mapper.RoleMapper;
import com.cmeu.service.RoleService;
@Service
public class RoleServiceImpl implements RoleService {
	@Autowired
	RoleMapper roleMapper;
	@Override
	public Set<String> listUrls(Integer userId) {
		return roleMapper.listUrls(userId);
	}
	@Override
	public Set<String> listRoles(Integer userId) {
		return roleMapper.listRoles(userId);
	}

}
