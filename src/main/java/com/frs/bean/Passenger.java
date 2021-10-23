package com.frs.bean;

public class Passenger {
	
	private int Seatno,ReservationId,ScheduleId,Age;
	private String Name;
	
	public int getSeatno() {
		return Seatno;
	}
	public void setSeatno(int seatno) {
		Seatno = seatno;
	}
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
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}

}
