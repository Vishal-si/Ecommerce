package com.OrderModel;

import java.sql.Date;

public class OrderModel 
{
	private int order_id,user_id,address_id ,payment_id;
	private float amount;
	private String shipdate;
	private String paid_type;
	public OrderModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderModel(int order_id, int user_id, int address_id, int payment_id, float amount, String shipdate,
			String paid_type) {
		super();
		this.order_id = order_id;
		this.user_id = user_id;
		this.address_id = address_id;
		this.payment_id = payment_id;
		this.amount = amount;
		this.shipdate = shipdate;
		this.paid_type = paid_type;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getAddress_id() {
		return address_id;
	}
	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public String getShipdate() {
		return shipdate;
	}
	public void setShipdate(String shipdate) {
		this.shipdate = shipdate;
	}
	public String getPaid_type() {
		return paid_type;
	}
	public void setPaid_type(String paid_type) {
		this.paid_type = paid_type;
	}
	
	

}
