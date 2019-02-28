package com.cmeu.pojo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Component;
@Component
public class Care implements Serializable {
	Integer id;
	String theme;
	Date date;
	String executor;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTheme() {
		return theme;
	}
	public void setTheme(String theme) {
		this.theme = theme;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getExecutor() {
		return executor;
	}
	public void setExecutor(String executor) {
		this.executor = executor;
	}
	
}
