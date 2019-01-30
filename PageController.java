package com.parkingsystem.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.parkingsystem.dao.UserDao;

@Controller
public class PageController {

	@Autowired
	UserDao dao;
	
	@RequestMapping("/")
	public String myIndex() 
	{
		return "HomePage";
	}
	
	@RequestMapping("/adminHome")
	public String myIndexx() 
	{
		return "AdminHome";
	}

	@RequestMapping(value="/registerPage")
	public String RegisterPage()
	{
		return "UserReg";
	}
	
	@RequestMapping(value="/contactUs")
	public String contactPage()
	{
		return "contactus";
	}
	
	@RequestMapping("/UserLogin")
	public String userLogin(HttpServletRequest request,ModelMap map) 
	{
			return "UserLogin";
		
	}
		
	@RequestMapping("/vehicle")
	public String vehicle() 
	{
		return "Vehicle";
	}
	@RequestMapping("/aboutusDet")
	public String Aboutus() 
	{
		return "aboutus";
	}
	
	@RequestMapping("/userHome")
	public String UserHome() 
	{
		return "UserHome";
	}
	
	@RequestMapping("/locDet")
	public String locD() 
	{
		return "LocationDet";
	}
	
}
	
