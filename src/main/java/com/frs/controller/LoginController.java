package com.frs.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;    
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestParam;

import com.frs.bean.CredentialsBean;
import com.frs.bean.ProfileBean;
import com.frs.dao.CredentialsDao;
import com.frs.util.*;

@Controller
public class LoginController {
	@Autowired
	private DbUtil db;
	
	@Autowired  
	CredentialsDao dao;
	
	@RequestMapping("/login")
	public String login(HttpServletRequest req) {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		CredentialsBean cb = new CredentialsBean();
		cb.setuserID(username);
		cb.setPassword(password);
		User v = new User();
		String retValue =  v.login(cb, db);
		if(retValue.equals("A")) {
			return "Admin";
		}
		else if(retValue.equals("C"))
		{
			return "Customer";
		}
		else {
			return "index";
		}
	}
	
	@RequestMapping("/Contactus")
	public String contactus() {
		return "Contactus";
	}
	
	@RequestMapping("/Aboutus")
	public String aboutus() {
		return "Aboutus";
	}
	
	//New User Signup
	@RequestMapping("/NewUserSignup")
	public String signup() {
		return "NewUserSignup";
	}
	
	@RequestMapping("/chpass")
	public String chpass() {
		return "change";
	}
	
	@RequestMapping(value="/paw")  
	 public String chp(@RequestParam("userid") String userid,@RequestParam("password") String password,Model m){ 
		CredentialsBean ob=new CredentialsBean();
		ob.setPassword(password);
		ob.setuserID(userid);
		dao.chp(password, userid);
	  System.out.println("password changed");
	  return "Customer";
	      
	 }	
	
	//Getting Details From the New User
	@RequestMapping("/save")
	public String savedetails(HttpServletRequest req) {
		String fname,lname,gender,street,loc,city,state,mail,pss,dob;
		String pin,mob;
		fname = req.getParameter("Firstname");
		lname = req.getParameter("Lastname");
		gender = req.getParameter("gender");
		street = req.getParameter("street");
		loc = req.getParameter("location");
		city = req.getParameter("city");
		state = req.getParameter("state");
		mail = req.getParameter("mail");
		pss = req.getParameter("password");
		dob = req.getParameter("dob");
		pin = (req.getParameter("pin"));
		mob = (req.getParameter("mob"));
		ProfileBean p = new ProfileBean();
		p.setfirstName(fname);
		p.setlastName(lname);
		p.setGender(gender);
		p.setStreet(street);
		p.setLocation(loc);
		p.setCity(city);
		p.setState(state);
		p.setPincode(pin);
		p.setmobileNo(mob);
		p.setemailID(mail);
		p.setPassword(pss);
		p.setdateOfBirth(dob);
		User user = new User();
		user.register(p,db);
		System.out.println("Registration successful");
		return "redirect:/index.jsp";
	}
}
