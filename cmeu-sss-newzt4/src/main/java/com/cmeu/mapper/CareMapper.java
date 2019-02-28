package com.cmeu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.cmeu.pojo.Care;

public interface CareMapper {
	Integer getTotal();
	
	Care get(int id);
	
	List<Care> getList();
	
	List<Care> getPageList(@Param("start")int start, @Param("count")int count);
	
	List<Care> queryList(Care care);
	
	void delete(int id) throws Exception;
	
	void save(Care care) throws Exception ;
	
	void update(Care care) throws Exception ;
	
}