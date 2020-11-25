package com.BookingModel;

public class BookingModel 
{
	private int product_id,unitStock,marketprice,sellingprice;
	String product_name,type,description,sizes,color,brand,image,unitWeight,seller_name;
	public BookingModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BookingModel(int product_id, int unitStock, int marketprice, int sellingprice, String product_name,
			String type,String description, String sizes, String color, String brand, String image, String unitWeight,
			String seller_name) {
		super();
		this.product_id = product_id;
		this.unitStock = unitStock;
		this.marketprice = marketprice;
		this.sellingprice = sellingprice;
		this.product_name = product_name;
		this.type=type;
		this.description = description;
		this.sizes = sizes;
		this.color = color;
		this.brand = brand;
		this.image = image;
		this.unitWeight = unitWeight;
		this.seller_name = seller_name;
	}
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getUnitStock() {
		return unitStock;
	}
	public void setUnitStock(int unitStock) {
		this.unitStock = unitStock;
	}
	public int getMarketprice() {
		return marketprice;
	}
	public void setMarketprice(int marketprice) {
		this.marketprice = marketprice;
	}
	public int getSellingprice() {
		return sellingprice;
	}
	public void setSellingprice(int sellingprice) {
		this.sellingprice = sellingprice;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSizes() {
		return sizes;
	}
	public void setSizes(String sizes) {
		this.sizes = sizes;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getUnitWeight() {
		return unitWeight;
	}
	public void setUnitWeight(String unitWeight) {
		this.unitWeight = unitWeight;
	}
	public String getSeller_name() {
		return seller_name;
	}
	public void setSeller_name(String seller_name) {
		this.seller_name = seller_name;
	}

}
