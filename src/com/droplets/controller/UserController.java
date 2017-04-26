package com.droplets.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.droplets.entity.User;
import com.droplets.entity.UserDetails;
import com.droplets.service.UserServiceInft;

@Controller
public class UserController {

	UserServiceInft userService;

	@Autowired
	public void setUserService(UserServiceInft userService) {
		this.userService = userService;
	}

	@RequestMapping(value = "/createUser", method = RequestMethod.POST)
	public ModelAndView addUser(Model mode, @ModelAttribute User user) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("page1");

		modelAndView.addObject("perss", user);
		modelAndView.addObject("personObj", user);
		userService.addUserDao(user);

		mode.addAttribute("userDetails", new UserDetails());
		return modelAndView;
	}

}
