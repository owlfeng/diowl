package com.cmeu.controller;


import com.alibaba.fastjson.JSON;
import com.cmeu.pojo.vo.*;

import com.cmeu.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.cmeu.pojo.Customer;
import com.cmeu.pojo.CustomerCategory;
import com.cmeu.pojo.vo.CustomerVo;
import com.cmeu.result.DataTable;
import com.cmeu.service.AnalyService;
import com.cmeu.service.CustomerService;

@Controller
@RequestMapping("/custom")
public class CustomController {
	@Autowired
	CustomerService customerService;
    @Autowired
    AnalyService analyService;

    @RequestMapping("/analy")
    public ModelAndView analy() throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("custom/analy");
        return modelAndView;
    }

	@RequestMapping(value = "/queryEchart", method = RequestMethod.POST)
	@ResponseBody
	public  List<EchartVo> queryEchart() throws Exception
	{
		List<AnalyVo> anlayVo = analyService.getAnlayVo();
		List<EchartVo> echartList=new ArrayList<>();
		for (AnalyVo anlay:anlayVo) {
			EchartVo echart=new EchartVo();
			echart.setName(anlay.getValue());
			echart.setValue(String.valueOf(anlay.getNumber()));
			echartList.add(echart);
		}
		return  echartList;
	}

	@RequestMapping(value = "/queryAnaly", method = RequestMethod.POST)
	public @ResponseBody DataTable<AnalyVo> queryAnaly(String draw, String start, String length) throws Exception
	{
		System.out.println("/queryAnaly");
		List<AnalyVo> anlayVo = analyService.getAnlayVo();
		//声明一个datatable对象封装数据
		DataTable<AnalyVo> data = new DataTable<AnalyVo>();
		data.setDraw(Integer.parseInt(draw == null ? "0": draw) + 1);
		data.setRecordsTotal(5);
		data.setRecordsFiltered(5);
		data.setData(anlayVo);
		return data;
	}

	@RequestMapping("/control")
	public ModelAndView control() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("custom/control");
		return modelAndView;
	}

}
