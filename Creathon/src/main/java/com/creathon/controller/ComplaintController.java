package com.creathon.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.Complaint;
import com.creathon.bean.SessionBean;
import com.creathon.service.ComplaintService;
import com.creathon.service.ShootApplicationService;

@Controller
public class ComplaintController {

	@Autowired
	ComplaintService complaintService;
	
	@Autowired
	ShootApplicationService shootApplicationService;
	
	 @RequestMapping(value="/complaint", method = RequestMethod.GET)
	    public ModelAndView complaint(ModelMap model,HttpSession session){
		 SessionBean sessionBean = (SessionBean) session.getAttribute("sessionBean");
	    	ModelAndView mav = new ModelAndView("complaint");
	    	mav.addObject("complaint", new Complaint());
	    	mav.addObject("", "");
	        return mav;
	    }
	
}
