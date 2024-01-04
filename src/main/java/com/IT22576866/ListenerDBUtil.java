package com.IT22576866;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class ListenerDBUtil {
	
	
	//create 3 static objects from Connection,Statement and ResultSet classes
	
	public static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	//SignUp	
	public static boolean insertListener(String f_name, String l_name, String phone, String email, String username, String password) {
	
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection(); //calling 
			stmt = con.createStatement(); //calling
			
			String sql = "insert into listener_table values(0,'"+ f_name +"','"+ l_name +"','"+ phone +"','"+ email +"','"+ username +"','"+ password +"')";
			
			int rs = stmt.executeUpdate(sql); //calling
			
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
	
	
	
	
	//Login
	
	
	public static boolean validate(String userName, String password){
		
		//Validate
		//database connection
		try {
			con = DBConnect.getConnection(); //calling 
			stmt = con.createStatement(); //calling
			
			String sql = "select * from listener_table where listener_username = '"+userName+"' and listener_password = '"+password+"' ";
			
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
	
	public static List <Listener> getListener(String userName){
		
		ArrayList <Listener> lis = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection(); //calling 
			stmt = con.createStatement(); //calling
			
			String sql = "select * from listener_table where listener_username = '"+userName+"' ";
			
			rs = stmt.executeQuery(sql); //calling
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String f_name = rs.getString(2);
				String l_name = rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String userU = rs.getString(6);
				String passU = rs.getString(7);
				
				//create object from listener class and passing values for constructor
				
				Listener li1 = new Listener(id,f_name,l_name,phone,email,userU,passU);
				
				//passing the Listener object l to ArrayList object
				
				lis.add(li1);
			}
			
		}
		catch (Exception e) {
			
		}
		
		return lis;
	}
	
	
	//Update Profile
	public static boolean updatelistener(String id, String fname, String lname, String phone, String email, String userName, String Password) {
		
		//database connection
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update listener_table set listener_fname = '"+fname+"', listener_lname= '"+lname+"', listener_phone = '"+phone+"', listener_email = '"+email+"', listener_username = '"+userName+"', listener_password = '"+Password+"' "
					+ "where listener_id = '"+id+"' ";
			
			int rs = stmt.executeUpdate(sql); //executeUptate for update return 0 & 1
			
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
	
	//Updated Data Show/Retrieve
	
	public static List<Listener> getRetrieveDetails(String Id) {		//Listener.java class
	
		int convertedID = Integer.parseInt(Id);		//convert string value to integer using wrapper class		
		
		ArrayList<Listener> lis = new ArrayList<>();
	
		//Database connection
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from listener_table where listener_id = '"+convertedID+"' ";
			
			rs = stmt.executeQuery(sql);
			
			//use while loop to database data assign to variables 
			
			while(rs.next()) {		//return boolean value from next() - true false
				int id = rs.getInt(1);
				String f_name = rs.getString(2);
				String l_name = rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String username = rs.getString(6);
				String password = rs.getString(7);
				
				Listener li2 = new Listener(id,f_name,l_name,phone,email,username,password);	//assign to while loop data to li2 object
				
				lis.add(li2);	//passe the object using add method
			}
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return lis;
	}
	
	//Delete Profile
	public static boolean deleteListener(String id) {
		
		int convertedID = Integer.parseInt(id);		//convert string value to integer using wrapper class
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from listener_table where listener_id = '"+convertedID+"' ";
			
			int rs = stmt.executeUpdate(sql);	//executeUptate for update return 0 & 1
			
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
	
	
	//Create Play List
	
	public static boolean createPlaylist(String playlistname, String description) {
		
		boolean isSuccess = false;
		
		//create database connection
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into playlist values (0, '"+playlistname+"', '"+description+"')";		//insert quarry
			
			int rs = stmt.executeUpdate(sql);		//executeUptate for insert quarry perform
			
			if(rs > 0) {
				isSuccess = true;		//insert data successfully for database
			}
			else {
				isSuccess = false;		//insert data unsuccessfully for database
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
	}
	
	
	//Show Play List in Account page	
	
	public static List<Playlist> getPlaylist(){
		
		ArrayList<Playlist> playlist = new ArrayList<Playlist>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from playlist";
			
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int playlistId = rs.getInt(1);
				String pListName = rs.getString(2);
				String description = rs.getString(3);
				
				Playlist pl = new Playlist(playlistId, pListName, description);
				playlist.add(pl);
			}
			
		}
		catch (Exception e){
			e.printStackTrace();
		}
		
		return playlist;
	}
	
	
	
	
	/*Update Play List*/
	
	
		public static boolean updateplaylist(String playlistName, String description) {
		
		//database connection
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "update playlist set playlistName = '"+playlistName+"', description = '"+description+"' where playlistName = '"+playlistName+"'";
			
			int rs = stmt.executeUpdate(sql); //executeUptate for update return 0 & 1
			
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
		
		
		
		/*Updated Data Show/Retrieve*/
		
		
		public static List<Playlist> getplaylistDetails(String playlistName) {		//Listener.java class
			
			//int convertedID = Integer.parseInt(Id);		//convert string value to integer using wrapper class		
			
			ArrayList<Playlist> upl = new ArrayList<>();
		
			//Database connection
			try {
				
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from listener where playlistName = '"+playlistName+"' ";
				
				rs = stmt.executeQuery(sql);
				
				//use while loop to database data assign to variables 
				
				while(rs.next()) {		//return boolean value from next() - true false
					String pListName = rs.getString(2);
					String description = rs.getString(3);
					
					
					
					Playlist pl1 = new Playlist(0, pListName, description);	//assign to while loop data to li2 object
					
					upl.add(pl1);	//passe the object using add method
				}
			
			}
			catch(Exception e) {
				e.printStackTrace(); 
			}
			return upl;
		}

		// Insert

			public static boolean insertListener(String firstname, String lastname, String username, String email, String password) {
		
		boolean isSuccess = false;
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into listener_table values(0,'"+ firstname +"','"+ lastname +"','"+ username +"','"+ email +"','"+ password +"')";
			int signup = stmt.executeUpdate(sql);
			
			if (signup > 0) {
				
				isSuccess = true;				
			} else {
				isSuccess = false;
			}
			
		} 
		catch (Exception e) {
			e.printStackTrace();
		}		
		
		return isSuccess;
	}
	
	// Display
	public static List<Listener> getCustomer() {
		
				
		ArrayList<Listener> lis = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from listener_table";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String f_name = rs.getString(2);
				String l_name = rs.getString(3);
				String email = rs.getString(4);
				String phone_number = rs.getString(5);
				String username = rs.getString(6);
				String password = rs.getString(7);
				
				Listener listener = new Listener(id,f_name,l_name,email,phone_number,username,password);
				lis.add(listener);
			}
			
		} catch (Exception e) {
			
		}
		
		return lis;	
	}
	
}















