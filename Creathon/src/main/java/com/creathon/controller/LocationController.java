package com.creathon.controller;

import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.Location;
import com.creathon.dao.LocationDao;
import com.creathon.service.LocationService;

@Controller
public class LocationController {

	@Autowired
	LocationService locationService;
	
	
	@Value("${upload.path}")
	private String path;
	
	
	 @RequestMapping(value="/addLocation", method = RequestMethod.GET)
	    public ModelAndView addLocation(ModelMap model){
	    	ModelAndView mav = new ModelAndView("add_location");
	    	mav.addObject("location", new Location());
	        return mav;
	    }
	 
	 
	 @RequestMapping(value="/saveLocation", method = RequestMethod.POST)
	    public ModelAndView saveLocation(@ModelAttribute(name="") Location location ,ModelMap model){
	    	ModelAndView mav = new ModelAndView("add_location");
	    	MultipartFile photoImage = location.getLocationPhoto();
			
				if (!photoImage.isEmpty()) {
					try {
						byte[] bytes = photoImage.getBytes();
						Path path1 = Paths.get(path + photoImage.getOriginalFilename());
						System.out.println("path1-->" + path1);
						location.setPhoto((""+path1));;
						Files.write(path1, bytes);
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			
	    	boolean b= locationService.saveandupdate(location);
	    	mav.addObject("location", new Location());
	        return mav;
	    }
	
	 @RequestMapping(value="/addLocationType", method = RequestMethod.GET)
	    public ModelAndView addLocationType(ModelMap model){
	    	ModelAndView mav = new ModelAndView("add_location_type");
	    	
	        return mav;
	    }
	
}
