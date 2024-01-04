package com.IT22581570;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.IT22576866.DBConnect;

public class artistDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public artistDBUtil() {		
	}
	// Artist Insert
	public static boolean insertArtist(String firstname, String lastname, String username, String email, String password) {
		
		boolean isSuccessart = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sqlartist = "insert into artist_table values(0,'"+ firstname +"','"+ lastname +"','"+ username +"','"+ email +"','"+ password +"')";
			int artsignup = stmt.executeUpdate(sqlartist);
			
			if (artsignup > 0) {
				
				isSuccessart = true;				
			} else {
				isSuccessart = false;
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}		
		
		return isSuccessart;
	}
	
	
	
	//Login
	
	
		public static boolean validateArtist(String userName, String password){
			boolean isSuccess = false;

			//Validate
			//database connection
			try {
				con = DBConnect.getConnection(); //calling 
				stmt = con.createStatement(); //calling
				
				String sql = "select * from artist_table where artist_username = '"+userName+"' and artist_password = '"+password+"' ";
				
				rs = stmt.executeQuery(sql); //calling
				
				if(rs.next()) {
					isSuccess = true;
				}
				
				else {
					isSuccess = false;
				}
				
			}
			catch(Exception e) {
				e.printStackTrace();
			}

			return isSuccess; 
		}
		
		public static List <Artist> getArtist(String userName){
			
			ArrayList <Artist> ar = new ArrayList<>();
			
			try {
				
				con = DBConnect.getConnection(); //calling 
				stmt = con.createStatement(); //calling
				
				String sql = "select * from artist_table where artist_username = '"+userName+"' ";
				
				rs = stmt.executeQuery(sql); //calling
				
				while(rs.next()) {
					int id = rs.getInt(1);
					String f_name = rs.getString(2);
					String l_name = rs.getString(3);
					String userU = rs.getString(4);
					String email = rs.getString(5);					
					String passU = rs.getString(6);
					
					//create object from listener class and passing values for constructor
					
					Artist art = new Artist(id,f_name,l_name,userU,email,passU);
					
					//passing the Listener object l to ArrayList object
					
					ar.add(art);
				}
				
			}
			catch (Exception e) {
				
			}
			
			return ar;
		}
		

}
