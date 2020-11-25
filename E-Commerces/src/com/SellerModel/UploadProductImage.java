package com.SellerModel;

public class UploadProductImage 
{
	private int image_id,product_id;
	String front_side_image,left_side_image,right_side_image,back_side_image;
	public UploadProductImage() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UploadProductImage(int image_id, int product_id, String front_side_image, String left_side_image,
			String right_side_image, String back_side_image) {
		super();
		this.image_id = image_id;
		this.product_id = product_id;
		this.front_side_image = front_side_image;
		this.left_side_image = left_side_image;
		this.right_side_image = right_side_image;
		this.back_side_image = back_side_image;
	}
	public int getImage_id() {
		return image_id;
	}
	public void setImage_id(int image_id) {
		this.image_id = image_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getFront_side_image() {
		return front_side_image;
	}
	public void setFront_side_image(String front_side_image) {
		this.front_side_image = front_side_image;
	}
	public String getLeft_side_image() {
		return left_side_image;
	}
	public void setLeft_side_image(String left_side_image) {
		this.left_side_image = left_side_image;
	}
	public String getRight_side_image() {
		return right_side_image;
	}
	public void setRight_side_image(String right_side_image) {
		this.right_side_image = right_side_image;
	}
	public String getBack_side_image() {
		return back_side_image;
	}
	public void setBack_side_image(String back_side_image) {
		this.back_side_image = back_side_image;
	}
	

}
