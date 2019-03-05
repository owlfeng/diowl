package com.cmeu.crm.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cmeu.pojo.Care;
@Service
public interface CareService {

	public Care get(int id) ;
	
	public List<Care> getList();
	
	public List<Care> queryList(Care care);
	public Boolean delete(int id) ;

	public Boolean save(Care care) ;
	
	
	public Boolean update(Care care) ;

	public int getTotal() ;

	public List<Care> getPageList(int start, int count);
}
