package com.cmeu.mapper;

import java.util.List;

import com.cmeu.pojo.CustomerCategory;

public interface CustomerCategoryMapper {

	List<CustomerCategory> getAll() throws Exception;

	void delete(int id) throws Exception;

}
