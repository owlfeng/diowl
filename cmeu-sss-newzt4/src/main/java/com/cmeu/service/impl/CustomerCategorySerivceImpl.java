package com.cmeu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmeu.mapper.CustomerCategoryMapper;
import com.cmeu.pojo.CustomerCategory;
import com.cmeu.service.CustomerCategorySerivce;
@Service
public class CustomerCategorySerivceImpl implements CustomerCategorySerivce {
	@Autowired
	CustomerCategoryMapper customerCategoryMapper;
	
	@Override
	public List<CustomerCategory> getAll() throws Exception{
		return customerCategoryMapper.getAll();
	}

	@Override
	public void delete(int id) throws Exception {
		customerCategoryMapper.delete(id);
	}
	
}
