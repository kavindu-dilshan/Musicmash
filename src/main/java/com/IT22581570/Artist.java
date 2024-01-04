package com.IT22581570;

public class Artist {
	private int id;
	private String f_name;
	private String l_name;	
	private String userName;
	private String email;
	private String password;
	
	
	public Artist(int id, String f_name, String l_name, String userName, String email, String password) {
		super();
		this.id = id;
		this.f_name = f_name;
		this.l_name = l_name;
		this.userName = userName;
		this.email = email;
		this.password = password;
	}


	public int getId() {
		return id;
	}


	public String getF_name() {
		return f_name;
	}


	public String getL_name() {
		return l_name;
	}


	public String getUserName() {
		return userName;
	}


	public String getEmail() {
		return email;
	}


	public String getPassword() {
		return password;
	}
	
	
	
	
	

}
