package com.cmeu.crm.mapper;

import java.util.List;
import java.util.Set;

import com.cmeu.pojo.Role;

public interface RoleMapper {

	Set<String> listUrls(Integer userId) ;

	Set<String> listRoles(Integer userId);
	
	List<String> listAllRoles();
	
}
