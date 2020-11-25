package com.UserAuthenticationService;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DatabaseConnection.DatabaseConnection;
import com.UserAuthenticationModel.UserAddressModel;
import com.UserAuthenticationModel.UserModel;

public class UserServices extends DatabaseConnection
{
	public boolean userRegister(UserModel umobj)
	{
		String query="INSERT INTO users(email,name,date_of_birth,gender,phone,password,date_joined)value(?,?,?,?,?,?,?)";
		try
		{
			Connection conn =getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1,umobj.getEmail());
			pst.setString(2,umobj.getName());
			pst.setDate(3,umobj.getDob());
			pst.setString(4,umobj.getGender());
			pst.setString(5,umobj.getPhone());
			pst.setString(6,umobj.getPassword());
			pst.setTimestamp(7,new java.sql.Timestamp(new java.util.Date().getTime()));
			
			int x = pst.executeUpdate();
			if(x>0)
			{
				return true;
			}
			else
			{
				System.out.println("Data not submit in database");
			}
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return false;
		
	}
	
	public boolean userLogin(UserModel umobj)
	{
		String query="Select *From users where email = ? and Password = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1,umobj.getEmail());
			pst.setString(2,umobj.getPassword());
			ResultSet rs = pst.executeQuery();
			if(rs.next())
			{
				return true;
			}
			else
			{
				System.out.println("Authenciation error");
			}
			
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return false;
		
	}
	public List<UserModel> getUserIdByemail(String user)
	{
		List<UserModel> ulist = new ArrayList<UserModel>();
		String  query ="Select user_id from users where email = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1,user);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				UserModel umobj = new UserModel();
				umobj.setUser_id(rs.getInt("user_id"));
				ulist.add(umobj);
				
			}
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return ulist;
		
	}
	
	public boolean insertAddress(UserAddressModel uamobj)
	{
		String query="Insert Into address(user_id,full_name,address1,address2,landmark,postcode,city,phone,image)value(?,?,?,?,?,?,?,?,?)";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn. prepareStatement(query);
			pst.setInt(1,uamobj.getUser_id());
			pst.setString(2,uamobj.getFull_name());
			pst.setString(3,uamobj.getAddress1());
			pst.setString(4,uamobj.getAddress2());
			pst.setString(5,uamobj.getLandmark());
			pst.setString(6,uamobj.getPostcode());
			pst.setString(7,uamobj.getCity());
			pst.setString(8,uamobj.getPhone());
			pst.setString(9,uamobj.getImage());
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
	
	
	
	public List<UserAddressModel> getAddressById(int user_id)
	{
		List<UserAddressModel> addlist = new ArrayList<UserAddressModel>();
		String query = "Select *from address where user_id = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn. prepareStatement(query);
			pst.setInt(1,user_id);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				UserAddressModel uamobj = new UserAddressModel();
				uamobj.setAddress_id(rs.getInt("address_id"));
				uamobj.setUser_id(rs.getInt("user_id"));
				uamobj.setFull_name(rs.getString("full_name"));
				uamobj.setAddress1(rs.getString("address1"));
				uamobj.setAddress2(rs.getString("address2"));
				uamobj.setLandmark(rs.getString("landmark"));
				uamobj.setPostcode(rs.getString("postcode"));
				uamobj.setCity(rs.getString("city"));
				uamobj.setPhone(rs.getString("phone"));
				uamobj.setImage(rs.getString("image"));
				addlist.add(uamobj);
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return addlist;
	}
	
	public boolean updateAddress(UserAddressModel udmobj)
	{
		String query= "Update address set full_name = ?,address1=?, address2=? ,landmark=?,postcode=?,city=? , phone=? Where user_id = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1,udmobj.getFull_name());
			pst.setString(2,udmobj.getAddress1());
			pst.setString(3,udmobj.getAddress2());
			pst.setString(4,udmobj.getLandmark());
			pst.setString(5,udmobj.getPostcode());
			pst.setString(6,udmobj.getCity());
			pst.setString(7,udmobj.getPhone());
			pst.setInt(8,udmobj.getUser_id());
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
	public boolean checkAddress(int user_id)
	{
		String query="Select user_id from address where user_id = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1,user_id);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
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
	
	

}
