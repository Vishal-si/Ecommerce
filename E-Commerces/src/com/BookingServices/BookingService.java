package com.BookingServices;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.BookingModel.BookingModel;
import com.DatabaseConnection.DatabaseConnection;


public class BookingService extends DatabaseConnection
{
	public List<BookingModel> userDashboardList( String type)
	{
		List<BookingModel> pimlist = new ArrayList<BookingModel>();
		String query = "Select product_id,sellingprice,brand,seller_name,image,color,unitstock FROM products_seller_view WHERE type = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1,type);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				BookingModel bm = new BookingModel();
				bm.setProduct_id(rs.getInt("product_id"));
				bm.setSellingprice(rs.getInt("sellingprice"));
				bm.setBrand(rs.getString("brand"));
				bm.setSeller_name(rs.getString("seller_name"));
				bm.setImage(rs.getString("image"));
				bm.setColor(rs.getString("color"));
				bm.setUnitStock(rs.getInt("unitstock"));
				
				pimlist.add(bm);
				
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return pimlist;
		
	}
	
	public List<BookingModel> bookItemByProductId(int product_id)
	{
		List<BookingModel> blist = new ArrayList<BookingModel>();
		String query = "Select *from products_seller_view where product_id = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn. prepareStatement(query);
			pst.setInt(1,product_id);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				BookingModel bmobj = new BookingModel();
				bmobj.setProduct_id(rs.getInt("product_id"));
				bmobj.setProduct_name(rs.getString("name"));
				bmobj.setType(rs.getString("type"));
				bmobj.setDescription(rs.getString("description"));
				bmobj.setMarketprice(rs.getInt("marketprice"));
				bmobj.setSellingprice(rs.getInt("sellingprice"));
				bmobj.setColor(rs.getString("color"));
				bmobj.setSizes(rs.getString("sizes"));
				bmobj.setBrand(rs.getString("brand"));
				bmobj.setUnitStock(rs.getInt("unitStock"));
				bmobj.setUnitWeight(rs.getString("unitWeight"));
				bmobj.setSeller_name(rs.getString("Seller_name"));
				blist.add(bmobj);
				
			}
			 
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return blist;
		
	}

}
