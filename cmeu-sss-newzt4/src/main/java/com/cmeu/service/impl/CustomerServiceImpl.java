package com.cmeu.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmeu.mapper.CustomerMapper;
import com.cmeu.pojo.Customer;
import com.cmeu.pojo.vo.CustomerVo;
import com.cmeu.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	CustomerMapper customerMapper;
	
	public Customer get(int id) throws Exception {
		return customerMapper.get(id);
	}
	
	public List<Customer> getList() throws Exception{
		return customerMapper.getList();
	}
	
	public List<CustomerVo> queryList(Customer customer, int start, int count) throws Exception{
		return customerMapper.queryList(customer,start, count);
	}
	
	public Boolean delete(int id) {
		try {
			customerMapper.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Boolean save(Customer customer) {
		try {
			customerMapper.save(customer);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Boolean update(Customer customer) {
		try {
			customerMapper.update(customer);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public int getTotl() throws Exception {
		return customerMapper.getTotal();
	}

	public List<Customer> getPageList(int start,int count) throws Exception {
		return customerMapper.getPageList(start, count);
	}

	public int queryListSize(Customer customer, int start, int count) throws Exception {
		return customerMapper.queryListSize(customer, start, count);
	}
}
