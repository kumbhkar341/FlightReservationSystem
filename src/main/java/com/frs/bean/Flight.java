package com.frs.bean;

public class Flight 
{
	
	private int flightId,seatingCapacity,ReservationCapacity;
	private String flightName;
	public int getFlightId() {
		return flightId;
	}
	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}
	public int getSeatingCapacity() {
		return seatingCapacity;
	}
	public void setSeatingCapacity(int seatingCapacity) {
		this.seatingCapacity = seatingCapacity;
	}
	public int getReservationCapacity() {
		return ReservationCapacity;
	}
	public void setReservationCapacity(int reservationCapacity) {
		this.ReservationCapacity = reservationCapacity;
	}
	public String getFlightName() {
		return flightName;
	}
	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}
	
}