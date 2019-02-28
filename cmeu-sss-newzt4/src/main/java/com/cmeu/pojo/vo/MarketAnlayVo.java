package com.cmeu.pojo.vo;

import java.util.Map;

import org.springframework.stereotype.Component;
@Component
public class MarketAnlayVo {
	/**
	 * key:careType
	 * value:number
	 */
	private Map<String,Integer> careAnlayVo;
	
	public Map<String, Integer> getCareAnlayVo() {
		return careAnlayVo;
	}
	public void setCareAnlayVo(Map<String, Integer> careAnlayVo) {
		this.careAnlayVo = careAnlayVo;
	}
	public void addCareAnlayMap(String care, Integer number) {
		this.careAnlayVo.put(care, number);
	}
}
