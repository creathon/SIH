package com.creathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AmanController {

	 @RequestMapping(value="/firstPage", method = RequestMethod.GET)
	    public ModelAndView addDesignation(ModelMap model){
	    	ModelAndView mav = new ModelAndView("firstPage");
	    	
	        return mav;
	    }
	 
	 @RequestMapping(value="/loginDelhi", method = RequestMethod.GET)
	    public ModelAndView loginDelhi(ModelMap model){
	    	ModelAndView mav = new ModelAndView("loginDelhi");
	    	
	        return mav;
	    }
	
}
