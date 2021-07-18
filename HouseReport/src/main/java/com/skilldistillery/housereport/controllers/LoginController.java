package com.skilldistillery.housereport.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.housereport.data.UserDAO;

@Controller
public class LoginController {
	@Autowired
	private UserDAO userDao;

	@RequestMapping(path = { "/", "login.do" })
	public String login(Model model) {
		return "login";
	}
}
