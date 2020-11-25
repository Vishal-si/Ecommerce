package com.AdminInsertDataModel;

public class CategoryModel 
{
	private int category_id;
	private String category_name,sub_category_name;
	public CategoryModel() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CategoryModel(int category_id, String category_name, String sub_category_name) {
		super();
		this.category_id = category_id;
		this.category_name = category_name;
		this.sub_category_name = sub_category_name;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getSub_category_name() {
		return sub_category_name;
	}
	public void setSub_category_name(String sub_category_name) {
		this.sub_category_name = sub_category_name;
	}
	
	

}
