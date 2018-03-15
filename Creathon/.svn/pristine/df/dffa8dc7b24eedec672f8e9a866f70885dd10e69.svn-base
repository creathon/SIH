package com.creathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class IndexController {

	 @RequestMapping(value="/producerDashboard", method = RequestMethod.GET)
	    public ModelAndView producerDashboard(ModelMap model){
	    	ModelAndView mav = new ModelAndView("producer_dashboard");
	    	
	        return mav;
	    }
	 
	 @RequestMapping(value="/agencyDashboard", method = RequestMethod.GET)
	    public ModelAndView agencyDashboard(ModelMap model){
	    	ModelAndView mav = new ModelAndView("agency_dashboard");
	    	
	        return mav;
	    }
	
}
