package com.creathon.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.TeamMember;
import com.creathon.service.TeamMemberService;

@Controller
public class TeamMemberController {
	
	@Autowired
	TeamMemberService teamMemberService;
	
	@RequestMapping(value="/addTeamMember", method = RequestMethod.GET)
    public ModelAndView addTeamMember(ModelMap model){
    	ModelAndView mav = new ModelAndView("add_team_member");
    	
    	mav.addObject("teamMember", new TeamMember());
        return mav;
    }
	
	@RequestMapping(value="/saveTeamMember", method = RequestMethod.POST)
    public ModelAndView saveTeamMember(@ModelAttribute("teamMember") TeamMember teamMember, ModelMap model){
    	ModelAndView mav = new ModelAndView("add_team_member");
    	System.out.println("Inside save team member");
    	
    	if(teamMemberService.saveAndUpdate(teamMember)){
    		mav.addObject("success", "Success! Crew successfully added..");
    	}else{
    		mav.addObject("error", "Error! Crew could not be added..");
    	}
    	mav.addObject("teamMember", new TeamMember());
        return mav;
    }
	
}
