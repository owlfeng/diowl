package com.cmeu.crm.controller;

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
import com.cmeu.service.CustomerCategorySerivce;
import com.cmeu.service.CustomerService;

@Controller
@RequestMapping("")
public class NewController extends BaseController {

	@Autowired
	CustomerService customerService;
	@Autowired
	CustomerCategorySerivce customerCategorySerivce;

	/**
	 * 显示页面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/custom/new")
	public ModelAndView newJsp() throws Exception {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("custom/new");
		
		List<CustomerCategory> allCustomerCategory = customerCategorySerivce.getAll();
		
		modelAndView.addObject("allCustomerCategory", allCustomerCategory);
		return modelAndView;
	}
	/**
	 * 新建客户
	 * @param customer
	 * @return
	 */
	
	@RequestMapping(value = "/newCustomer", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> newCustomer(Customer customer) {
		
		Boolean result = customerService.save(customer);
        Map<String, String> resultMap = new HashMap<>();

        if (result){
            resultMap.put("msg", "success");
        }else {
            resultMap.put("msg", "fail");
        }
        return resultMap;
	}
	/**
	 * 删除客户
	 * @param id
	 * @return
	 */
	
	@RequestMapping(value = "/delCustomer", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> delCustomer(String id) {
		Boolean result = customerService.delete(Integer.parseInt(id));
		Map<String, String> resultMap = new HashMap<>();

        if (result){
            resultMap.put("msg", "success");
        }else {
            resultMap.put("msg", "fail");
        }
        return resultMap;
	}
	
	/**
	 * 修改客户
	 * @param customer
	 * @return
	 */
	@RequestMapping(value = "/updateCustomer", method = RequestMethod.POST)
	public @ResponseBody Map<String, String> upCustomer(Customer customer,String customerId) {
		if(customerId != null && customerId != "") {
			customer.setId(Integer.parseInt(customerId));
		}
		Boolean result = customerService.update(customer);
		Map<String, String> resultMap = new HashMap<>();

        if (result){
            resultMap.put("msg", "success");
        }else {
            resultMap.put("msg", "fail");
        }
        return resultMap;
	}
	
	/**
	 * 查询与显示客户
	 * @param customer
	 * @return
	 */
	
	@RequestMapping(value = "/queryCustomer", method = RequestMethod.POST)
	public @ResponseBody DataTable<CustomerVo> customer_query(String name, String adress, String category_id, String draw, String start, String length) throws Exception{
		Customer customer= new Customer();
		customer.setAdress(adress);
		if(category_id != null && category_id != "") {
			customer.setCategory_id(Integer.parseInt(category_id));
		}
		customer.setName(name);
		if(start == null) {
			return null;
		}
		if(length == null) {
			return null;
		}
		//查询出CustomerVo结果集 
		List<CustomerVo> queryList = customerService.queryList(customer, Integer.parseInt(start), Integer.parseInt(length));
		int queryListSize = customerService.queryListSize(customer, Integer.parseInt(start), Integer.parseInt(length));
		//声明一个datatable对象封装数据
		DataTable<CustomerVo> data = new DataTable<CustomerVo>();
		
		data.setDraw(Integer.parseInt(draw == null ? "0": draw) + 1);
		data.setRecordsTotal(queryListSize);
		data.setRecordsFiltered(queryListSize);
		data.setData(queryList);
		
		return data;
	}
	
}
