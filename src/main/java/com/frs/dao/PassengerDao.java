package com.frs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.frs.bean.Passenger;
import com.frs.bean.Reservation;
import com.frs.bean.Route;

public class PassengerDao {
JdbcTemplate template;    
    
	
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int save(Passenger p){    
	    String sql="insert into frs_tbl_passenger(ReservationId,ScheduleId,Name,Age,Seatno) values('"+p.getReservationId()+"','"+p.getScheduleId()+"','"+p.getName()+"','"+p.getAge()+"','"+p.getSeatno()+"')";    
	    return template.update(sql);    
	}    
	public int update(Passenger p){    
	    String sql="update frs_tbl_passenger set Name='"+p.getName()+"', Age='"+p.getAge()+"',Seatno='"+p.getSeatno()+"'where ReservationId="+p.getReservationId()+""; 
	    return template.update(sql);    
	}    
	public int delete(int ReservationId){    
	    String sql="delete from frs_tbl_passenger where ReservationId="+ReservationId+"";    
	    return template.update(sql);    
	}    
	public Passenger getReservationById(int ReservationId){    
	    String sql="select * from frs_tbl_passenger where ReservationId=?";    
	    return template.queryForObject(sql, new Object[]{ReservationId},new BeanPropertyRowMapper<Passenger>(Passenger.class));    
	}  
	
	
	public List<Passenger> getReservationByid(int x){    
	    return template.query("select * from frs_tbl_passenger where ReservationId="+x,new RowMapper<Passenger>(){    
	    	
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
