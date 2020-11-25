package com.SellerServices;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DatabaseConnection.DatabaseConnection;
import com.SellerModel.ProductInsertModel;

public class ProductInsertService extends DatabaseConnection
{
	public boolean inserProduct(ProductInsertModel pimobj)
	{
		String query = "Insert into products(category_id,s_id,seller_email,name,type,description,marketprice,sellingprice,sizes,color,Brand,image,unitWeight,unitStock,uploadProductDate)value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1, pimobj.getCmobj().getCategory_id());
			pst.setInt(2,pimobj.getS_id());
			pst.setString(3,pimobj.getSeller_email());
			pst.setString(4,pimobj.getName());
			pst.setString(5,pimobj.getType());
			pst.setString(6,pimobj.getDescription());
			pst.setInt(7,pimobj.getProductprice());
			pst.setInt(8, pimobj.getSellingprice());
			pst.setString(9,pimobj.getSizes());
			pst.setString(10,pimobj.getColor());
			pst.setString(11,pimobj.getBrand());
			pst.setString(12,pimobj.getImage());
			pst.setString(13,pimobj.getWeight());
			pst.setInt(14,pimobj.getUnitStock());
			pst.setTimestamp(15,new java.sql.Timestamp(new java.util.Date().getTime()));
			
			int x =pst.executeUpdate();
			if(x>0)
			{
				return true;
			}
			else
			{
				System.out.println("Data not submit...");
			}
			
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return false;
		
	}
	
	public List<ProductInsertModel> getProductIdByEmail(String email)
	{
		List<ProductInsertModel> plist = new ArrayList<ProductInsertModel>();
		String query = "SELECT product_id,name,brand,image FROM products WHERE seller_email = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1,email);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				ProductInsertModel pmobj = new ProductInsertModel();
				pmobj.setProduct_id(rs.getInt("product_id"));
				pmobj.setName(rs.getString("name"));
				pmobj.setBrand(rs.getString("brand"));
				pmobj.setImage(rs.getString("image"));
				plist.add(pmobj);
			}
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return plist;
	}
	
	public List<ProductInsertModel> productList(String seller_email)
	{
		List<ProductInsertModel> prolist = new ArrayList<ProductInsertModel>();
		String query="Select product_id,image,brand,name, sellingprice,marketprice,color,unitstock from products Where seller_email = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1,seller_email);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				ProductInsertModel pmobj = new ProductInsertModel();
				pmobj.setProduct_id(rs.getInt("product_id"));
				pmobj.setImage(rs.getString("image"));
				pmobj.setBrand(rs.getString("brand"));
				pmobj.setName(rs.getString("name"));
				pmobj.setProductprice(rs.getInt("marketprice"));
				pmobj.setSellingprice(rs.getInt("sellingprice"));
				pmobj.setColor(rs.getString("color"));
				pmobj.setUnitStock(rs.getInt("unitStock"));
				
				
				prolist.add(pmobj);
			}
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return prolist;
		
	}
	
	public boolean updateProductStock(ProductInsertModel pimobj)
	{
		String query="UPDATE products SET unitstock = ? WHERE product_id = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1,pimobj.getUnitStock());
			pst.setInt(2,pimobj.getProduct_id());
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
	
	public boolean updateProductPrice(ProductInsertModel pimobj)
	{
		String query="UPDATE products SET sellingprice = ? WHERE product_id = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1,pimobj.getSellingprice());
			pst.setInt(2,pimobj.getProduct_id());
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
	
	public boolean deleteProduct(ProductInsertModel pimobj)
	{
		String query="DELETE FROM products WHERE product_id = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1,pimobj.getProduct_id());
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
	

	
		
	
	
}
