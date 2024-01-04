package com.IT22915290;
import java.sql.Connection;
//import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class purchaseDButill {

	public static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List <purchase> validate(String Email){
		
	ArrayList<purchase>pur =new ArrayList<>();	
	
    try
    {    	
    	con = DBconnect.getConnection();
		stmt = con.createStatement();
    
    String sql ="select * from listnerpurchase where email = '"+Email+"'";
     rs = stmt.executeQuery(sql);
    
    
    if(rs.next()) {
    	int id = rs.getInt(1);
    	
          String firstname=rs.getString(2);
    	 String lastname=rs.getString(3);
		 String email=rs.getString(4);
		 String plan=rs.getString(5);
		 String amount=rs.getString(6);		
		 String autoincrement = rs.getString(7);
		 String cardnumber = rs.getString(8);	 
    	
    	purchase p = new purchase(id,firstname,lastname,email,plan,amount,autoincrement,cardnumber);
    	pur.add(p);
    }
       
    }
    
    catch(Exception e) {
    	e.printStackTrace();
    	
    }
    
    return 	pur;  
	}
	
	public static List<purchase> getCustomer(String Email) {
		
		ArrayList<purchase> purchase = new ArrayList<>();
		
		try {
			
			con = DBconnect.getConnection();
			stmt = con.createStatement();
			String sql = "select * from listnerpurchase where email='"+Email+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id=rs.getInt(1);
	
				 String firstname=rs.getString(2);
		    	 String lastname=rs.getString(3);
				 String email=rs.getString(4);
				 String plan=rs.getString(5);
				 String amount=rs.getString(6);		
				 String autoincrement = rs.getString(7);
				 String cardnumber = rs.getString(8);	 
				

			    	purchase pur = new purchase(id,firstname,lastname,email,plan,amount,autoincrement,cardnumber);
			    	purchase.add(pur);
			}
			
		} catch (Exception e) {
			
		}
		
		return purchase;	
	}

	//insert customer
public static boolean insertcustomer(String firstname , String lastname, String email, String plan, String amount,String autoincrement,String cardnumber) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBconnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into listnerpurchase values (0,'"+firstname+"','"+lastname+"','"+email+"','"+plan+"','"+amount+"','"+autoincrement+"','"+cardnumber+"')";
    	    System.out.println("Executing SQL: " + sql);
    	    
    	    int rs = stmt.executeUpdate(sql);
    		if(rs > 0) {
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
//update customer

public static boolean updatecustomer(String id, String firstname, String lastname, String email, String plan, String amount, String autoincrement, String cardnumber) {
	
	try {
		
		con = DBconnect.getConnection();
		stmt = con.createStatement();
		String sql = "update listnerpurchase set firstname='"+firstname+"',lastname='"+lastname+"',email='"+email+"',plan='"+plan+"',amount='"+amount+"',autoincrement='"+autoincrement+"',cardnumber='"+cardnumber+"'"
		+ "where id='"+id+"' ";
		
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

//retrive
public static List<purchase>getCustomerDetails(String Id) {
	
	int convertedID = Integer.parseInt(Id);
	
	ArrayList<purchase> pur = new ArrayList<>();
	
	try {
		
		con = DBconnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from listnerpurchase where id='"+convertedID+"'";
		rs = stmt.executeQuery(sql);   
		
		while(rs.next()) {
			 int id=rs.getInt(1);
			 String firstname=rs.getString(2);
	    	 String lastname=rs.getString(3);
			 String email=rs.getString(4);
			 String plan=rs.getString(5);
			 String amount=rs.getString(6);		
			 String autoincrement = rs.getString(7);
			 String cardnumber = rs.getString(8);	 
			
			
			purchase p = new purchase(id,firstname,lastname,email,plan,amount,autoincrement,cardnumber);
			pur.add(p);
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}	
	return pur;	
}

public static boolean deleteCustomer(String id) {
	
	int convId = Integer.parseInt(id);
	
	try {
		
		con = DBconnect.getConnection();
		stmt = con.createStatement();
		String sql = "delete from listnerpurchase where id='"+convId+"'";
		int r = stmt.executeUpdate(sql);
		
		if (r > 0) {
			isSuccess = true;
		}
		else {
			isSuccess = false;
		}
		
	}
	catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}




}














		
		
		
		
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
	
	
	
	
	
	
	
	
	
	
		