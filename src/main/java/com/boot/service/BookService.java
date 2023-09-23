package com.boot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.pojo.books;
import com.boot.repositry.BookRepositry;

@Service
public class BookService {
	
	@Autowired
    private BookRepositry bookRepositry;
	
	public List<books> getAllBook() throws Exception {
		return (List<books>) this.bookRepositry.findAll();
	}
	
	public books getBookById(int bookId) {
		return this.bookRepositry.findById(bookId).get();
	}
}
