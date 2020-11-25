package com.SellerServices;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DatabaseConnection.DatabaseConnection;
import com.SellerModel.SellerModel;

public class SellerService  extends DatabaseConnection
{
	public boolean sellerDataRegister(SellerModel smobj)
	{
		String query="Insert into sellers(seller_name,email,password,phonenumber,dob,city,address1,address2,pincode,seller_shop_name,joined_date,bankname,ifsc,cancel_cheque,sellersign,pancard,aadharcard,sellerimage) value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1,smobj.getName());
			pst.setString(2,smobj.getEmail());
			pst.setString(3,smobj.getPassword());
			pst.setString(4,smobj.getPhonenumber());
			pst.setDate(5,smobj.getDob());
			pst.setString(6,smobj.getCity());
			pst.setString(7,smobj.getAddress1());
			pst.setString(8,smobj.getAddress2());
			pst.setString(9,smobj.getPincode());
			pst.setString(10,smobj.getSeller_shop_name());
			pst.setTimestamp(11,new java.sql.Timestamp(new java.util.Date().getTime()));
			pst.setString(12,smobj.getBankname());
			pst.setString(13,smobj.getIfsc());
			pst.setString(14,smobj.getCancel_cheque());
			pst.setString(15,smobj.getSellersign());
			pst.setString(16,smobj.getPancard());
			pst.setString(17,smobj.getAadharcard());
			pst.setString(18,smobj.getSellerimage());
			
			int x = pst.executeUpdate();
			if(x>0)
			{
				return  true;
			}
			else
			{
				System.out.println("Seller Data Not Submitted");
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return false;
		
	}
	
	public boolean sellerLogin(SellerModel smobj)
	{
		String query= "SELECT *FROM sellers WHERE email = ? and password = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1,smobj.getEmail());
			pst.setString(2,smobj.getPassword());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
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
	public List<SellerModel> sellerList()
	{
		List<SellerModel> slist = new ArrayList<SellerModel>();
		String query= "Select s_id, email From sellers";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				SellerModel smobj = new SellerModel();
				smobj.setS_id(rs.getInt("s_id"));
				smobj.setEmail(rs.getString("email"));
				slist.add(smobj);
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}

		return slist;
		
	}
	
	public List<SellerModel> getSellerIdBySellerEmail(String email)
	{
		List<SellerModel> smlist = new ArrayList<SellerModel>();
		
		String query = "SELECT s_id FROM sellers WHERE email = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1,email);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				SellerModel smobj = new SellerModel();
				smobj.setS_id(rs.getInt("s_id"));
				smlist.add(smobj);
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return smlist;
		
	}

}
