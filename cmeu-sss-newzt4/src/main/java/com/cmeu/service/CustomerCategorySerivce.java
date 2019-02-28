package com.cmeu.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cmeu.pojo.CustomerCategory;
@Service
public interface CustomerCategorySerivce {
	List<CustomerCategory> getAll() throws Exception;

	void delete(int id) throws Exception;
	
}
