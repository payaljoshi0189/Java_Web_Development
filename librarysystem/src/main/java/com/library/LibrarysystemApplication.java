package com.library;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

/**
 * This is default class of spring boot application 
 * that is responsible for running Spring boot project
 * It is annotated with SpringBootApplication.
 * It is auto generated on creation of Spring Boot Application
 * @author payaljoshi
 *
 */
@ComponentScan(basePackages = {"com.library"})
@SpringBootApplication
public class LibrarysystemApplication {	
	public static void main(String[] args) {
		System.out.print("Inside main!!!!!!!!!!");	
		SpringApplication.run(LibrarysystemApplication.class, args);
	}
}
