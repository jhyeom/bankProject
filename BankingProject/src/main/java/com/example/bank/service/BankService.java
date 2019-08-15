package com.example.bank.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.bank.db.mapper.bankMapper;

@Service
public class BankService {
	
	@Autowired
	bankMapper bankMapper;
	
	public List<HashMap> getAll() throws Exception{
		return bankMapper.getAll();
	}
	
	public List<HashMap> getAPI1() throws Exception{
		return bankMapper.getAPI1();
	}
	public List<HashMap> getAPI2() throws Exception{
		return bankMapper.getAPI2();
	}
	public Map<String, Object> getAPI3(String year) throws Exception{
		Map<String, Object> hMap = new HashMap<>();
		
		hMap.put("year", year);
		hMap.put("dataList", bankMapper.getAPI3(year));
		
		return hMap;
	}
	public List<HashMap> getAPI4(HashMap<String, String> pMap) throws Exception{
		List<HashMap> rList = bankMapper.getAPI4(pMap);
		
		if(rList.size()==0) {
			HashMap tmpMap = new HashMap<>();
			tmpMap.put("code", "404");
			tmpMap.put("메세지", "br code not found error");
			
			rList.add(tmpMap);
		}
		
		return rList;
	}
	
}
