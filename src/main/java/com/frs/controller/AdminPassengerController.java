package com.frs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.frs.bean.Passenger;
import com.frs.dao.AdminPassengerDao;

@Controller
public class AdminPassengerController {
	@Autowired  
	AdminPassengerDao dao;
	
	@RequestMapping("/viewPassenger")    
    public String viewPassengers(Model m){    
        List<Passenger> list=dao.getPassenger();    
        m.addAttribute("list",list);  
        return "viewPassenger";    
    }    
      

}
