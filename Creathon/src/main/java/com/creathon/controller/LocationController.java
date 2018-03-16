package com.creathon.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.apache.tools.ant.taskdefs.Mkdir;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.Agency;
import com.creathon.bean.Location;
import com.creathon.bean.SessionBean;
import com.creathon.dao.LocationDao;
import com.creathon.service.AgencyService;
import com.creathon.service.LocationService;

@Controller
public class LocationController {

	@Autowired
	LocationService locationService;
	
	@Autowired
	AgencyService agencyService;
	
	@Value("${upload.path}")
	private String path;
	
	
	 @RequestMapping(value="/addLocation", method = RequestMethod.GET)
	    public ModelAndView addLocation(ModelMap model){
	    	ModelAndView mav = new ModelAndView("add_location");
	    	mav.addObject("location", new Location());
	        return mav;
	    }
	 
	 
	 @RequestMapping(value="/saveLocation", method = RequestMethod.POST)
	    public ModelAndView saveLocation(@ModelAttribute Location location ,ModelMap model, HttpSession session){
		 System.out.println("RAju");
	    	ModelAndView mav = new ModelAndView("add_location");
	    	SessionBean sessionBean = (SessionBean)session.getAttribute("sessionBean");
	    	if(sessionBean !=null && sessionBean.getAgency() !=null)
	    	{
	    	 Agency agency=sessionBean.getAgency();
			 System.out.println("dfhh"+location);
	    	MultipartFile logo = location.getLocationPhoto();
	    	List<MultipartFile> photoImages = location.getLocationMultiplePhoto();
			//for(MultipartFile photoImage:photoImages){
				if (!logo.isEmpty()) {
					try {
						Random random = new Random();
						
						byte[] bytes = logo.getBytes();					
						String mainPath = new File("").getAbsolutePath() + path+"/"+agency.getName()+"/"+location.getName();
						File theDir =new File(mainPath);
						
						if (!theDir.exists()) {
							try {
								theDir.mkdirs();
							} catch (Exception se) {
								se.printStackTrace();
							}
						}
						System.out.println("main path: " + mainPath);
				        Path path = Paths.get(mainPath, logo.getOriginalFilename());
				        System.out.println(path);				
						Files.write(path, bytes);
						location.setPhoto(path.toString());
						location.setAgencyId(agencyService.findAgencyByEmail("asi@asi.com"));
					} catch (Exception e) {
						e.printStackTrace();
					} 
				}
			//}
			boolean b= locationService.saveandupdate(location);
			if(b){
				mav.addObject("error", "Location Cannot Be Added");
			}
			else{
				
			}
	    	mav.addObject("location", new Location());
	        return mav;
	    	}
	    	else
	    	{
	    		return new ModelAndView("redirect:/");
	    	}
	    }
	
	/* @RequestMapping(value="/addLocationType", method = RequestMethod.GET)
	    public ModelAndView addLocationType(ModelMap model){
	    	ModelAndView mav = new ModelAndView("add_location_type");
	    	
	        return mav;
	    }*/
	 
	 @ResponseBody
		@RequestMapping("/downloadFile")
		public byte[] serveFile(@RequestParam("file") String file) throws IOException {
			Path path = Paths.get(file);		
		    return Files.readAllBytes(path);
		}
		
	
}
