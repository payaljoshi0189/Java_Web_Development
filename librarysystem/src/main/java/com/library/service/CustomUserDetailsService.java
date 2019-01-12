package com.library.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.library.model.Books;
import com.library.model.CustomUserDetails;
import com.library.model.Role;
import com.library.model.Users;
import com.library.repository.BooksRepository;
import com.library.repository.RolesRepository;
import com.library.repository.UsersRepository;

import java.util.List;
import java.util.Optional;

/**
 * @author payaljoshi
 *This method is mainly used for spring boot authentication
 *during login.
 * It implements Spring Security authentication's UserDetailsService.
 * 
 * 
 */
@Service
public class CustomUserDetailsService implements UserDetailsService{
	
	@Autowired
	private UsersRepository usersRepository;
	
	@Autowired
	private RolesRepository rolesRepository;
	
	@Autowired
	private BooksRepository booksRepository;
	
	/**
	 * Upon submission of Login form, it calls UserRepository's 
	 * findByName method to search for user using the given user name.
	 * In case if the user name is not found,
	 * it returns exception.
	 * Code Reference: https://github.com/TechPrimers/spring-security-db-example
	 */
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.print("Inside userDetails!!!!!!!!!!");
		System.out.print("Calling db methd!!!!!!!!!!");
		Optional<Users> optionalUsers = usersRepository.findByName(username);
		System.out.print("Got users?????!!!!!!!!!!");
		optionalUsers.orElseThrow(() -> new UsernameNotFoundException("Username not found"));
		return optionalUsers.map(CustomUserDetails::new).get();	
	    }
	
	/**
	 * This method calls CrudRepository's save method
	 * to store the given user object in the database.
	 * @param user
	 */
	public void addUser(Users user) {
		usersRepository.save(user);
	}
	
	/**
	 * Using this method we get the role object.
	 * This method fetches the role from the database 
	 * using JPA's JpaRepository class
	 * @param role
	 * @return
	 */
	public Role findRole(String role) {
		return rolesRepository.findByRole(role);
	}
	
	/**
	 * Using this method, we get a list of all the books.
	 * Internally,it uses JPA's JpaRepository class
	 * Called on click of Browse Books link
	 * @return
	 */
	public List<Books> getBookList(){
		return booksRepository.findAll();
	}
	
	/**
	 * Using this method, we get a list of all the books.
	 * Internally,it uses JPA's JpaRepository class
	 * Called on click of search button
	 * @param bookName
	 * @return
	 */
	public List<Books> getBook(String bookName) {
		return booksRepository.findByBookName(bookName);
	}
}
