package com.creathon.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.commons.io.FileUtils;
import org.apache.tools.ant.taskdefs.Mkdir;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.Agency;
import com.creathon.bean.Location;
import com.creathon.bean.LocationAgency;
import com.creathon.bean.LocationPhotos;
import com.creathon.bean.SessionBean;
import com.creathon.dao.LocationDao;
import com.creathon.service.AgencyService;
import com.creathon.service.LocationService;
import com.creathon.service.LocationTypeService;

@Controller
public class LocationController {

	@Autowired
	LocationService locationService;

	@Autowired
	LocationTypeService locationTypeService;
	
	@Autowired
	AgencyService agencyService;
	
	@Value("${upload.path}")
	private String path;
	
	
	 @RequestMapping(value="/addLocation", method = RequestMethod.GET)
	    public ModelAndView addLocation(ModelMap model, HttpSession session){
	    	ModelAndView mav = new ModelAndView("add_location");
	    	SessionBean sessionBean = (SessionBean)session.getAttribute("sessionBean");
	    	if(sessionBean !=null && sessionBean.getAgency() !=null)
	    	{
	    		mav.addObject("location", new Location());
	    		//List<LocationAgency> locationAgencyList=Convertor.convertor( agencyService.getAgencyList(sessionBean.getAgency().getId()));
		    	mav.addObject("agencyList", agencyService.getAgencyList(sessionBean.getAgency().getId()));
		    	mav.addObject("locationTypeList", locationTypeService.findAll());
		    	return mav;
	    	}
	    	else
	    	{
	    		return new ModelAndView("redirect:/");
	    	}
	          
	    }
	 
	 
	 @RequestMapping(value="/saveLocation", method = RequestMethod.POST)
	    public ModelAndView saveLocation(@ModelAttribute("location") Location location,@RequestParam("agencyList1") List<Integer> otherAgencyList, ModelMap model, HttpSession session, BindingResult bindingResult){
		 System.out.println("RAju");
	    	ModelAndView mav = new ModelAndView("add_location");
	    	List<LocationAgency> locationAgencies=new ArrayList<>();
	    	for(Integer agencyId : otherAgencyList){
	    		Agency agency = new Agency();
	    		agency.setId(agencyId);
	    		LocationAgency locationAgency = new LocationAgency();
	    		locationAgency.setAgency(agency);
	    		locationAgency.setLocation(location);
	    		locationAgencies.add(locationAgency);
	    	}
	    	location.setLocationAgency(locationAgencies);
	    	
	    	System.out.println(otherAgencyList);
	    	SessionBean sessionBean = (SessionBean)session.getAttribute("sessionBean");
	    	if(sessionBean !=null && sessionBean.getAgency() !=null)
	    	{
	    	 Agency agency=sessionBean.getAgency();
			 System.out.println("dfhh"+location);
	    	MultipartFile logo = location.getLocationPhoto();
	    	List<MultipartFile> photoImages = location.getLocationMultiplePhoto();
	    	Random random = new Random();
	    	String imagePath =  path+"/agency/"+agency.getName()+"/"+location.getName();
				if (!logo.isEmpty()) {
					try {
					
						byte[] bytes = logo.getBytes();	
						
						String mainPath = new File("").getAbsolutePath() + imagePath;
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
				        String dbPath = imagePath + "/"+ logo.getOriginalFilename();
				        System.out.println(path);				
						Files.write(path, bytes);
						location.setPhoto(dbPath);
					
					} catch (Exception e) {
						e.printStackTrace();
					} 
				}
			System.out.println(location.getLocationPhotos().get(0).getFile());
				List<LocationPhotos> locationPhotos = location.getLocationPhotos();
				for(LocationPhotos locationPhoto:locationPhotos){
					MultipartFile photoImage=locationPhoto.getFile();
					if (!photoImage.isEmpty()) {
						try {
						
							
							byte[] bytes = logo.getBytes();		
							String imagePath1 =  imagePath+"/morePhotos";
							String mainPath = new File("").getAbsolutePath() +imagePath1;
							File theDir =new File(mainPath);
							
							if (!theDir.exists()) {
								try {
									theDir.mkdirs();
								} catch (Exception se) {
									se.printStackTrace();
								}
							}
							System.out.println("main path: " + mainPath);
					        Path path = Paths.get(mainPath, photoImage.getOriginalFilename());
					        String dbPath = imagePath1 + "/"+  photoImage.getOriginalFilename();
					        System.out.println(path);				
							Files.write(path, bytes);
							locationPhoto.setPhoto(dbPath);
							locationPhoto.setLocation(location);
						} catch (Exception e) {
							e.printStackTrace();
						} 
					}
			}
				location.setLocationPhotos(locationPhotos);
				location.setAgencyId(agency);
			boolean b= locationService.saveandupdate(location);
			if(b){
				
				mav.addObject("success", "Location Added Successfully");
			}
			else{
				mav.addObject("error", "Location Cannot Be Added");
			}
	    	mav.addObject("location", new Location());
	    	mav.addObject("locationTypeList", locationTypeService.findAll());
	    	mav.addObject("agencyList", agencyService.getAgencyList(sessionBean.getAgency().getId()));
	        return mav;
	    	}
	    	else
	    	{
	    		return new ModelAndView("redirect:/");
	    	}
	    }
	
	 @RequestMapping(value="myLocation", method = RequestMethod.GET)
	 public ModelAndView findMyLocation(ModelMap model,HttpSession session)
	 {
		 ModelAndView mav = new ModelAndView("my_locations");
		 List<Location> locationList = null;
		 SessionBean sessionBean =(SessionBean)session.getAttribute("sessionBean");
		 if(sessionBean != null && sessionBean.getAgency()!=null)
		 {
			 Integer agencyId = sessionBean.getAgency().getId();
			 locationList = locationService.findByAgencyId(agencyId);
			 mav.addObject(locationList);
		 }else
		 {
			 return new ModelAndView("redirect:/");
		 }
		 return mav;
	 }
	 
		@RequestMapping(value = "/addSeason/{count}" , method = RequestMethod.GET)
		public @ResponseBody ModelAndView addSeason(@PathVariable("count") Integer count, @ModelAttribute("location") Location location)
		{
			ModelAndView mav = new ModelAndView("location_photos");
			mav.addObject("location", new Location());
			mav.addObject("i", count);
			System.out.println("Season...."+ count);
			return mav;
		}
	 
	 @ResponseBody
		@RequestMapping("/downloadFile")
		public byte[] serveFile(@RequestParam("file") String file) throws IOException {
			Path path = Paths.get(file);		
		    return Files.readAllBytes(path);
		}
		
	
}
