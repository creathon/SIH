package com.creathon.service;

import java.util.List;

import com.creathon.bean.Agency;

public interface AgencyService {

	public Agency findAgencyByEmail(String email);
	public Boolean saveandupdate(Agency agency);
	public List<Agency> findAll(); 
}
