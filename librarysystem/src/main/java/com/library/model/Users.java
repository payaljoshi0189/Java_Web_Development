package com.library.model;

import java.util.Set;

import javax.persistence.*;

/**
 * This is an entity class that maps to 'users'
 * table in the database.
 * There is many to many relationship between user
 * and the role which is specified in this entity.
 * Primary key for the table is user_id.
 * @author payaljoshi
 *
 */
@Entity
@Table(name = "users")
public class Users {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "user_id")
	private int id;
	@Column(name = "email")
	private String email;
	@Column(name = "last_name")
	private String lastName;
	@Column(name = "first_name")
	private String firstName;
	@Column(name = "password")
	private String password;
	@Column(name = "active")
	private int active;
	@Column(name = "user_name")
	private String name;
	
	/**
	 * References to learn about mapping relation in hibernate
	 * Java Brains Hibernate Video Tutorials.
	 */
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)	//Map child entities as a collection in the parent object
	@JoinTable(name = "user_role", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "role_id"))
	private Set<Role> roles;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public Users() {
		
	}
	public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	public Users(Users users) {
		this.id = users.getId();
		this.active = users.getActive();
		this.roles = users.getRoles();
		this.email = users.getEmail();
		this.firstName = users.getFirstName();
		this.lastName = users.getLastName();
		this.name = users.getName();
		this.password = users.getPassword();
	}

}
