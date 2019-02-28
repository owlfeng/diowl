package com.cmeu.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cmeu.pojo.Customer;
import com.cmeu.pojo.vo.CustomerVo;

@Service
public interface CustomerService {
	public Customer get(int id) throws Exception ;
	
	public List<Customer> getList() throws Exception;
	
	public List<CustomerVo> queryList(Customer customer,int start, int count) throws Exception;
	
	public Boolean delete(int id);

	public Boolean save(Customer customer) ;
	
	public Boolean update(Customer customer) ;

	public int getTotl() throws Exception ;

	public List<Customer> getPageList(int start,int count) throws Exception ;

	public int queryListSize(Customer customer, int parseInt, int parseInt2) throws Exception;
}
