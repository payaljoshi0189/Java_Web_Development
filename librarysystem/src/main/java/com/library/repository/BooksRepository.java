package com.library.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.library.model.Books;


/**
 * This repository takes Books class as Domain to manage
 * we find a list of all the books with given book name.
 * Internally, JpaRepository extends QueryByExampleExecutor
 * @author payaljoshi
 *
 */
public interface BooksRepository extends JpaRepository<Books, String> {
	List<Books> findByBookName(String bookName);

	

}
