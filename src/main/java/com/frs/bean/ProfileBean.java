package com.frs.bean;

import java.sql.Date;

public class ProfileBean {

	private String userID,firstName,lastName,Gender,Street,Location,City,State,Pincode,mobileNo,emailID,Password,dateOfBirth;
    
    public String getuserID() 
    {
		return userID;
	}
	
	public void setuserID(String userID) 
	{
		this.userID = userID;
	}
	
	public String getfirstName() {
		return firstName;
	}

	public void setfirstName(String firstName) 
	{
		this.firstName = firstName;
	}
	public String getlastName() {
		return lastName;
	}

	public void setlastName(String lastName) 
	{
		this.lastName = lastName;
	}
	public String getdateOfBirth() 
	{
return dateOfBirth;
	}
public void setdateOfBirth(String dob)
{
	this.dateOfBirth = dob;
}
public String getGender() {
	return Gender;
}
	public void setGender(String Gender) 
	{
		this.Gender = Gender;
	}
	public String getStreet() {
		return Street;
	}

	public void setStreet(String Street) 
	{
		this.Street = Street;
	}
	public String getLocation() {
		return Location;
	}

	public void setLocation(String Location) 
	{
		this.Location = Location;
	}
	public String getCity() {
		return City;
	}
	public void setCity(String City) 
	{
		this.City = City;
	}
	public String getState() {
		return State;
	}
	public void setState(String State) 
	{
		this.State = State;
	}
	public String getPincode() {
		return Pincode;
	}
	public void setPincode(String Pincode) 
	{
		this.Pincode = Pincode;
	}
	public String getmobileNo() {
		return mobileNo;
	}
	
	public void setmobileNo(String mobileNo) 
	{
		this.mobileNo = mobileNo;
	}
	public String getemailID() {
		return emailID;
	}
	public void setemailID(String emailID) 
	{
		this.emailID = emailID;
	}
		public String getPassword() {
		return Password;
	}
	public void setPassword(String Password) 
	{
		this.Password = Password;
	}	
}


