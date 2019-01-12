package com.library.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * This is an entity class for
 * all the books
 * It is mapped to 'books' table in the database.
 * For all the books, details like id, 
 * bookName, author, etc are stored.
 * The attribute names are same as the column names in the 
 * table.
 * Id is the primary key for the table.
 * @author payaljoshi
 *
 */
@Entity
@Table(name="books")
public class Books {
	@Id
	@GeneratedValue
	private Long id;
	private String bookName;
	private String author;
	private String location;
	private int noOfCopies;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getBookName() {
		return bookName;
	}
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getNoOfCopies() {
		return noOfCopies;
	}
	public void setNoOfCopies(int noOfCopies) {
		this.noOfCopies = noOfCopies;
	}
}
