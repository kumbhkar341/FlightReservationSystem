package com.frs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.frs.bean.Route;
import com.frs.bean.Schedule;
import com.frs.bean.Flight;
import com.frs.dao.RouteDao;
import com.frs.dao.ScheduleDao;
import com.frs.dao.FlightDao;

@Controller
public class ViewCustomer{
	
	 @Autowired  
		FlightDao dao;
	 @Autowired 
	 	ScheduleDao dao1;
	 @Autowired  
		RouteDao dao2;
	
	 @RequestMapping("/viewFlightCust")    
	    public String viewFlight(Model m){    
	        List<Flight> list=dao.getFlight();    
	        m.addAttribute("list",list);  
	        return "viewFlightCust";    
	    }    
	 
	 
	 @RequestMapping("/viewScheduleCust")    
	    public String viewSchedule(Model m){    
	        List<Schedule> list=dao1.getSchedule();    
	        m.addAttribute("list",list);  
	        return "viewScheduleCust";    
	    }    

	 
	 @RequestMapping("/viewRouteCust")    
	    public String viewRoutes(Model m){    
	        List<Route> list=dao2.getRoute();    
	        m.addAttribute("list",list);  
	        return "viewRouteCust";    
	    }    
	 
	 
}
