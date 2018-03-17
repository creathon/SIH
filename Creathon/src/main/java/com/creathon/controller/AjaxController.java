package com.creathon.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.creathon.bean.Cities;
import com.creathon.bean.Location;
import com.creathon.bean.States;
import com.creathon.service.CommonService;
import com.creathon.service.LocationService;
import com.creathon.service.TeamMemberService;

@RestController
@RequestMapping("/ajax")
public class AjaxController {
	
	@Autowired
	private CommonService commonService;
	
	@Autowired
	private TeamMemberService teamMemberService;
	
	@Autowired
	private LocationService locationService;

	@RequestMapping(value = "getStates")
	@ResponseBody
	public List<States> getAllStates(@RequestParam("id") Integer countryId)
	{
		return commonService.findStateByCountryId(countryId);
	
	}
	
	@RequestMapping(value = "getCities")
	@ResponseBody
	public List<Cities> getAllCities(@RequestParam("id") Integer stateId)
	{
		
		return commonService.findCitiesByStateId(stateId);
	}
	
	@RequestMapping(value = "getLocation")
	@ResponseBody
	public List<Location> getAllLocationByAgencyId(@RequestParam("id") Integer agencyId)
	{
		return locationService.findByAgencyId(agencyId);
	}
	
	
}
