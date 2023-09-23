package com.boot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boot.pojo.likedbooks;
import com.boot.repositry.LikedBooksRepositry;

@Service
public class LikedBooksService {

	@Autowired
	private LikedBooksRepositry likedRepoService;

	public List<likedbooks> getAllBook() throws Exception {
		return (List<likedbooks>) this.likedRepoService.findAll();
	}

	public boolean insetLikedBook(likedbooks book) {
		if (this.likedRepoService.existsById(book.getId())) {
			return false;
		}
		this.likedRepoService.save(book);
		return true;
	}
	
	public boolean deleteById(int id) {
		this.likedRepoService.deleteById(id);
		return true;
	}
}
