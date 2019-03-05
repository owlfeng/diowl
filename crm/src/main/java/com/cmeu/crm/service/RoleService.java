package com.cmeu.crm.service;

import java.util.Set;

import org.springframework.stereotype.Service;
@Service
public interface RoleService {

	Set<String> listUrls(Integer userId);

	Set<String> listRoles(Integer userId);


}
