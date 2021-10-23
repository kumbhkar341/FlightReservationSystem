package com.frs.dao;

	import java.sql.ResultSet;
	import java.sql.SQLException;
	import java.util.List;

	// org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.jdbc.core.BeanPropertyRowMapper;
	import org.springframework.jdbc.core.JdbcTemplate;
	import org.springframework.jdbc.core.RowMapper;

     import com.frs.bean.Schedule;

	public class ScheduleDao {
		
		JdbcTemplate template;    
	    
		
		public void setTemplate(JdbcTemplate template) {    
		    this.template = template;    
		}    
		public int save(Schedule p){    
		    String sql="insert into frs_tbl_schedule(FlightId,RouteId,StartDate) values('"+p.getFlightId()+"',"+p.getRouteId()+",'"+p.getStartDate()+"')";    
		    return template.update(sql);    
		}    
		public int update(Schedule p){    
		    String sql="update frs_tbl_schedule set FlightId='"+p.getFlightId()+"', RouteId="+p.getRouteId()+",StartDate='"+p.getStartDate()+"' where ScheduleId="+p.getScheduleId()+"";    
		    return template.update(sql);    
		}    
		public int delete(int ScheduleId){    
		    String sql="delete from frs_tbl_schedule where ScheduleId="+ScheduleId+"";    
		    return template.update(sql);    
		}    
		public Schedule getScheduleById(int ScheduleId){    
		    String sql="select * from frs_tbl_schedule where ScheduleId=?";    
		    return template.queryForObject(sql, new Object[]{ScheduleId},new BeanPropertyRowMapper<Schedule>(Schedule.class));    
		}   
		public List<Schedule> getSchedule(){    
		    return template.query("select * from frs_tbl_schedule",new RowMapper<Schedule>(){    
		        public Schedule mapRow(ResultSet rs, int row) throws SQLException {    
		        	Schedule e=new Schedule(); 
		        	e.setScheduleId(rs.getInt(1));
		            e.setFlightId(rs.getInt(2));        
		            e.setRouteId(rs.getInt(3));    
		            e.setStartDate(rs.getString(4));   
		            return e;    
		        }    
		    });    
		}    
		}   




	 


