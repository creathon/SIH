package com.creathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {

	 @RequestMapping(value="/", method = RequestMethod.GET)
	    public ModelAndView showLoginPage(ModelMap model){
	    	ModelAndView mav = new ModelAndView("dashboard");
	    	
	        return mav;
	    }
	
}
