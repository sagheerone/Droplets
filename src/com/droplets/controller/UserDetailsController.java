package com.droplets.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.droplets.entity.UserDetails;
import com.droplets.service.UserServiceInft;

@Controller
public class UserDetailsController {

	UserServiceInft userService;

	@Autowired
	public void setUserService(UserServiceInft userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "/createUserDetails", method = RequestMethod.POST)
	public ModelAndView getdetails(@ModelAttribute UserDetails userDetails,
			Model mode, BindingResult result) {

		if (result.hasErrors()) {
			System.out.println("error");
		}

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("page2");
		modelAndView.addObject("pers", userDetails);
		userDetails.setDateCreated(new Date());
		userService.addUserDetailsDao(userDetails);
		return modelAndView;
	}

}
