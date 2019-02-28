package com.cmeu.pojo;

import com.baomidou.mybatisplus.annotations.TableField;

public class CustomerCategory {
	@TableField(value="customer_category_id")
	private int customerCategoryId;
	@TableField(value="customer_category_value")
	private String customerCategoryValue;
	
	public int getCustomerCategoryId() {
		return customerCategoryId;
	}
	public void setCustomerCategoryId(int customerCategoryId) {
		this.customerCategoryId = customerCategoryId;
	}
	public String getCustomerCategoryValue() {
		return customerCategoryValue;
	}
	public void setCustomerCategoryValue(String customerCategoryValue) {
		this.customerCategoryValue = customerCategoryValue;
	}
	
}
