package com.owl.echarts.thymeleaf.web;

import com.owl.echarts.thymeleaf.pojo.Analyze;
import com.owl.echarts.thymeleaf.pojo.Product;
import com.owl.echarts.thymeleaf.pojo.echartsVo;
import com.owl.echarts.thymeleaf.service.AnalyzeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
public class TestController {
    @Resource
    AnalyzeService analyzeService;


    @RequestMapping("/test")
    public String test(Model m) {
    	String htmlContent = "<p style='color:red'> 红色文字</p>";
    	Product currentProduct =new Product(5,"product e", 200);
    	boolean testBoolean = true;
    	
    	List<Product> ps = new ArrayList<>();
    	ps.add(new Product(1,"product a", 50));
    	ps.add(new Product(2,"product b", 100));
    	ps.add(new Product(3,"product c", 150));
    	ps.add(new Product(4,"product d", 200));
    	ps.add(currentProduct);
    	ps.add(new Product(6,"product f", 200));
    	ps.add(new Product(7,"product g", 200));    	
    	
    	m.addAttribute("ps", ps);
    	m.addAttribute("htmlContent", htmlContent);
    	m.addAttribute("currentProduct", currentProduct);
    	m.addAttribute("testBoolean", testBoolean);
        return "test";
    }
	@RequestMapping("/echarts")
    @ResponseBody
	public List<echartsVo> echartsInit(Model model){
        List<echartsVo> list =new ArrayList<>();
        list.add(new echartsVo("客户1","1"));
        list.add(new echartsVo("客户2","2"));
        list.add(new echartsVo("客户3","3"));
        list.add(new echartsVo("客户4","4"));
        list.add(new echartsVo("客户5","5"));
        List<Analyze> analyzes = analyzeService.selectAll();
        model.addAttribute("analyzes",analyzes);
        return list;
	}
    @RequestMapping("/echarts2")
    @ResponseBody
    public  List<Analyze> echarts(){
        return analyzeService.selectAll();

    }

}