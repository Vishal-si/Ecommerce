package com.DatabaseConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection 
{
	private Connection conn;
	String url="jdbc:mysql://localhost:3307/Shoping";
	String user="root";
	String password="root";
	public DatabaseConnection()
	{
		conn=null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url,user,password);
			
		}
		catch(Exception e)
		{
			System.out.println(e.getMessage());
			System.out.println(this.getClass().getName());
		}
	}
	
	public Connection getConn()
	{
		return conn;
	}

}
