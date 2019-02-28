package com.cmeu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.cmeu.pojo.Customer;
import com.cmeu.pojo.vo.CustomerVo;

public interface CustomerMapper {
	Integer getTotal() throws Exception ;
	
	Customer get(int id) throws Exception ;
	
	List<Customer> getList() throws Exception ;
	
	List<Customer> getPageList(@Param("start")int start, @Param("count")int count) throws Exception ;
	
	List<CustomerVo> queryList(@Param("customer")Customer customer,@Param("start")int start, @Param("count")int count) throws Exception ;
	
	int queryListSize(@Param("customer")Customer customer,@Param("start")int start, @Param("count")int count) throws Exception ;
	
	void delete(int id) throws Exception;
	
	void save(Customer customer) throws Exception ;
	
	void update(Customer customer) throws Exception ;
}
