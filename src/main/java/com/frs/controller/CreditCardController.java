package com.frs.controller;

import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.frs.bean.CreditCard;
import com.frs.bean.Passenger;
import com.frs.bean.Reservation;
import com.frs.bean.Route;
import com.frs.dao.CreditCardDao;
import com.frs.dao.PassengerDao;

@Controller
public class CreditCardController {

	
	@Autowired  
CreditCardDao dao;
	
	@RequestMapping("/pay")    
    public String shows(Model m){    
        m.addAttribute("command", new CreditCard());  
        return "pay";   
    }
  
	
	@RequestMapping(value="/payv")  
	 public String view(@RequestParam("CreditCardNumber") int CreditCardNumber,@RequestParam("route") int route,@RequestParam("uid") int uid,Model m){ 
		Route ro=new Route();
		CreditCard cc=new CreditCard();
		Reservation rr=new Reservation();
		cc.setBalance(CreditCardNumber);
		ro.setRouteId(route);
		rr.setUserId(uid);
		System.out.println("*********");
		dao.updateps(route,CreditCardNumber,uid);
	    return "finalpage";
	      
	 }
   
	@RequestMapping("/payt/{creditCardNumber}")    
    public String viewReservation(@RequestParam("route") String route,@PathVariable String creditCardNumber,Model m){ 
	List<Passenger> list2=dao.getPassenger();    
    m.addAttribute("list2",list2);  
    return "printing";    
    }
	
	
	
}

