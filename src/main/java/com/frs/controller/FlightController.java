package com.frs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.frs.bean.Flight;
import com.frs.dao.FlightDao;

@Controller
public class FlightController {
	
	 @Autowired  
	FlightDao dao;
	 @RequestMapping("/Flightform")    
	    public String showform(Model m){    
	        m.addAttribute("command", new Flight());  
	        return "Flightform";   
	    }    
	      
	    @RequestMapping(value="/savee",method = RequestMethod.POST)    
	    public String save(@ModelAttribute("flight") Flight flight){    
	        dao.save(flight);    
	        return "redirect:/viewFlight";    
	    }    
	    
	  @RequestMapping("/viewFlight")    
	    public String viewFlight(Model m){  
	        List<Flight> lists=dao.getFlight();
	        m.addAttribute("lists",lists);  
	        return "viewFlight";    
	    }    
	      
	    @RequestMapping(value="/editFlight/{FlightId}")    
	    public String edit(@PathVariable int FlightId, Model m){    
	        Flight flight=dao.getFlightById(FlightId);    
	        m.addAttribute("command",flight);  
	        return "Flighteditform";    
	    }    
	      
	    @RequestMapping(value="/editsave",method = RequestMethod.POST)    
	    public String editsave(@ModelAttribute("flight") Flight flight){    
	        dao.update(flight);    
	        return "redirect:/viewFlight";    
	    }    
	    
	    @RequestMapping(value="/deleteFlight/{FlightId}",method = RequestMethod.GET)    
	    public String delete(@PathVariable int FlightId){    
	        dao.delete(FlightId);    
	        return "redirect:/viewFlight";    
	    }     

}