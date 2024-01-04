package com.IT22576866;

public class Listener {
	private int id;
	private String f_name;
	private String l_name;
	private String phone;
	private String email;
	private String userName;
	private String password;
	
	public Listener(int id, String f_name, String l_name, String phone, String email, String userName, String password) {
		super();
		this.id = id;
		this.f_name = f_name;
		this.l_name = l_name;
		this.phone = phone;
		this.email = email;
		this.userName = userName;
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

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}
	
	
}
