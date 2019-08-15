package com.example.bank.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.bank.service.BankService;

@Controller
public class BankController {
	
	@Autowired
	BankService bankService;
	
	
	@RequestMapping("/getAPI1")
	@ResponseBody
	public List<HashMap> getAPI1() throws Exception{
		return bankService.getAPI1();
	}
	@RequestMapping("/getAPI2")
	@ResponseBody
	public List<HashMap> getAPI2() throws Exception{
		return bankService.getAPI2();
	}
	@RequestMapping("/getAPI3")
	@ResponseBody
	public List<Map<String, Object>> getAPI3() throws Exception{
		
		List<Map<String, Object>> rList = new ArrayList<Map<String,Object>>();
		
		rList.add(bankService.getAPI3("2018"));
		rList.add(bankService.getAPI3("2019"));
		
		return rList;
	}
	@RequestMapping("/getAPI4")
	@ResponseBody
	public List<HashMap> getAPI4(HttpServletRequest request) throws Exception{
		
		HashMap<String, String> pMap =  new HashMap<>();
		pMap.put("brName", request.getParameter("brName"));
		
		return bankService.getAPI4(pMap);
	}
	@RequestMapping("/bankAPItest")
	public String bankAPItest() throws Exception{
		
		return "bankAPItest";
	}
}
