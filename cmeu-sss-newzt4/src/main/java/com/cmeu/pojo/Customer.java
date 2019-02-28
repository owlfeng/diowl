package com.cmeu.pojo;

import java.io.Serializable;
import java.util.Date;

import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;

@Component
@TableName(value="customer")
public class Customer implements Serializable{
	@TableField(value="customer_id")
	private Integer id;
	private Integer stage_id;
	@TableField(value="create_time")
	private Date createTime;
	private String name;
	private String telephone;
	private String email;
	private String adress;
	private Integer category_id;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAdress() {
		return adress;
	}
	public void setAdress(String adress) {
		this.adress = adress;
	}
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	public Integer getStage_id() {
		return stage_id;
	}
	public void setStage_id(int stage_id) {
		this.stage_id = stage_id;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	@Override
	public String toString() {
		return "Customer [id=" + id + ", name=" + name + ", telephone=" + telephone + ", email=" + email + ", adress="
				+ adress + ", category_id=" + category_id + "]";
	}
}
