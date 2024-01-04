package com.IT22915290;
//singleton design patterns
import java.sql.Connection;
import java.sql.DriverManager;

public class DBconnect {

	private static String url = "jdbc:mysql://localhost:3306/musicmash_db";
	private static String userName = "root";                  
	private static String password = "3306";
    private static Connection con;
	
public static Connection getConnection () {
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection(url,userName,password);
	}
	catch(Exception e){
		System.out.println("database connection is not success");
	}
	
	return con;
	
}

}
