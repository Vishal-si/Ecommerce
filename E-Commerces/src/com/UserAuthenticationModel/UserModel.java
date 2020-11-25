package com.UserAuthenticationModel;

import java.sql.Date;

public class UserModel {
	private int user_id;
	private String email,name,gender,phone,password;
	private Date dob,date_joined,modified;
	
	
	public UserModel() {
		super();
		// TODO Auto-generated constructor stub
	}


	public UserModel(int user_id, String email, String name, String gender, String phone, String password, Date dob,
			Date date_joined, Date modified) {
		super();
		this.user_id = user_id;
		this.email = email;
		this.name = name;
		this.gender = gender;
		this.phone = phone;
		this.password = password;
		this.dob = dob;
		this.date_joined = date_joined;
		this.modified = modified;
	}


	public int getUser_id() {
		return user_id;
	}


	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public Date getDob() {
		return dob;
	}


	public void setDob(Date dob) {
		this.dob = dob;
	}


	public Date getDate_joined() {
		return date_joined;
	}


	public void setDate_joined(Date date_joined) {
		this.date_joined = date_joined;
	}


	public Date getModified() {
		return modified;
	}


	public void setModified(Date modified) {
		this.modified = modified;
	}
	
	
	

}
