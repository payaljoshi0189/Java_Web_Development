package com.library.config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.library.security.CustomLogoutSuccessHandler;
import com.library.service.CustomUserDetailsService;


/** 
 * References to learn Spring Boot Security Configuration for Authorization and Authentication
 * https://spring.io/guides/gs/securing-web/
 * https://www.youtube.com/watch?v=egXtoL5Kg08 --Tech Primers Online Tutorial
 * http://javasampleapproach.com/spring-framework/spring-security/spring-security-customize-logout-handler
 * Code Reference: https://github.com/TechPrimers/spring-security-db-example
 * 
 * **/
/**
 * This class configures the Authorization and Authentication
 * related to Spring Boot Security.
 * Any requests that require the authentication are 
 * redirected to the login page by default.
 * @author payaljoshi
 *
 */
@Configuration
@EnableWebSecurity
public class LibrarySystenSecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	CustomUserDetailsService userDetailsService;
	
	@Autowired
	CustomLogoutSuccessHandler customizeLogoutSuccessHandler;
	
	
	@Autowired
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsService).passwordEncoder(getPasswordEncoder());
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/register").permitAll()
		.antMatchers("/home").hasAnyRole("USER")
		.anyRequest().authenticated().and().formLogin().loginPage("/login").permitAll()
		.and()
        .logout().logoutUrl("/login?logout=1").logoutSuccessHandler(customizeLogoutSuccessHandler)
            .permitAll();
		
		
		http.csrf().disable();
	}

	private PasswordEncoder getPasswordEncoder() {
		return new PasswordEncoder() {
			@Override
			public String encode(CharSequence rawPassword) {
				return rawPassword.toString();
			}

			@Override
			public boolean matches(CharSequence rawPassword, String encodedPassword) {
				return true;
			}
		};

	}

}
