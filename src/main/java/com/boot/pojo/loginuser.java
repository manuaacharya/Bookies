package com.boot.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class loginuser {
	
	@Id
	private String email;
	private String password;
	
	public loginuser() {
	
	}
	
	public loginuser(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}

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

	@Override
	public String toString() {
		return "LoginUser [email=" + email + ", password=" + password + "]";
	}

}
