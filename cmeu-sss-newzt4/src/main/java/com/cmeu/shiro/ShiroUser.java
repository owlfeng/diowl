package com.cmeu.shiro;

import java.io.Serializable;
import java.util.Set;

import com.cmeu.pojo.User;

public class ShiroUser implements Serializable {
	private User user;
	private Set<String> urls;
	private Set<String> roles;

	public ShiroUser(String loginName) {
		user = new User();
		this.user.setLoginName(loginName);
	}
	
	public ShiroUser(User user, Set<String> urls, Set<String> roles) {
		this.user = user;
		this.urls = urls;
		this.roles = roles;
	}

	public User getUser() {
		return this.user;
	}
	public void setUser(User user) {
		this.user = user;
	}

	public Set<String> getUrls() {
		return urls;
	}

	public void setUrls(Set<String> urls) {
		this.urls = urls;
	}

	public Set<String> getRoles() {
		return roles;
	}

	public void setRoles(Set<String> roles) {
		this.roles = roles;
	}

	
}
