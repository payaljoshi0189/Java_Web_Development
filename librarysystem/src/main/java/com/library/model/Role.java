package com.library.model;


import javax.persistence.*;

/**
 * This is an entity class for 'role' 
 * table in the database.
 * It stores roles related to 
 * library management system.
 * @author payaljoshi
 *
 */
@Entity
@Table(name = "role")
public class Role {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "role_id")
	private int roleId;
	
	@Column(name = "role")
	private String role;
	
	
	public Role() {
	}

	public Role(Role role) {
		this.roleId = role.getRoleId();
		this.role = role.getRole();
	}
	
	public int getRoleId() {
		return roleId;
	}

	public void setRoleId(int role_id) {
		this.roleId = role_id;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	
}
