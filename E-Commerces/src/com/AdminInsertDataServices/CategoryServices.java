package com.AdminInsertDataServices;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.AdminInsertDataModel.CategoryModel;
import com.DatabaseConnection.DatabaseConnection;

public class CategoryServices extends DatabaseConnection
{
	public boolean insertCategory(CategoryModel cmobj)
	{
		String query= "INSERT into  product_category(category_name,sub_category_name) value(?,?)";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1,cmobj.getCategory_name());
			pst.setString(2,cmobj.getSub_category_name());
			int x = pst.executeUpdate();
			if(x>0)
			{
				return true;
			}
			else
			{
				System.out.println("Data not submit..");
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return false;
		
	}
	
	public List<CategoryModel> category_list()
	{
		List<CategoryModel>clist = new ArrayList<CategoryModel>();
		String query = "Select category_id,category_name From product_category order by category_id";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst =conn.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				CategoryModel cmobj = new CategoryModel();
				cmobj.setCategory_id(rs.getInt("category_id"));
				cmobj.setCategory_name(rs.getString("category_name"));
				clist.add(cmobj);
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return clist;
	}
	
	public CategoryModel getCategoryProductById(int id )
	{
		String query = "Select *from product_category where category_id = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn. prepareStatement(query);
			pst.setInt(1,id);
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				CategoryModel cmobj = new CategoryModel(rs.getInt("category_id"),rs.getString("category_name"),rs.getString("sub_category_name"));
				return cmobj;
			}
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return null;
		
				
	}

}
