package com.boot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.pojo.readlater;
import com.boot.repositry.ReadLaterRepositry;

@Service
public class ReadLaterBookService {
	
	@Autowired
	private ReadLaterRepositry readlaterRepoService;
	
	public List<readlater> getAllBook() throws Exception {
		return (List<readlater>) this.readlaterRepoService.findAll();
	}
	
	public boolean insetReadLaterBook(readlater book) {
		if (this.readlaterRepoService.existsById(book.getId())) {
			return false;
		}
		this.readlaterRepoService.save(book);
		return true;
	}
	
	public boolean deleteById(int id) {
		this.readlaterRepoService.deleteById(id);
		return true;
	}
}
