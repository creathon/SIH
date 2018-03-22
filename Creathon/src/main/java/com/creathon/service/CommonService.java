package com.creathon.service;

import java.util.List;

import com.creathon.bean.Cities;
import com.creathon.bean.Countries;
import com.creathon.bean.Designation;
import com.creathon.bean.States;

public interface CommonService {
	
	public List<States> findStateByCountryId(Integer countryId);
	public List<Cities> findCitiesByStateId(Integer stateId);
	public List<Countries> getCountryList();
	public List<Designation> findAllDesignation(); 
}
