package com.frs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.frs.bean.Passenger;
import com.frs.bean.Reservation;
import com.frs.bean.Route;
import com.frs.dao.PassengerDao;
import com.frs.dao.RouteDao;

@Controller
public class PassengerController {

	
	@Autowired  
	 PassengerDao dao;
		 
		 
		 @RequestMapping("/Continueform")    
		    public String showform(Model m){    
		        m.addAttribute("command", new Passenger());  
		        return "Continueform";   
		    }    
		      
		    @RequestMapping(value="/addss",method = RequestMethod.POST)    
		    public String save(@ModelAttribute("passenger") Passenger passenger){    
		        dao.save(passenger);    
		        return "redirect:/viewContinue";    
		    }    
		    /* It provides list of employees in model object */    
		    @RequestMapping("/viewContinue")    
		    public String viewPassengers(Model m){    
		        List<Passenger> list=dao.getPassenger();    
		        m.addAttribute("list",list);  
		        return "viewContinue";    
		    }    
		      
		    @RequestMapping(value="/editPassenger/{ReservationId}")    
		    public String edit(@PathVariable int ReservationId, Model m){    
		    	Passenger passenger=dao.getReservationById(ReservationId);    
		        m.addAttribute("command",passenger);  
		        return "Continueeditform";    
		    }    
		      
		    @RequestMapping(value="/edttsave",method = RequestMethod.POST)    
		    public String editsave(@ModelAttribute("passenger") Passenger passenger){    
		        dao.update(passenger);    
		        return "redirect:/viewContinue";    
		    }    
		    
		    @RequestMapping(value="/deletePassenger/{ReservationId}",method = RequestMethod.GET)    
		    public String delete(@PathVariable int ReservationId){    
		        dao.delete(ReservationId);    
		        return "redirect:/viewContinue";    
		    }      

		    @RequestMapping(value = "/print")
			public String view(@RequestParam("ScheduleId") int ScheduleId, Model m) {
				List<Passenger> list1 = (List<Passenger>) dao.getPassenger();
				m.addAttribute("list1", list1);
				System.out.println("hello");
				return "print";

			}
}

