package com.creathon.controller;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.Films;
import com.creathon.bean.Location;
import com.creathon.bean.LocationAgency;
import com.creathon.bean.LocationPermission;
import com.creathon.bean.ProductionHouse;
import com.creathon.bean.SessionBean;
import com.creathon.bean.ShootApplication;
import com.creathon.bean.Status;
import com.creathon.bean.TeamMember;
import com.creathon.service.AgencyService;
import com.creathon.service.FilmsService;
import com.creathon.service.LocationPermissionService;
import com.creathon.service.LocationService;
import com.creathon.service.ShootApplicationService;
import com.creathon.service.TeamMemberService;

@Controller
public class ShootApplicationController {

	@Autowired
	private FilmsService filmService;
	
	@Autowired
	private LocationService locationService;
	
	@Autowired
	private AgencyService agencyService;
	
	@Autowired
	private TeamMemberService teamMemberService;
	
	@Autowired
	private ShootApplicationService shootApplicationService;
	
	@Autowired
	private LocationPermissionService locationPermissionService;
	
	@Value("${upload.path}")
	private String path;
	
	@RequestMapping(value="shootLocation", method = RequestMethod.GET)
	public ModelAndView shootLocation(Model model,HttpSession session)
	{
		SessionBean sessionBean = (SessionBean) session.getAttribute("sessionBean");	
		if(sessionBean !=null && sessionBean.getProductionHouse() !=null)
		{
		ProductionHouse productionHouse = sessionBean.getProductionHouse();
		Integer productionHouseId = productionHouse.getId();
		ModelAndView mav = new ModelAndView("apply_shoot");
		mav.addObject("shootApplication",new ShootApplication());
		mav.addObject("agencyList",agencyService.findAll());
		List<TeamMember> listTeamMember =teamMemberService.listOfCameraman(productionHouseId);
		System.out.println("teammember list"+listTeamMember);
		mav.addObject("cameramanList",listTeamMember);
		mav.addObject("filmList",filmService.findAllByProductionHouseId(productionHouseId));
		return mav;
		}else
		{
			
		return new ModelAndView("redirect:/");
		}
	}
	
	@RequestMapping(value="saveshoot", method = RequestMethod.POST)
	public ModelAndView saveShootLocation(@ModelAttribute("shootApplication") ShootApplication shootApplication,HttpSession session,HttpServletRequest request)
	{
		Status status = new Status();
		status.setId(1);
		System.out.println(shootApplication.getAerialPhotography().getCameramanId().getId()); 
		SessionBean sessionBean = (SessionBean) session.getAttribute("sessionBean");	
		System.out.println(request.getParameter("a"));
		if(request.getParameter("a").equals("0"))
		{
			System.out.println("hello");
			shootApplication.setAerialPhotography(null);
		}
		if(sessionBean !=null && sessionBean.getProductionHouse() !=null)
		{
			ProductionHouse productionHouse = sessionBean.getProductionHouse();
		shootApplication.getScript().setFilm(shootApplication.getFilm());
		String scriptPath = upload(shootApplication.getScript().getScriptFile(),null,productionHouse,shootApplication.getFilm());
		
		shootApplication.getScript().setScript(scriptPath);
			
		
			Integer productionHouseId = productionHouse.getId();
			ModelAndView mav = new ModelAndView("apply_shoot");
			mav.addObject("shootApplication",new ShootApplication());
			mav.addObject("agencyList",agencyService.findAll());
			List<TeamMember> listTeamMember =teamMemberService.listOfCameraman(productionHouseId);
			System.out.println("teammember list"+listTeamMember);
			mav.addObject("cameramanList",listTeamMember);
			mav.addObject("filmList",filmService.findAllByProductionHouseId(productionHouseId));
			shootApplication.setProductionHouse(productionHouse);
			
			//set permission for all other required agency
			Location location = locationService.locationById(shootApplication.getLocation().getId());
			List<LocationAgency> locationAgencyList = location.getLocationAgency();
			List<LocationPermission> locationPermissionList = new ArrayList<>();
			for(LocationAgency locationAgency:locationAgencyList)
			{
			LocationPermission locationPermission = new LocationPermission();
			locationPermission.setAgency(locationAgency.getAgency());
			locationPermission.setShootApplication(shootApplication);
			
			locationPermission.setStatus(status);
			locationPermissionList.add(locationPermission);
			}
			//set permisson for this agency
			LocationPermission locationPermission = new LocationPermission();
			locationPermission.setAgency(locationService.locationById(shootApplication.getLocation().getId()).getAgencyId());
			locationPermission.setShootApplication(shootApplication);
			locationPermission.setStatus(status);
			locationPermissionList.add(locationPermission);
			 shootApplication.setLocationPermissions(locationPermissionList);
			 
			 shootApplication.setStatus(status);
			 shootApplication.setViewStatus("0");
			 
			 SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
			    Date date = new Date();  
			    System.out.println(formatter.format(date)); 
			    
			 try {
				shootApplication.setDateOfSubmission(formatter.parse(formatter.format(date)));
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			 //save shoot application
			Boolean b=shootApplicationService.save(shootApplication);
			
			
			if(b)
			{
				mav.addObject("success","Application Successfully Forwarded to the Departments");
				}else
			{
				mav.addObject("error","Application Failed ");
			}
		return mav;
		}else// if there is no session
		{
		return new ModelAndView("redirect:/");
		}

	}
	
	public String upload(MultipartFile file,String requiredPath,ProductionHouse productionHouse,Films film)
	{
	String dbPath = path+"/productionHouse/"+productionHouse.getName()+"/Film/"+film.getId()+"/";	
    	Random random = new Random();
    	//String imagePath =  path+"/agency/"+agency.getName()+"/"+location.getName();
			if (!file.isEmpty()) {
				try {
				
					byte[] bytes = file.getBytes();	
					
					String mainPath = new File("").getAbsolutePath() + dbPath;
					File theDir =new File(mainPath);
					if (!theDir.exists()) {
						try {
							theDir.mkdirs();
						} catch (Exception se) {
							se.printStackTrace();
						}
					}
					System.out.println("main path: " + mainPath);
			        Path path = Paths.get(mainPath, file.getOriginalFilename());
			        System.out.println(path);				
					Files.write(path, bytes);
				return dbPath+file.getOriginalFilename();
				
				} catch (Exception e) {
					e.printStackTrace();
				} 
			}
		return null;
		
	}
}

