package com.UserAuthenticationModel;

public class UserAddressModel 
{
	private int address_id, user_id;
	private String full_name,address1,address2,landmark,postcode,city,phone,image;
	public UserAddressModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserAddressModel(int address_id, int user_id, String full_name, String address1, String address2,
			String landmark,String postcode, String city, String phone, String image) {
		super();
		this.address_id = address_id;
		this.user_id = user_id;
		this.full_name = full_name;
		this.address1 = address1;
		this.address2 = address2;
		this.landmark=landmark;
		this.postcode = postcode;
		this.city = city;
		this.phone = phone;
		this.image = image;
	}
	
	public String getLandmark() {
		return landmark;
	}
	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}
	public int getAddress_id() {
		return address_id;
	}
	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getFull_name() {
		return full_name;
	}
	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
