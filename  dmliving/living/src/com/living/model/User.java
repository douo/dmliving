package com.living.model;

import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Long userId;
	private String firstName;
	private String lastName;
	private String country;
	private String email;
	private String password;
	private String phone;
	private String fax;
	private String isnewsletter;
	private String isactive;
	private Set addressBooks = new HashSet(0);
	private Set systemLogs = new HashSet(0);
	private Set userRoles = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String firstName, String lastName, String email) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}

	/** full constructor */
	public User(String firstName, String lastName, String country,
			String email, String password, String phone, String fax,
			String isnewsletter, String isactive, Set addressBooks,
			Set systemLogs, Set userRoles) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.country = country;
		this.email = email;
		this.password = password;
		this.phone = phone;
		this.fax = fax;
		this.isnewsletter = isnewsletter;
		this.isactive = isactive;
		this.addressBooks = addressBooks;
		this.systemLogs = systemLogs;
		this.userRoles = userRoles;
	}

	// Property accessors

	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return this.firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return this.lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getCountry() {
		return this.country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getFax() {
		return this.fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getIsnewsletter() {
		return this.isnewsletter;
	}

	public void setIsnewsletter(String isnewsletter) {
		this.isnewsletter = isnewsletter;
	}

	public String getIsactive() {
		return this.isactive;
	}

	public void setIsactive(String isactive) {
		this.isactive = isactive;
	}

	public Set getAddressBooks() {
		return this.addressBooks;
	}

	public void setAddressBooks(Set addressBooks) {
		this.addressBooks = addressBooks;
	}

	public Set getSystemLogs() {
		return this.systemLogs;
	}

	public void setSystemLogs(Set systemLogs) {
		this.systemLogs = systemLogs;
	}

	public Set getUserRoles() {
		return this.userRoles;
	}

	public void setUserRoles(Set userRoles) {
		this.userRoles = userRoles;
	}

}