package com.library.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.library.model.Role;

/**
 * This repository takes Role class as Domain and its ID type as Integer.
 * @author payaljoshi
 *
 */
 
public interface RolesRepository extends JpaRepository<Role, Integer> {
	Role findByRole(String role);

}
