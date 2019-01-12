package com.library.model;


/**
 * This class acts as a bean for User Registration process
 * This java object is persisted in the database
 * using JPA and hibernate.
 * @author payaljoshi
 *
 */
public class UserRegistration {
private String userName;
private String password;
private String firstName;
private String lastName;
private String email;
private String confirmPassword;


public String getUserName() {
	return userName;
}
public void setUserName(String username) {
	this.userName = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getConfirmPassword() {
	return confirmPassword;
}
public void setConfirmPassword(String confirmPassword) {
	this.confirmPassword = confirmPassword;
}
	
}
