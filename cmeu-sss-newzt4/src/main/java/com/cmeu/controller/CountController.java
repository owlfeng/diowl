package com.cmeu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class CountController {
	
	@RequestMapping("/count/add")
	public ModelAndView add() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("count/add");
		return modelAndView;
	}
	
	@RequestMapping("/count/contract")
	public ModelAndView contract() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("count/contract");
		return modelAndView;
	}
	
	@RequestMapping("/count/cost")
	public ModelAndView cost() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("count/cost");
		return modelAndView;
	}
	
	@RequestMapping("/count/market")
	public ModelAndView market() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("count/market");
		return modelAndView;
	}
	
	@RequestMapping("/count/purchase")
	public ModelAndView purchase() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("count/purchase");
		return modelAndView;
	}
	@RequestMapping("/count/sales")
	public ModelAndView sales() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("count/sales");
		return modelAndView;
	}
}
