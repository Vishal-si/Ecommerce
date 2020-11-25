package com.OrderService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DatabaseConnection.DatabaseConnection;
import com.OrderModel.PaymentModel;

public class PaymentService extends DatabaseConnection
{
	
	public boolean insertPayment(PaymentModel pobj)
	{
		String query="Insert into payment(payment_type,product_id,user_id) value(?,?,?)";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1, pobj.getPayment_type());
			pst.setInt(2, pobj.getProduct_id());
			pst.setInt(3,pobj.getUser_id());
			
			int x = pst.executeUpdate();
			if(x>0)
			{
				return true;
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return false;
	}
	
	public List<PaymentModel> paymentList(int userId)
	{
		List<PaymentModel> plist = new ArrayList<PaymentModel>();
		String query = "Select payment_id ,payment_type from payment where user_id = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1, userId);
			ResultSet rs = pst.executeQuery();
			if(rs.last())
			{
				PaymentModel pmobj = new PaymentModel();
				pmobj.setPayment_id(rs.getInt("payment_id"));
				plist.add(pmobj);
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return plist;
		
	}


}
