package com.SellerServices;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DatabaseConnection.DatabaseConnection;
import com.SellerModel.ProductInsertModel;

public class DashboardProductList extends DatabaseConnection
{
	public List<ProductInsertModel> productListById(int product_id)
	{
		List<ProductInsertModel> plist = new ArrayList<ProductInsertModel>();
		String query= "Select product_id,s_id,seller_email,name,marketprice,sellingprice,sizes,color,brand,image,unitweight,unitstock,uploadProductDate from products where product_id = ?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1,product_id);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				ProductInsertModel pimobj = new ProductInsertModel();
				pimobj.setProduct_id(rs.getInt("product_id"));
				pimobj.setS_id(rs.getInt("S_id"));
				pimobj.setSeller_email(rs.getString("seller_email"));
				pimobj.setName(rs.getString("name"));
				pimobj.setProductprice(rs.getInt("marketPrice"));
				pimobj.setSellingprice(rs.getInt("sellingprice"));
				pimobj.setSizes(rs.getString("sizes"));
				pimobj.setColor(rs.getString("color"));
				pimobj.setBrand(rs.getString("brand"));
				pimobj.setImage(rs.getString("image"));
				pimobj.setWeight(rs.getString("unitWeight"));
				pimobj.setUnitStock(rs.getInt("unitStock"));
				pimobj.setUploadProductDate(rs.getDate("uploadProductDate"));
				
				plist.add(pimobj);
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return plist;
	}
	
//	public boolean deleteProductById(int product_id)
//	{
//		String query = "DELETE FROM products WHERE product_id = ?";
//		try
//		{
//			Connection conn = getConn();
//			PreparedStatement pst = conn.prepareStatement(query);
//			pst.setInt(1,product_id);
//			int x = pst.executeUpdate();
//			if(x>0)
//			{
//				return true;
//			}
//			else
//			{
//				System.out.println("Product Not Delete");
//			}
//			
//		}catch(Exception e)
//		{
//			System.out.println(e.getMessage());
//			System.out.println(this.getClass());
//		}
//		return false;
//	}
	

}
