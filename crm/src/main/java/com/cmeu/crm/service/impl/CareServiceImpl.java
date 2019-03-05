package com.cmeu.crm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cmeu.mapper.CareMapper;
import com.cmeu.pojo.Care;
import com.cmeu.service.CareService;

@Service
public class CareServiceImpl implements CareService{
	@Autowired
	CareMapper careMapper;
	
	public Care get(int id) {
		return careMapper.get(id);
	}
	
	public List<Care> getList(){
		return careMapper.getList();
	}
	
	public List<Care> queryList(Care care){
		return careMapper.queryList(care);
	}
	
	public Boolean delete(int id) {
		try {
			careMapper.delete(id);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public Boolean save(Care care) {
		try {
			careMapper.save(care);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public Boolean update(Care care) {
		try {
			careMapper.update(care);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<Care> getPageList(int start,int count) {
		return careMapper.getPageList(start, count);
	}

	public int getTotal() {
		return careMapper.getTotal();
	}
}
