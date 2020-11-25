package com.OrderModel;

public class PaymentModel {
	
	private int payment_id,product_id,user_id;
	private String payment_type;
	public PaymentModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public PaymentModel(int payment_id, int product_id, int user_id, String payment_type) {
		super();
		this.payment_id = payment_id;
		this.product_id = product_id;
		this.user_id = user_id;
		this.payment_type = payment_type;
	}
	public int getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(int payment_id) {
		this.payment_id = payment_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getPayment_type() {
		return payment_type;
	}
	public void setPayment_type(String payment_type) {
		this.payment_type = payment_type;
	}
	
	

}
