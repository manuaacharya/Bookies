package com.boot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.pojo.loginuser;
import com.boot.repositry.LoginUserRepositry;

@Service
public class LoginService {
	
	@Autowired
	private LoginUserRepositry loginrepo;
	
	public loginuser getLoginUser(String email) throws Exception {
		return this.loginrepo.findByEmail(email);
	}
	
	public boolean userValidation(loginuser user) throws Exception {
		loginuser existUser = null;
		try {
			existUser = getLoginUser(user.getEmail());
			if (user.getPassword().equals(existUser.getPassword())) {
				return true;
			}

		} catch (Exception e) {
			throw e;
		}
		return false;
	}
	
	public loginuser getUserById(int userId) {
		return this.loginrepo.findById(userId).get();
	}

	public boolean insertUser(loginuser user) {
		this.loginrepo.save(user);
		return true;
	}
}
