package com.boot.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.boot.pojo.books;
import com.boot.service.BookService;

@Controller
public class BookController {

	@Autowired
	private BookService bookService;

	public BookController() {
		System.out.println("Book Controller");
	}

	@GetMapping("/viewbooks")
	public String viewBooks(Map<String, List<books>> map) {
		try {
			List<books> books = bookService.getAllBook();
			map.put("books", books);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Oops Book List Not Found!");
			e.printStackTrace();
		}
		return "booksdashboard";
	}
	
	@GetMapping("/guestview")
	public String guestView(Map<String, List<books>> map) {
		try {
			List<books> books = bookService.getAllBook();
			map.put("books", books);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Oops Book List Not Found!");
			e.printStackTrace();
		}
		return "guestview";
	}
}
