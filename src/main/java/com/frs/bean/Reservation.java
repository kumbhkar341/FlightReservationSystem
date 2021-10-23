package com.frs.bean;

import java.sql.Date;

public class Reservation {

	private int ReservationId,ScheduleId,UserId,NoOfSeats,TotalFare;
	private String BookingStatus;
    private String BookingDate,JourneyDate;
    
	public int getReservationId() {
		return ReservationId;
	}
	public void setReservationId(int reservationId) {
		ReservationId = reservationId;
	}
	public int getScheduleId() {
		return ScheduleId;
	}
	public void setScheduleId(int scheduleId) {
		ScheduleId = scheduleId;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public int getNoOfSeats() {
		return NoOfSeats;
	}
	public void setNoOfSeats(int noOfSeats) {
		NoOfSeats = noOfSeats;
	}
	public int getTotalFare() {
		return TotalFare;
	}
	public void setTotalFare(int totalFare) {
		TotalFare = totalFare;
	}
	public String getBookingStatus() {
		return BookingStatus;
	}
	public void setBookingStatus(String bookingStatus) {
		BookingStatus = bookingStatus;
	}
	public String getBookingDate() {
		return BookingDate;
	}
	public void setBookingDate(String bookingDate) {
		BookingDate = bookingDate;
	}
	public String getJourneyDate() {
		return JourneyDate;
	}
	public void setJourneyDate(String journeyDate) {
		JourneyDate = journeyDate;
	}
	
	
	
}
