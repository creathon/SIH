package com.creathon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.ProductionHouse;
import com.creathon.service.FilmsService;
import com.creathon.service.LocationService;
import com.creathon.service.ProductionHouseService;
import com.creathon.service.ShootApplicationService;

@Controller
public class IndexController {
	
	@Autowired
	private ProductionHouseService productionHouseService;
	
	@Autowired
	private LocationService locationService;
	
	@Autowired
	private FilmsService filmService;
	
	@Autowired
	private ShootApplicationService shootApplicationService;
	
	 @RequestMapping(value="/producerDashboard", method = RequestMethod.GET)
	    public ModelAndView producerDashboard(ModelMap model){
	    	ModelAndView mav = new ModelAndView("producer_dashboard");
	    	
	        return mav;
	    }
	 
	 @RequestMapping(value="/agencyDashboard", method = RequestMethod.GET)
	    public ModelAndView agencyDashboard(ModelMap model){
	    	ModelAndView mav = new ModelAndView("agency_dashboard");
	    	mav.addObject("productionHouseCount",productionHouseService.getProductionHouseCount());
			mav.addObject("locationCount",locationService.getLocationCount());
			mav.addObject("filmCount",filmService.getFilmCount());
			mav.addObject("applicationCount",shootApplicationService.getshootApplicationCount());
	    	
	        return mav;
	    }
	
}
