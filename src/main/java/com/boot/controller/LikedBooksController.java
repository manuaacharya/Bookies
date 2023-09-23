package com.boot.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.pojo.books;
import com.boot.pojo.likedbooks;
import com.boot.service.BookService;
import com.boot.service.LikedBooksService;

@Controller
public class LikedBooksController {

	@Autowired
	private LikedBooksService likedBookService;

	@Autowired
	private BookService bookService;

	public LikedBooksController() {
		System.out.println("Liked Book Controller");
	}

	@GetMapping("/likedbooks")
	public String viewBooks(Map<String, List<likedbooks>> map) {
		try {
			List<likedbooks> books = likedBookService.getAllBook();
			map.put("books", books);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Oops Book List Not Found!");
			e.printStackTrace();
		}
		return "likedbooks";
	}

	@GetMapping("/addliked")
	public String insertLikedBook(@RequestParam(value="value", required=false) int value) throws Exception {
		System.out.println(value);
		for(books lb : bookService.getAllBook()) {
			if (lb.getId()==value) {
				try {
					System.out.println(lb);
					likedbooks lbks = new likedbooks(lb.getId(),lb.getTitle(),lb.getAuthor(),lb.getYear());
					System.out.println(lbks);
					likedBookService.insetLikedBook(lbks);  
					return "redirect:/viewbooks";
				}catch(Exception e) {
					System.out.println("Failed!");
				}
			}
		}
		return "redirect:/viewbooks";
	}
	
	@GetMapping("/deleteliked")
	public String deleteLikedBooks(@RequestParam(value="value", required=false) int value) throws Exception {
		System.out.println(value);
		for(likedbooks lb :likedBookService.getAllBook()) {
			if(lb.getId()==value) {
				likedBookService.deleteById(lb.getId());
				return "redirect:/likedbooks";
			}
		}
		return "redirect:/likedbooks";
	}
}