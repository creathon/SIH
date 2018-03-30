package com.creathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class AdminController {

	/*@Autowired
	AdminService */
	
	 @RequestMapping(value="/adminDashboard", method = RequestMethod.GET)
	    public ModelAndView adminDashboard(ModelMap model){
	    	ModelAndView mav = new ModelAndView("admin_dashboard");
	    	
	        return mav;
	    }
	 
	 @RequestMapping(value="/producersComplaint", method = RequestMethod.GET)
	    public ModelAndView producersComplaint(ModelMap model){
	    	ModelAndView mav = new ModelAndView("producers_complaint");
	    	
	        return mav;
	    }
	 
	 @RequestMapping(value="/notAnsweredApplication", method = RequestMethod.GET)
	    public ModelAndView notAnsweredApplication(ModelMap model){
	    	ModelAndView mav = new ModelAndView("not_answered_application");
	    	
	        return mav;
	    }
	 
	 
}
