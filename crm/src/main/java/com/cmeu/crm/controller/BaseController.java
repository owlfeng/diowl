package com.cmeu.crm.controller;

import com.cmeu.crm.shiro.ShiroUser;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.text.SimpleDateFormat;
import java.util.Date;


public abstract class BaseController {
	@InitBinder
	public void initBinder(ServletRequestDataBinder binder) {
		
		/**
		 * 自动转换日期类型的字段格式
		 */
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));
		
	}

	/**
	 * 获取当前登录用户对象
	 * 
	 * @return {ShiroUser}
	 */
	public ShiroUser getShiroUser() {
		return (ShiroUser) SecurityUtils.getSubject().getPrincipal();
	}

	/**
	 * 获取当前登录用户id
	 * 
	 * @return {Long}
	 */
	public int getUserId() {
		return this.getShiroUser().getUser().getUserId();
	}

	/**
	 * 获取当前登录用户名
	 * 
	 * @return {String}
	 */
	public String getStaffName() {
		return this.getShiroUser().getUser().getLoginName();
	}
	
	
//	@RequestMapping(value="/unauthorized", method = RequestMethod.POST)
//	public @ResponseBody Map<String, String> returnError(ServletRequest request) {
//		System.out.println("unauthorized"+"\n");
//		UnauthorizedException ex = (UnauthorizedException) request.getAttribute("ex");
//		
//		Map<String, String> resultMap = new HashMap<>();
//		resultMap.put("ex", ex.getLocalizedMessage());
//        return resultMap;
//	}
}
