package com.Controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class PageController {

	
	@RequestMapping(value="/Login")
	public String showLoginPage()
	{
		return "Login";
	}
	
	@RequestMapping(value="/User")
	public String showUserPage()
	{
		return "User";
	}
	@RequestMapping(value="/Admin")
	public String showAdminPage()
	{
		return "Admin";
	}
	
}

