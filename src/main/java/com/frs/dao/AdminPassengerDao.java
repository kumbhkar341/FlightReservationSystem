package com.frs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.frs.bean.Passenger;

public class AdminPassengerDao {

JdbcTemplate template;    
    
	
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}   
	public List<Passenger> getPassenger(){    
	    return template.query("select * from frs_tbl_passenger",new RowMapper<Passenger>(){    
	        public Passenger mapRow(ResultSet rs, int row) throws SQLException {    
	        	Passenger e=new Passenger();    
	            e.setReservationId(rs.getInt(1));    
	            e.setScheduleId(rs.getInt(2));    
	            e.setName(rs.getString(3)); 
	            e.setAge(rs.getInt(4));
	            e.setSeatno(rs.getInt(5));
	            return e;    
	        }    
	    });    
	}    
}
