package com.SellerModel;

import java.sql.Date;

public class SellerModel {
	private int s_id;
	private Date dob ,joined_date;
	private String name,email,password,phonenumber,city,address1,address2,pincode,seller_shop_name,bankname,ifsc,cancel_cheque,sellersign,pancard,aadharcard,sellerimage;
	public SellerModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public SellerModel(int s_id, Date dob,Date joined_date, String name, String email, String password, String phonenumber, String city,
			String address1, String address2, String pincode, String seller_shop_name, String bankname, String ifsc,
			String cancel_cheque, String sellersign, String pancard, String aadharcard, String sellerimage) {
		super();
		this.s_id = s_id;
		this.dob = dob;
		this.joined_date = joined_date;
		this.name = name;
		this.email = email;
		this.password = password;
		this.phonenumber = phonenumber;
		this.city = city;
		this.address1 = address1;
		this.address2 = address2;
		this.pincode = pincode;
		this.seller_shop_name = seller_shop_name;
		this.bankname = bankname;
		this.ifsc = ifsc;
		this.cancel_cheque = cancel_cheque;
		this.sellersign = sellersign;
		this.pancard = pancard;
		this.aadharcard = aadharcard;
		this.sellerimage = sellerimage;
	}
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public Date getJoined_date() {
		return joined_date;
	}
	public void setJoined_date(Date joined_date) {
		this.joined_date = joined_date;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
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
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getSeller_shop_name() {
		return seller_shop_name;
	}
	public void setSeller_shop_name(String seller_shop_name) {
		this.seller_shop_name = seller_shop_name;
	}
	public String getBankname() {
		return bankname;
	}
	public void setBankname(String bankname) {
		this.bankname = bankname;
	}
	public String getIfsc() {
		return ifsc;
	}
	public void setIfsc(String ifsc) {
		this.ifsc = ifsc;
	}
	public String getCancel_cheque() {
		return cancel_cheque;
	}
	public void setCancel_cheque(String cancel_cheque) {
		this.cancel_cheque = cancel_cheque;
	}
	public String getSellersign() {
		return sellersign;
	}
	public void setSellersign(String sellersign) {
		this.sellersign = sellersign;
	}
	public String getPancard() {
		return pancard;
	}
	public void setPancard(String pancard) {
		this.pancard = pancard;
	}
	public String getAadharcard() {
		return aadharcard;
	}
	public void setAadharcard(String aadharcard) {
		this.aadharcard = aadharcard;
	}
	public String getSellerimage() {
		return sellerimage;
	}
	public void setSellerimage(String sellerimage) {
		this.sellerimage = sellerimage;
	}
	

}
