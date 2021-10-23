package com.frs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;  
import org.springframework.web.bind.annotation.ModelAttribute;    
import org.springframework.web.bind.annotation.PathVariable;    
import org.springframework.web.bind.annotation.RequestMapping;    
import org.springframework.web.bind.annotation.RequestMethod;

import com.frs.bean.Flight;

public class FlightDao {
	
	JdbcTemplate template;    
    
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int save(Flight p){    
	    String sql="insert into frs_tbl_flight(flightName,SeatingCapacity,ReservationCapacity) values('"+p.getFlightName()+"',"+p.getSeatingCapacity()+",'"+p.getReservationCapacity()+"')";    
	    return template.update(sql);    
	}    
	public int update(Flight p){    
	    String sql="update frs_tbl_flight set flightName='"+p.getFlightName()+"', SeatingCapacity="+p.getSeatingCapacity()+",ReservationCapacity='"+p.getReservationCapacity()+"' where flightId="+p.getFlightId()+"";    
	    return template.update(sql);    
	}    
	public int delete(int flightId){    
	    String sql="delete from frs_tbl_flight where flightId="+flightId+"";    
	    return template.update(sql);    
	}    
	public Flight getFlightById(int flightId){    
	    String sql="select * from frs_tbl_flight where flightId=?";    
	    return template.queryForObject(sql, new Object[]{flightId},new BeanPropertyRowMapper<Flight>(Flight.class));    
	}   
	public List<Flight> getFlight(){    
	    return template.query("select * from frs_tbl_flight",new RowMapper<Flight>(){    
	        public Flight mapRow(ResultSet rs, int row) throws SQLException {    
	            Flight e=new Flight();    
	            e.setFlightId(rs.getInt(1));    
	            e.setFlightName(rs.getString(2));    
	            e.setSeatingCapacity(rs.getInt(3));    
	            e.setReservationCapacity(rs.getInt(4));    
	            return e;    
	        }    
	    });    
	}

	}    
	