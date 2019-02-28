package com.cmeu.pojo;

import java.util.Date;

import com.baomidou.mybatisplus.annotations.TableField;

public class Permission {
	private int id;
	private int parentid;
	private String name;
	private String description;
	private String url;
	private String icon;
	private String type;
	private String seq;
	@TableField(value="create_time")
	private Date createTime;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getParentid() {
		return parentid;
	}
	public void setParentid(int parentid) {
		this.parentid = parentid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	@Override
	public String toString() {
		return "Permission [id=" + id + ", parentid=" + parentid + ", name=" + name + ", description=" + description
				+ ", url=" + url + ", icon=" + icon + ", type=" + type + ", seq=" + seq + ", createTime=" + createTime
				+ "]";
	}
}
