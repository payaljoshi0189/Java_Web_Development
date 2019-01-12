package com.library.controllers;



import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.library.model.Book;
import com.library.model.Books;
import com.library.model.Role;
import com.library.model.UserRegistration;
import com.library.model.Users;
import com.library.service.CustomUserDetailsService;

/**
 * 
 * @author payaljoshi
 * Controller class that redirects the requests using 
 * RequestMapping Annotation
 * Upon receiving requests, they are processed and a view is returned
 *
 */
@Controller
public class LoginController {
	@Autowired
	CustomUserDetailsService userDetailsService;
	
	
	/**
	 * This Method returns custom login page
	 * Also, in case of logout from web app,
	 * it adds the successful logout 
	 * message to login page's model attribute
	 * Error message is handled similarly
	 * @param model
	 * @param error
	 * @param logout
	 * @return
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("errorMsg", "Your username and password are invalid.");

		if (logout != null)
			model.addAttribute("msg", "You have been logged out successfully.");

		return "login";
	}
	
	
	/**
	 * This method is executed on the click of 'create an account' link
	 * present on the Login page
	 * It returns a modelView containing a new bean named 'UserRegistration' 
	 * for user to register to the Library Management System
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		return new ModelAndView("registration", "user", new UserRegistration());
	}
	
	/**
	 * This method is called upon click of
	 * Register Button on Registration page
	 * On submit, UserRegistration bean object is submitted 
	 * as a result. Using this object, all the user entered values are fetched
	 * Then we call CustomUserDetailsService's addUser method to
	 * store this java object into database
	 * JPA and hibernate are used to 
	 * persist userRegistrationObject to database. 
	 * @param userRegistrationObject
	 * @return
	 */
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView registerUser(@ModelAttribute("user") UserRegistration userRegistrationObject) {
		Users user = new Users();
		Role role = userDetailsService.findRole("USER");
		Set<Role> userRole = new HashSet<>();
		userRole.add(role);
		user.setRoles(userRole);
		user.setActive(1);
		user.setFirstName(userRegistrationObject.getFirstName());
		user.setLastName(userRegistrationObject.getLastName());
		user.setEmail(userRegistrationObject.getEmail());
		user.setName(userRegistrationObject.getUserName());
		user.setPassword(userRegistrationObject.getPassword());	
		userDetailsService.addUser(user);	
		return new ModelAndView("redirect:/searchBook");	
	}
	
	
	/**
	 * This method is called on click of Browse button
	 * It fetches all the books present in the database
	 * using CustomUserDetailsService's getBookList method.
	 * It adds the fetched list to the ModelAndView and
	 * returns it to the user.
	 * @return
	 */
	@RequestMapping(value = "/displayBookList", method = RequestMethod.GET)
	public ModelAndView getBookList() {	
		List<Books> booksList =  userDetailsService.getBookList();
		ModelAndView displayBookList = new  ModelAndView("displayBookList");
		displayBookList.addObject("lists", booksList);		
		return displayBookList;
	}
	
	/**
	 * This method is called on click of Search books link 
	 * in the nav bar
	 * It adds a new Book object to the ModelAndView 
	 * and returns it to the user
	 * @return
	 */
	@RequestMapping(value = "/searchBook", method = RequestMethod.GET)
	public ModelAndView searchBook() {
		return new ModelAndView("searchBook", "inputBookName", new Book());
	
	}
	
	/**
	 * This method is called on click of Search button present
	 * on the searchBook.jsp
	 * It fetches the book name given by the user in the search box,
	 * searches for it in the database using CustomUserDetailsService's
	 * getBook method
	 * and returns a list to the user.
	 * Here I used list instead of a single book
	 * to handle cases where there are books with same name in database.
	 * @param book
	 * @return
	 */
	@RequestMapping(value = "/displayBookDetails", method = RequestMethod.GET)
	public ModelAndView getBook(@ModelAttribute("inputBookName") Book book) {
		List<Books> booksList = new ArrayList<>();
		if( null!= book.getBookNameGiven()) {
			booksList = userDetailsService.getBook(book.getBookNameGiven());
		}else {
			booksList =  userDetailsService.getBookList();
			}
		ModelAndView displayBook = new ModelAndView("displaySearchedBook");
		displayBook.addObject("lists", booksList);
		return displayBook;
	}

	/**
	 * This method is called on click of logo PSU Library,
	 * also when user logs in into the system.
	 * It returns the ModelAndView containing the home view.
	 * @return
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView homePage() {
		return new ModelAndView("home");
	
	}
}
