package com.creathon.controller;




import javax.servlet.http.HttpServletRequest;

import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.Agency;
import com.creathon.bean.ProductionHouse;
import com.creathon.bean.SessionBean;
import com.creathon.bean.User;
import com.creathon.service.AgencyService;
import com.creathon.service.ProductionHouseService;
import com.creathon.service.UserService;
import com.creathon.util.DesEncrypter;


@Controller
public class LoginController {

	@Autowired
	private UserService userService; 
	
	@Autowired
	private AgencyService agencyService;
	
	@Autowired
	private ProductionHouseService productionHouseService;
	

	 @RequestMapping(value="/", method = RequestMethod.GET)
	    public ModelAndView showLoginPage(ModelMap model){
	    	ModelAndView mav = new ModelAndView("index");
	    	mav.addObject("user", new User());
	    	
	        return mav;
	    }
	 
	 @RequestMapping(value="validate_user", method = RequestMethod.POST)
	    public ModelAndView validateUser(@ModelAttribute User user, HttpServletRequest request,HttpResponse response){
		 User loginUser =null;
	    	ModelAndView mav = new ModelAndView("index");
	    	try{
	    	user.setPassword(DesEncrypter.encrypt(user.getPassword()));
	    	loginUser = userService.validateUser(user);
	    	if(loginUser !=null)
	    	{
	    		System.out.println("login Successful");
	    		SessionBean sessionBean = new SessionBean();
	    		sessionBean.setUser(loginUser);
	    		if(loginUser.getUserType() == 'a')
	    		{
	    			Agency agency = agencyService.findAgencyByEmail(user.getUsername());
	    			sessionBean.setAgency(agency);
	    			System.out.println("looged in as agency");
	    			mav = new ModelAndView("agency_dashboard");
	    			
	    		}else if(loginUser.getUserType() == 'p')
	    		{
	    			ProductionHouse productionHouse = productionHouseService.findByEmail(user.getUsername());
	    			sessionBean.setProductionHouse(productionHouse);
	    			System.out.println("looged in as production house");
	    			
	    			mav = new ModelAndView("producer_dashboard");

	    		}
	    		
	    		request.getSession().setAttribute("sessionBean", sessionBean);
	    	}else
	    	{
	    		System.out.println("invald login name password");
	    	}
	    
	    	}catch(Exception e)
	    	{
	    		e.printStackTrace();
	    	}
	    	mav.addObject("user", new User());
	        return mav;
	    }
	 
}
