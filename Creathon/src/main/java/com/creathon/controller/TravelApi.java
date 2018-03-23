package com.creathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TravelApi {

	 @RequestMapping(value="/flightDetails", method = RequestMethod.GET)
	    public ModelAndView digi(ModelMap model){
	    	ModelAndView mav = new ModelAndView("flight_details");
	    	
	        return mav;
	    }


}
