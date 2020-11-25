package com.BookingServices;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.BookingModel.CartModel;
import com.DatabaseConnection.DatabaseConnection;

public class CartService extends DatabaseConnection
{
	public boolean cartInsert(CartModel cmobj)
	{
		String query="Insert into cart_items(user_id,product_id,quantity,time_added) value(?,?,?,?)";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1,cmobj.getUser_id());
			pst.setInt(2,cmobj.getProduct_id());
			pst.setInt(3,cmobj.getQuantity());
			pst.setTimestamp(4,new java.sql.Timestamp(new java.util.Date().getTime()));
			int x = pst.executeUpdate();
			if(x>0)
			{
				return true;
			}
			else
			{
				System.out.println("Data Not Filed");
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return false;
		
	}
	

}
