package com.boot.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class likedbooks {

	@Id
	private int id;
	private String title;
	private String author;
	private int year;

	public likedbooks() { // Default Constructor

	}

	public likedbooks(int id, String title, String author, int year) { // Parameterized Constructor
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.year = year;
	}

	public likedbooks(String title, String author, int year) { // Parameterized Constructor
		super();
		this.title = title;
		this.author = author;
		this.year = year;
	}
	
	public int getId() { //Getter And Setters
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	@Override
	public String toString() {
		return "books [id=" + id + ", title=" + title + ", author=" + author + ", year=" + year + "]";
	}
}
