package com.example.bank.db.mapper;

import java.util.HashMap;
import java.util.List;

public interface bankMapper {
	
	public List<HashMap> getAll() throws Exception;
	
	public List<HashMap> getAPI1() throws Exception;
	public List<HashMap> getAPI2() throws Exception;
	public List<HashMap> getAPI3(String year) throws Exception;
	public List<HashMap> getAPI4(HashMap<String, String> pMap) throws Exception;
}
