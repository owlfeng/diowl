package com.cmeu.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cmeu.pojo.Care;
import com.cmeu.result.DataTable;
import com.cmeu.service.CareService;


@Controller
public class CareController extends BaseController {
	@Autowired
	CareService careService;
	/**
	 * 显示页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/custom/care")
	public ModelAndView care() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("custom/care");
		return modelAndView;
	}
	/**
	 * 查询与显示关怀列表
	 * @param customer
	 * @return
	 */
	@RequestMapping(value = "/queryCare", method = RequestMethod.POST)
	public @ResponseBody DataTable<Care> care_query( String draw) throws Exception{
		//取得客户关怀数据列表
		List<Care> queryList = careService.getList();
		
		//声明一个datatable对象封装数据
		DataTable<Care> data = new DataTable<Care>();
		data.setDraw(Integer.parseInt(draw == null ? "0": draw) + 1);
		data.setRecordsTotal(queryList.size());
		data.setRecordsFiltered(queryList.size());
		data.setData(queryList);
		
		return data;
	}
	
}
