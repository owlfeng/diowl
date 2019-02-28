package com.cmeu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class SystemController {
	@RequestMapping("/system/power")
	public ModelAndView power() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("system/power");
		return modelAndView;
	}
	@RequestMapping("/system/user")
	public ModelAndView user() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("system/user");
		return modelAndView;
	}
}
