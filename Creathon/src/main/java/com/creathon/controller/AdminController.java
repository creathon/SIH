package com.creathon.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.ShootApplication;
import com.creathon.service.AdminService;


@Controller
public class AdminController {

	@Autowired
	AdminService adminService;
	
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
	    	
	    	List<ShootApplication> notAnsweredApplicationList = adminService.notViewedApplicationList();
	    	if(notAnsweredApplicationList.size() == 0 || notAnsweredApplicationList.isEmpty()) {
	    		mav.addObject("error", "All the applications are answered till date");
	    	}else {
	    		mav.addObject("notAnsweredApplicationList", notAnsweredApplicationList);
	    		mav.addObject("success", "The list of applications which are not viewed in 48 hours are as follows");
	    	}
	    	
	    	
	        return mav;
	    }
	 
	 
}
