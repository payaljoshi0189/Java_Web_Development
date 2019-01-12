package com.library.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.logout.LogoutSuccessHandler;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Component;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * This class handles the logout activity 
 * by user
 * It invalidates the session for the user.
 * @author payaljoshi
 *
 */
@Component
public class CustomLogoutSuccessHandler implements LogoutSuccessHandler {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	
	//Reference: http://javasampleapproach.com/spring-framework/spring-security/spring-security-customize-logout-handler
    @Override
    public void onLogoutSuccess(final HttpServletRequest request, final HttpServletResponse response, final Authentication authentication) throws IOException, ServletException {
    	
    	if(authentication != null) {
    		logger.info("Logout Sucessfull for user " + authentication.getName());
    		new SecurityContextLogoutHandler().logout(request, response, authentication);
		}
    	
    	
    	String URL = request.getContextPath() + "/login?logout";
		response.setStatus(HttpStatus.OK.value());
		response.sendRedirect(URL);
    }

}
