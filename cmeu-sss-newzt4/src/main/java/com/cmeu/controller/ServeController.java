package com.cmeu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ServeController {
	@RequestMapping("/serve/feedback")
	public ModelAndView feedback() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.setViewName("serve/feedback");
		return modelAndView;
	}
	@RequestMapping("/serve/kind")
	public ModelAndView kind() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("serve/kind");
		return modelAndView;
	}
	@RequestMapping("/serve/order")
	public ModelAndView order() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("serve/order");
		return modelAndView;
	}
	@RequestMapping("/serve/QA")
	public ModelAndView QA() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("serve/QA");
		return modelAndView;
	}
}
