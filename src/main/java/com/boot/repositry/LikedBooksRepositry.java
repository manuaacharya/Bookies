package com.boot.repositry;

import org.springframework.data.repository.CrudRepository;

import com.boot.pojo.books;
import com.boot.pojo.likedbooks;

public interface LikedBooksRepositry extends CrudRepository<likedbooks, Integer>{

	void save(books lbooks);

}
