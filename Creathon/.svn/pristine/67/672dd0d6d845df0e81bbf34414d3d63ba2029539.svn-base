package com.creathon.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.ProductionHouse;
import com.creathon.service.CommonService;
import com.creathon.service.ProductionHouseService;

@Controller
public class RegistrationController {

	@Autowired
	private CommonService commonService;
	@Autowired
	private ProductionHouseService productionHouseService;

	 @RequestMapping(value="/registration", method = RequestMethod.GET)
	    public ModelAndView addProductionHouse(ModelMap model){
	    	ModelAndView mav = new ModelAndView("registration");
	    	mav.addObject("productionHouse", new ProductionHouse());
	    	mav.addObject("countryList", commonService.getCountryList());
	        return mav;
	    }
	
	 
	 @RequestMapping(value="/saveProductionHouse", method = RequestMethod.POST)
	    public ModelAndView saveProductionHouse(@ModelAttribute ProductionHouse productionHouse  ,HttpServletRequest request,HttpServletResponse response,ModelMap model){
	    	ModelAndView mav = new ModelAndView("registration");
	    	mav.addObject("productionHouse", new ProductionHouse());
	    	mav.addObject("countryList", commonService.getCountryList());
	    	/*Date date = new Date(productionHouse.getValidity());  
	    	Date date1 = new Date(productionHouse.getVisaValidity());  
	        SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
	        String validity= formatter.format(date); 
	        String visaValidity = formatter.format(date1); 
	        System.out.println(validity+","+visaValidity);
	        productionHouse.setValidity(validity);
	        productionHouse.setVisaValidity(visaValidity);*/
	    	System.out.println(productionHouse);
	    	Boolean b=productionHouseService.saveandupdate(productionHouse);
	    	if(b){
				
				mav.addObject("success", "ProductionHouse Added Successfully");
			}
			else{
				mav.addObject("error", "ProductionHouse Cannot Be Added");
			}
	        return mav;
	    }
	 
	 
}
