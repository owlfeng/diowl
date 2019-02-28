package com.cmeu.pojo;

import org.springframework.stereotype.Component;

import com.baomidou.mybatisplus.annotations.TableField;
@Component
public class Stage {
	@TableField(value="stage_id")
	private int stageId;
	@TableField(value="stage_value")
	private String stageValue;
	
	public int getStageId() {
		return stageId;
	}
	public void setStageId(int stageId) {
		this.stageId = stageId;
	}
	public String getStageValue() {
		return stageValue;
	}
	public void setStageValue(String stageValue) {
		this.stageValue = stageValue;
	}
}
