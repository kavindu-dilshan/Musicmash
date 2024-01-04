package com.IT22915290;

public class purchase {
private int id;
private String firstname;
private String lastname;
private String email;
private String plan;
private String amount;
private String autoincrement;
private String cardnumber;





public purchase( int id, String firstname, String lastname, String email, String plan,String amount,String autoincrement,String cardnumber) {
	this.id = id;
	this.firstname = firstname;
	this.lastname = lastname;
	this.email = email;
	this.plan = plan;
	this.amount = amount;
	this.autoincrement = autoincrement;
	this.cardnumber = cardnumber;
	
	
}
public int getId() {
	return id;
}

public String getFirstname() {
	return firstname;
}

public String getLastname() {
	return lastname;
}

public String getEmail() {
	return email;
}

public String getPlan() {
	return plan;
}

public String getAmount() {
	return amount;
}



public String getAutoincrement() {
	return autoincrement;
}

public String getCardnumber() {
	return cardnumber;
}


}
