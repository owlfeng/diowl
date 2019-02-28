package com.cmeu.pojo.vo;

import java.util.Date;

import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.annotations.TableField;
@Component
public class CustomerVo {
	@TableField(value="customer_id")
	private int id;
	private String name;
	private String telephone;
	private String email;
	private String adress;
	@TableField(value="create_time")
	private Date createTime;
	
	@TableField(value="customer_category_value")
	private String customerCategoryValue;
	
	@TableField(value="stage_value")
	private String stageValue;

	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getCustomerCategoryValue() {
		return customerCategoryValue;
	}

	public void setCustomerCategoryValue(String customerCategoryvalue) {
		this.customerCategoryValue = customerCategoryvalue;
	}

	public String getStageValue() {
		return stageValue;
	}

	public void setStageValue(String stageValue) {
		this.stageValue = stageValue;
	}
	
}
