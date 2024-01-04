package com.IT22576866;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/musicmash_db";
	private static String userName = "root";
	private static String password = "3306";
	private static Connection con; //create object for return getConnection method
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password); //assign to database connection for con variable
		}
		
		catch (Exception e){
			System.out.println("Database connection is not success..!");
		}
		return con;
		
	}
								
}
