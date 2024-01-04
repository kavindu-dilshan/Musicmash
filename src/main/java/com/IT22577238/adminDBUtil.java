package com.IT22577238;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import com.IT22576866.DBConnect;

public class adminDBUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	//Count Listener in Listener Table
	 public static int getCountOfRecords() {
	        int count = 0;

	        try {
	        	con = DBConnect.getConnection();
				stmt = con.createStatement();
	            
	            // Query to count the users
				String sql = "SELECT COUNT(*) FROM listener_table ";
	            rs = stmt.executeQuery(sql);
	            
	            if (rs.next()) {
	                count = rs.getInt(1);
	            }

	            rs.close();
	            stmt.close();
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return count;
	    }	
	
	
	//Delete Listener by Admininstrator 
	public static boolean deleteListener(String id) {
		
		boolean isSuccess = false;
		
		int convertedID = Integer.parseInt(id);		
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from listener_table where listener_id = '"+convertedID+"' ";
			
			int rs = stmt.executeUpdate(sql);	
			
			if(rs > 0) {
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
	
	//Delete Artist by Admininstrator 
		public static boolean deleteArtist(String id) {
			
			boolean isSuccess = false;
			
			int convertedID = Integer.parseInt(id);		
			
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from artist_table where artist_id = '"+convertedID+"' ";
				
				int rs = stmt.executeUpdate(sql);	
				
				if(rs > 0) {
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
		
		// Report Data Retrieve
	

}
