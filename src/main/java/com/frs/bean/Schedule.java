package com.frs.bean;

import java.sql.Date;

public class Schedule {

	private int ScheduleId,FlightId,RouteId ;
	 private String StartDate;
	public int getScheduleId() {
		return ScheduleId;
	}
	public void setScheduleId(int scheduleId) {
		ScheduleId = scheduleId;
	}
	public int getFlightId() {
		return FlightId;
	}
	public void setFlightId(int flightId) {
		FlightId = flightId;
	}
	public int getRouteId() {
		return RouteId;
	}
	public void setRouteId(int routeId) {
		RouteId = routeId;
	}
	public String getStartDate() {
		return StartDate;
	}
	public void setStartDate(String startDate) {
		StartDate = startDate;
	}

	
	}
	
	
