package com.IT22577238;

import java.sql.Connection;

import java.sql.DriverManager;

public class DBConnect {
	
	public static String url = "jdbc:mysql://localhost:3306/musicmash_db";
	public static String userName = "root";
	public static String password = "3306";
	private static Connection con;
	
	public static Connection getConnection() {

	    try {

	        Class.forName("com.mysql.jdbc.Driver");

	        con = DriverManager.getConnection(url, userName, password);

	    } catch (Exception e) {
	        e.printStackTrace();
	    } 
	    

	    return con;
	}


}
