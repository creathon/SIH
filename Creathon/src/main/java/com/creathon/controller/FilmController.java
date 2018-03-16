package com.creathon.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.Films;
import com.creathon.bean.SessionBean;
import com.creathon.service.FilmsService;
import com.creathon.service.TeamMemberService;

@Controller
public class FilmController {

	@Autowired
	TeamMemberService teamMemberService;
	
	@Autowired
	FilmsService filmService;

	@RequestMapping(value = "/addFilm", method = RequestMethod.GET)
	public ModelAndView addFilm(ModelMap model, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("add_film");
		SessionBean sessionBean = (SessionBean) request.getSession().getAttribute("sessionBean");
		if (sessionBean != null) {
			Integer productionHouseId = sessionBean.getProductionHouse().getId();
			mav.addObject("film", new Films());
			mav.addObject("directorList", teamMemberService.listOfDirector(productionHouseId));
			mav.addObject("cinematographerList", teamMemberService.listOfCinematographer(productionHouseId));
			mav.addObject("localLineProducerList", teamMemberService.listOfLocalLineProducer(productionHouseId));
			mav.addObject("artDirectorList", teamMemberService.listOfArtDirector(productionHouseId));

		} else {
			return new ModelAndView("redirect:/");
		}
		return mav;
	}
	
	@RequestMapping(value = "/saveFilm", method = RequestMethod.POST)
	public ModelAndView saveFilm(@ModelAttribute("film") Films film, ModelMap model, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("film_list");
		SessionBean sessionBean = (SessionBean) request.getSession().getAttribute("sessionBean");
		if (sessionBean != null) {
			Integer productionHouseId = sessionBean.getProductionHouse().getId();
			System.out.println("Film Object-->"+film);
			film.setProductionHouse(sessionBean.getProductionHouse());
			if(filmService.saveOrUpdate(film)){
				mav.addObject("success", "Success!! New film successfully added..!");
				mav.addObject("filmList", filmService.findAllByProductionHouseId(productionHouseId));
				System.out.println(filmService.findAllByProductionHouseId(productionHouseId));
			}else{
				mav.addObject("error","Error!! Film could not be added..!");
				mav.addObject("filmList", filmService.findAllByProductionHouseId(productionHouseId));
			}

		} else {
			return new ModelAndView("redirect:/");
		}
		return mav;
	}
	
	@RequestMapping(value = "/filmList", method = RequestMethod.GET)
	public ModelAndView filmList(ModelMap model, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("film_list");
		SessionBean sessionBean = (SessionBean) request.getSession().getAttribute("sessionBean");
		if (sessionBean != null) {
			Integer productionHouseId = sessionBean.getProductionHouse().getId();
			List<Films> filmList = filmService.findAllByProductionHouseId(productionHouseId);
			if(filmList==null || filmList.size()==0){
				mav.addObject("error", "Sorry!! You have not added any films yet.");
			}
			System.out.println(filmList);
			mav.addObject("filmList", filmList);
		} else {
			return new ModelAndView("redirect:/");
		}
		return mav;
	}
	
	@RequestMapping(value = "ajax/deleteFilm")
	@ResponseBody
	public Integer deleteTeamMember(@RequestParam("id") Integer filmId)
	{
		System.out.println("inside ajax call for delete film");
		
		return filmService.deleteFilm(filmId);
	}
}
