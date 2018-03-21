package com.creathon.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.SessionBean;
import com.creathon.bean.ShootApplication;
import com.creathon.service.ManageApplicationService;

@Controller
public class ManageShootApplicationController {

	@Autowired
	ManageApplicationService manageApplicationService;
	
	
	 @RequestMapping(value="/manage_shoot_application", method = RequestMethod.GET)
	    public ModelAndView manageShootApplication(ModelMap model, HttpServletRequest request){
	    	ModelAndView mav = new ModelAndView("manage_shoot_application");
	    	SessionBean sessionBean = (SessionBean) request.getSession().getAttribute("sessionBean");
	    	if (sessionBean != null) {
	    	Integer proId=sessionBean.getProductionHouse().getId();
	    	List<ShootApplication> applicationList = manageApplicationService.listOfShootApplication(proId);
	        mav.addObject("applicationList", applicationList);
	    	}
	    	return mav;
	    	
	    }
	 
	 
	 
	 
	 
	/* @RequestMapping(value="/view_complete_application", method = RequestMethod.GET)
	    public ModelAndView viewApplicationDetails(@RequestParam("Id") Integer applicationId,ModelMap model, HttpServletRequest request){
	    	ModelAndView mav = new ModelAndView("manage_shoot_application");
	    	SessionBean sessionBean = (SessionBean) request.getSession().getAttribute("sessionBean");
	    	
	    	Integer proId=sessionBean.getProductionHouse().getId();
	    	List<ShootApplication> applicationList = manageApplicationService.listOfShootApplication(proId);
	    	ShootApplication shootApplication = manageApplicationService.findByApplicationId(applicationId);
	    	mav.addObject("shootApplication", shootApplication);
	        mav.addObject("applicationList", applicationList);
	    	
	    	return mav;
	    	
	    }*/
}
