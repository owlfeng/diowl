package com.cmeu.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
@Controller
public class LoginController {
	
	@RequestMapping("/login")
	public String loginGet(){
   	 if (SecurityUtils.getSubject().isAuthenticated()) {
            return "redirect:/index";
        }
        return "login";
    }
	
	@ResponseBody
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(String loginName, String password) throws Exception {
		//System.out.println(loginName);
		UsernamePasswordToken token = new UsernamePasswordToken(loginName, password);
		Subject subject = SecurityUtils.getSubject(); 
		
		Map<String, Object> result = new HashMap<String, Object>();
		try { 
            subject.login(token);
            Session session=subject.getSession();
            session.setAttribute("subject", subject);
            result.put("msg", "success");
             
        } catch (AuthenticationException e) { 
        	e.printStackTrace();
        	result.put("msg", e);
        } 
		//返回json字符串
		return JSON.toJSONString(result);
	}
	
}
