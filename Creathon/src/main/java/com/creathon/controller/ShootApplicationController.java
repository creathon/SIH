package com.creathon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.creathon.bean.ShootApplication;

@Controller
public class ShootApplicationController {

	@RequestMapping(value="shootLocation", method = RequestMethod.GET)
	public ModelAndView shootLocation(Model model)
	{
		ModelAndView mav = new ModelAndView("apply_shoot");
		mav.addObject("shootApplication",new ShootApplication());
		return new ModelAndView("");
	}
	
}

