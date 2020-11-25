package com.SellerServices;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.DatabaseConnection.DatabaseConnection;
import com.SellerModel.ProductInsertModel;
import com.SellerModel.UploadProductImage;

public class UploadProductImageService extends DatabaseConnection
{
	public boolean insertProductImage(UploadProductImage upiobj)
	{
		String query = "Insert into image(product_id,frontimage,leftimage,rightimage,backimage) values(?,?,?,?,?)";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1,upiobj.getProduct_id());
			pst.setString(2,upiobj.getFront_side_image());
			pst.setString(3,upiobj.getLeft_side_image());
			pst.setString(4,upiobj.getRight_side_image());
			pst.setString(5,upiobj.getBack_side_image());
			
			int x = pst.executeUpdate();
			if(x>0)
			{
				return true;
			}
			else
			{
				System.out.println("data not submit in database");
			}
			
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return false;
	}
	
	public List<UploadProductImage> imageList(int product_id)
	{
		List<UploadProductImage> mlist = new ArrayList<UploadProductImage>();
		String query= "SELECT frontimage,backimage,leftimage,rightimage FROM image WHERE product_id=?";
		try
		{
			Connection conn = getConn();
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setInt(1,product_id);
			ResultSet rs = pst.executeQuery();
			while(rs.next())
			{
				UploadProductImage upiobj = new UploadProductImage();
				upiobj.setFront_side_image(rs.getString("frontimage"));
				upiobj.setBack_side_image(rs.getString("backimage"));
				upiobj.setLeft_side_image(rs.getString("leftimage"));
				upiobj.setRight_side_image(rs.getString("rightimage"));
				
				mlist.add(upiobj);
			}
		}catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
		return mlist;
	}
	

}
