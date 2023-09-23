package com.boot.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.boot.pojo.books;
import com.boot.pojo.readlater;
import com.boot.service.BookService;
import com.boot.service.ReadLaterBookService;

@Controller
public class ReadLaterBooksController {
	
	@Autowired
	private ReadLaterBookService readLaterService;
	
	@Autowired
	private BookService bookService;
	
	public ReadLaterBooksController() {
		System.out.println("Read Later Book Controller");
	}

	@GetMapping("/readlaterbooks")
	public String viewBooks(Map<String, List<readlater>> map) {
		try {
			List<readlater> books = readLaterService.getAllBook();
			map.put("books", books);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			System.out.println("Oops Book List Not Found!");
			e.printStackTrace();
		}
		return "readlater";
	}
	
	@GetMapping("/addrlb")
	public String insertLikedBook(@RequestParam(value="value", required=false) int value) throws Exception {
		System.out.println(value);
		for(books lb : bookService.getAllBook()) {
			if (lb.getId()==value) {
				try {
					System.out.println(lb);
					readlater rlbs = new readlater(lb.getId(),lb.getTitle(),lb.getAuthor(),lb.getYear());
					System.out.println(rlbs);
					readLaterService.insetReadLaterBook(rlbs);
					return "redirect:/viewbooks";
				}catch(Exception e) {
					e.getMessage();
					System.out.println("Failed!");
				}
			}
		}
		return "redirect:/viewbooks";
	}
	
	@GetMapping("/deletereadlater")
	public String deleteLikedBooks(@RequestParam(value="value", required=false) int value) throws Exception {
		System.out.println(value);
		for(readlater lb :readLaterService.getAllBook()) {
			if(lb.getId()==value) {
				readLaterService.deleteById(lb.getId());
				return "redirect:/readlaterbooks";
			}
		}
		return "redirect:/readlaterbooks";
	}
}
