package com.creathon.controller;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.Designation;
import com.creathon.bean.ProductionHouse;
import com.creathon.bean.SessionBean;
import com.creathon.bean.TeamMember;
import com.creathon.service.TeamMemberService;

@Controller
public class TeamMemberController {

	@Autowired
	TeamMemberService teamMemberService;

	@RequestMapping(value = "/addTeamMember", method = RequestMethod.GET)
	public ModelAndView addTeamMember(ModelMap model) {
		ModelAndView mav = new ModelAndView("add_team_member");

		mav.addObject("teamMember", new TeamMember());
		return mav;
	}
	
	@RequestMapping(value = "/saveTeamMember", method = RequestMethod.POST)
	public ModelAndView saveTeamMember(@ModelAttribute("teamMember") TeamMember teamMember, ModelMap model,
			HttpServletRequest request) {

		SessionBean sessionBean = (SessionBean) request.getSession().getAttribute("sessionBean");
		System.out.println(sessionBean);

		System.out.println("production house" + sessionBean.getProductionHouse().getId());
		System.out.println("team member-->" + teamMember);
		ModelAndView mav = new ModelAndView("team_member_list");
		System.out.println("Inside save team member");
		System.out.println("teamMember object-->" + teamMember);
		
		teamMember.setProductionHouse(sessionBean.getProductionHouse());
		
		try {
			if (teamMemberService.saveAndUpdate(teamMember)) {
				mav.addObject("success", "Success! Crew Member successfully added..");
			} else {
				mav.addObject("error", "Error! Crew Member could not be added..");
			}
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("error", "Error! Crew Member could not be added..");
		}
		
		List<TeamMember> teamMemberList = teamMemberService.listOfTeamMemberByProdId(sessionBean.getProductionHouse().getId());
		if(teamMemberList==null || teamMemberList.size()==0){
			mav.addObject("error", "Sorry!! you dont have any crew members");
		}
		mav.addObject("teamMemberList", teamMemberList);
		//mav.addObject("teamMember", new TeamMember());
		return mav;
	}
	
	@RequestMapping(value = "/teamMemberList", method = RequestMethod.GET)
	public ModelAndView teamMemberList(ModelMap model,HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("team_member_list");
		SessionBean sessionBean = (SessionBean)request.getSession().getAttribute("sessionBean");
		
		List<TeamMember> teamMemberList = teamMemberService.listOfTeamMemberByProdId(sessionBean.getProductionHouse().getId());
		if(teamMemberList==null || teamMemberList.size()==0){
			mav.addObject("error", "Sorry!! you dont have any crew members");
		}
		System.out.println(teamMemberList);
		mav.addObject("teamMemberList", teamMemberList);
		return mav;
	}

}
