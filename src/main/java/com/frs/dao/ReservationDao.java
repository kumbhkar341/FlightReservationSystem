package com.frs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

// org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import com.frs.bean.Reservation;

public class ReservationDao {
	
	JdbcTemplate template;    
    
	
	public void setTemplate(JdbcTemplate template) {    
	    this.template = template;    
	}    
	public int save(Reservation p){    
	    String sql="insert into frs_tbl_reservation(ScheduleId,UserId,BookingDate,JourneyDate,NoOfSeats,TotalFare,BookingStatus) values('"+p.getScheduleId()+"','"+p.getUserId()+"','"+p.getBookingDate()+"','"+p.getJourneyDate()+"','"+p.getNoOfSeats()+"','"+p.getTotalFare()+"','pending')";    
	    return template.update(sql);    
	}    
	public int update(Reservation p){    
	    String sql="update frs_tbl_reservation set ScheduleId='"+p.getScheduleId()+"', JourneyDate='"+p.getJourneyDate()+"',NoOfSeats='"+p.getNoOfSeats()+"',TotalFare='"+p.getTotalFare()+"' where ReservationId="+p.getReservationId()+"";    
	    return template.update(sql);    
	}    
	public int delete(int ReservationId){    
	    String sql="delete from frs_tbl_reservation where ReservationId="+ReservationId+"";    
	    return template.update(sql);    
	}    
	public Reservation getReservationById(int ReservationId){    
	    String sql="select * from frs_tbl_reservation where ReservationId=?";    
	    return template.queryForObject(sql, new Object[]{ReservationId},new BeanPropertyRowMapper<Reservation>(Reservation.class));    
	}   
	public List<Reservation> getReservation(){    
	    return template.query("select * from frs_tbl_reservation",new RowMapper<Reservation>(){    
	        public Reservation mapRow(ResultSet rs, int row) throws SQLException {    
	            Reservation e=new Reservation();    
	            e.setReservationId(rs.getInt(1));    
	            e.setScheduleId(rs.getInt(2));    
	            e.setUserId(rs.getInt(3)); 
	            e.setBookingDate(rs.getString(4));
	            e.setJourneyDate(rs.getString(5)); 
	            e.setNoOfSeats(rs.getInt(6));
	            e.setTotalFare(rs.getInt(7));
	            e.setBookingStatus(rs.getString(8)); 
	            return e;    
	        }    
	    });    
	}    
  
}


