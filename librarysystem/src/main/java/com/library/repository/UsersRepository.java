package com.library.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.library.model.Role;
import com.library.model.Users;

/**
 * This repository takes Users class as Domain to manage and its ID type as Integer.
 * @author payaljoshi
 *
 */
public interface UsersRepository extends JpaRepository<Users, Integer> {
	Optional<Users> findById(int userid);
    Optional<Users> findByName(String username);
   
    
}