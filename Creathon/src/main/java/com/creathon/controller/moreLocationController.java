package com.creathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class moreLocationController {

	@RequestMapping(value="/moreLocations", method = RequestMethod.GET)
    public ModelAndView mainPage(ModelMap model){
    	ModelAndView mav = new ModelAndView("moreLocation");
    
        return mav;
    }
	
}
