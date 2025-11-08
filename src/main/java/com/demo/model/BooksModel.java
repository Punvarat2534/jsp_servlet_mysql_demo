package com.demo.model;

import java.util.ArrayList;

public class BooksModel {

	private String isbn;
	private String title;
	private String author;
	private int year;
	private String publisher;
	private String image;
	private int id;
	private String deleted_at;
	private String description;

	/*
	 * public BooksModel(int id,String isbn,String title,String author,int
	 * year,String publisher,String image,String deleted_at,String description) {
	 * this.isbn = isbn; this.title = title; this.author = author; this.year = year;
	 * this.publisher = publisher; this.image = image; this.id = id; this.deleted_at
	 * = deleted_at; this.description = description; }
	 */

	public BooksModel() {

	}

	// public ArrayList<BooksModel> books = new ArrayList<BooksModel>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
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

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image_s) {
		this.image = image_s;
	}

	public String getDescription_s() {
		return description;
	}

	public void setDescription_s(String description) {
		this.description = description;
	}

	public String getDeleted_at() {
		return deleted_at;
	}

	public void setDeleted_at(String deleted_at) {
		this.deleted_at = deleted_at;
	}

}
