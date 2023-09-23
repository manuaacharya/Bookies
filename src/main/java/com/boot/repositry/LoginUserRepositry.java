package com.boot.repositry;

import org.springframework.data.repository.CrudRepository;

import com.boot.pojo.loginuser;

public interface LoginUserRepositry extends CrudRepository<loginuser, Integer>{
	
	public loginuser findByEmail(String email);
    
    public boolean existsByEmail(String email);

}
