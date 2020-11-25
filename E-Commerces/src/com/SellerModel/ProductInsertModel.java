package com.SellerModel;

import java.sql.Date;

import com.AdminInsertDataModel.CategoryModel;

public class ProductInsertModel 
{
	private  int product_id,s_id,productprice,sellingprice,unitStock;
	private Date uploadProductDate;
	private String seller_email,name,type,description,sizes,color,brand,image,weight;
	private CategoryModel cmobj;
	public ProductInsertModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductInsertModel(int product_id,int s_id, int productprice, int sellingprice, int unitStock, Date uploadProductDate, String seller_email, String name,
			String type,String description, String sizes, String color, String brand, String image, String weight, CategoryModel cmobj,
			SellerModel smobj) {
		super();
		this.product_id = product_id;
		this.s_id = s_id;
		this.productprice = productprice;
		this.sellingprice = sellingprice;
		this.unitStock = unitStock;
		this.uploadProductDate = uploadProductDate;
		this.seller_email=seller_email;
		this.name = name;
		this.type=type;
		this.description = description;
		this.sizes = sizes;
		this.color = color;
		this.brand = brand;
		this.image = image;
		this.weight = weight;
		this.cmobj = cmobj;
		
	}
	
	public Date getUploadProductDate() {
		return uploadProductDate;
	}
	public void setUploadProductDate(Date uploadProductDate) {
		this.uploadProductDate = uploadProductDate;
	}
	public String getSeller_email() {
		return seller_email;
	}
	public void setSeller_email(String seller_email) {
		this.seller_email = seller_email;
	}
	public String getImage() {
		return image;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getS_id() {
		return s_id;
	}
	public void setS_id(int s_id) {
		this.s_id = s_id;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getProductprice() {
		return productprice;
	}
	public void setProductprice(int productprice) {
		this.productprice = productprice;
	}
	public int getSellingprice() {
		return sellingprice;
	}
	public void setSellingprice(int sellingprice) {
		this.sellingprice = sellingprice;
	}
	public int getUnitStock() {
		return unitStock;
	}
	public void setUnitStock(int unitStock) {
		this.unitStock = unitStock;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public CategoryModel getCmobj() {
		return cmobj;
	}
	public void setCmobj(CategoryModel cmobj) {
		this.cmobj = cmobj;
	}
	
	
	
}
