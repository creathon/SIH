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
import com.creathon.service.CommonService;
import com.creathon.service.FilmsService;
import com.creathon.service.LocationService;
import com.creathon.service.ProductionHouseService;
import com.creathon.service.ShootApplicationService;
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
	
	@Autowired
	private LocationService locationService;  
	
	@Autowired
	private FilmsService filmService; 

	@Autowired
	private CommonService commonService; 
	
	@Autowired
	private ShootApplicationService shootApplicationService; 
	

	 @RequestMapping(value="/login", method = RequestMethod.GET)
	    public ModelAndView showLoginPage(ModelMap model){
	    	ModelAndView mav = new ModelAndView("login");
	    	mav.addObject("user", new User());
	    	mav.addObject("productionHouse", new ProductionHouse());
	    	mav.addObject("countryList", commonService.getCountryList());
	    	System.out.println("landing page....");
	        return mav;
	    }
	 
	 @RequestMapping(value="/", method = RequestMethod.GET)
	    public ModelAndView mainPage(ModelMap model){
	    	ModelAndView mav = new ModelAndView("mainpage");
	    
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
	    			mav.addObject("productionHouseCount",productionHouseService.getProductionHouseCount());
	    			mav.addObject("locationCount",locationService.getLocationCount());
	    			mav.addObject("filmCount",filmService.getFilmCount());
	    			mav.addObject("applicationCount",shootApplicationService.getshootApplicationCount());
	    			mav.addObject("login","xcnm,mc,");
	    			
	    		}else if(loginUser.getUserType() == 'p')
	    		{
	    			ProductionHouse productionHouse = productionHouseService.findByEmail(user.getUsername());
	    			sessionBean.setProductionHouse(productionHouse);
	    			System.out.println("looged in as production house");
	    			
	    			mav = new ModelAndView("producer_dashboard");

	    		}else if(loginUser.getUserType() == 'o')
	    		{
	    			ProductionHouse productionHouse = productionHouseService.findByEmail(user.getUsername());
	    			sessionBean.setProductionHouse(productionHouse);
	    			System.out.println("looged in as admin ");
	    			
	    			mav = new ModelAndView("admin_dashboard");

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
	 
	 @RequestMapping(value="logout", method = RequestMethod.GET)
	    public ModelAndView logout(HttpServletRequest request,HttpResponse response)
		 {
			 
			 request.getSession().invalidate();
			 return new ModelAndView("redirect:/");
		 }
}
