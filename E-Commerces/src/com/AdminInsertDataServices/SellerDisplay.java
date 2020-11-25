package com.AdminInsertDataServices;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DatabaseConnection.DatabaseConnection;
import com.SellerModel.SellerModel;

public class SellerDisplay extends DatabaseConnection
{
	public List<SellerModel> showAllSeller()
	{
		List<SellerModel> slist = new ArrayList<SellerModel>();
		String query = "Select s_id,seller_name,email,city,sellerimage,phonenumber,joined_date from sellers order by joined_date desc";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				SellerModel smobj = new SellerModel();
				smobj.setS_id(rs.getInt("s_id"));
				smobj.setName(rs.getString("seller_name"));
				smobj.setEmail(rs.getString("email"));
				smobj.setCity(rs.getString("city"));
				smobj.setSellerimage(rs.getString("sellerimage"));
				smobj.setPhonenumber(rs.getString("phonenumber"));
				smobj.setJoined_date(rs.getDate("joined_date"));
				slist.add(smobj);
			}
			
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return slist;
	}
	
	public List<SellerModel> sellerListById(int seller_id)
	{
		List<SellerModel> slist  = new ArrayList<SellerModel>();
		String query= "Select seller_name,email,phonenumber,dob,city,address1,address2,pincode,seller_shop_name,joined_date,bankname,ifsc,cancle_cheque,sellersign,pancard,aadharcard,sellerimage from sellers WHERE s_id = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1,seller_id);
			ResultSet rs = pst.executeQuery();
			while(rs.next());
			{
				SellerModel smobj = new SellerModel();
				smobj.setName(rs.getString("seller_name"));
				smobj.setEmail(rs.getString("email"));
				smobj.setPhonenumber(rs.getString("phonenumber"));
				smobj.setDob(rs.getDate("dob"));
				smobj.setCity(rs.getString("city"));
				smobj.setAddress1(rs.getString("address1"));
				smobj.setAddress2(rs.getString("address2"));
				smobj.setPincode(rs.getString("picode"));
				smobj.setSeller_shop_name(rs.getString("seller_shop_name"));
				rs.getDate("joined_date");
				smobj.setBankname(rs.getString("bankname"));
				smobj.setIfsc(rs.getString("ifsc"));
				smobj.setCancel_cheque(rs.getString("cancel_cheque"));
				smobj.setSellersign(rs.getString("sellersign"));
				smobj.setPancard(rs.getString("pancard"));
				smobj.setAadharcard(rs.getString("aadharcard"));
				smobj.setSellerimage(rs.getString("sellersign"));
				
				slist.add(smobj);
				
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return slist;
		
	}

}
