package com.BookingModel;

import java.sql.Date;

public class CartModel {
	private int cart_item_id,user_id,product_id,quantity;
	private Date time_added;
	public CartModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CartModel(int cart_item_id, int user_id, int product_id, int quantity, Date time_added) {
		super();
		this.cart_item_id = cart_item_id;
		this.user_id = user_id;
		this.product_id = product_id;
		this.quantity = quantity;
		this.time_added = time_added;
	}
	public int getCart_item_id() {
		return cart_item_id;
	}
	public void setCart_item_id(int cart_item_id) {
		this.cart_item_id = cart_item_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Date getTime_added() {
		return time_added;
	}
	public void setTime_added(Date time_added) {
		this.time_added = time_added;
	}
	
	

}
