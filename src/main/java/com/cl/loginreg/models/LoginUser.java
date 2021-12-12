package com.cl.loginreg.models;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

public class LoginUser {
	
	@NotEmpty(message="Email is required!")
	@Email(message="Please enter a valid email!")
	private String email;
	
	@NotEmpty(message="Password is required!")
	@Size(min=8, max=50, message="Password nust be between 8 and 50 characters!")
	private String password;
	
	///// Constructor
	public LoginUser() {
		
	}
	
	public LoginUser(String email, String password) {
		this.email = email;
		this.password = password;
	}
	
	///// Getters and Setters
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
}
