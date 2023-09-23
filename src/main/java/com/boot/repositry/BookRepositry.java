package com.boot.repositry;

import org.springframework.data.repository.CrudRepository;

import com.boot.pojo.books;

public interface BookRepositry extends CrudRepository<books, Integer>{

}
