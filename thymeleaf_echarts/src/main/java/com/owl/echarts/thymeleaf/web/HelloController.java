package com.owl.echarts.thymeleaf.web;

import com.owl.echarts.thymeleaf.service.AnalyzeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
public class HelloController {
    @Resource
    AnalyzeService analyzeService;

    @RequestMapping("/hello")
    public String hello(Model m) {
    	m.addAttribute("name", "thymeleaf");
        return "hello";
    }
    @RequestMapping("/test1")
    public String index(){
        return "index";
    }
    @RequestMapping("/test2")
    public String other(Model model){
        model.addAttribute("analyzes",analyzeService.selectAll());
        return "index";
    }
}