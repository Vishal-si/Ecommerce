package com.OrderService;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.DatabaseConnection.DatabaseConnection;
import com.OrderModel.OrderModel;

public class OrderService extends DatabaseConnection
{
	public boolean insertOrder(OrderModel omobj)
	{
		String query="Insert Into orders(user_id,address_id,amount,orderdate,payment_id,shipdate,paid_type) value(?,?,?,?,?,?,?)";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1, omobj.getUser_id() );
			pst.setInt(2, omobj.getAddress_id());
			pst.setFloat(3, omobj.getAmount());
			pst.setTimestamp(4,new java.sql.Timestamp(new java.util.Date().getTime()));
			pst.setInt(5,omobj.getPayment_id());
			pst.setString(6, omobj.getShipdate());
			pst.setString(7,omobj.getPaid_type());
			
			int x = pst.executeUpdate();
			if(x>0)
			{
				return true;
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return false;
	}

}
