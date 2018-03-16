package com.creathon.dao;

import java.util.List;

import com.creathon.bean.Cities;
import com.creathon.bean.States;

public interface CommonDao {
	
	public List<States> findStateByCountryId(Integer countryId);
	public List<Cities> findCitiesByStateId(Integer stateId);
	
}
