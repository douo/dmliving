package com.living.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Long userId;
	private Country country;
	private String firstName;
	private String lastName;
	private String email;
	private String password;
	private String companyName;
	private String streetAddress;
	private String suburb;
	private String city;
	private String stateProvince;
	private String postZipCode;
	private String phone;
	private String fax;
	private String isnewsletter;
	private String emailFormat;
	private Date created;
	private Long createdBy;
	private Date upated;
	private Long updateBy;
	private String isactive;
	private Set userRoles = new HashSet(0);
	private Set addressBooks = new HashSet(0);
	private Set authorities = new HashSet(0);
	private Set systemLogs = new HashSet(0);

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
	public User(Country country, String firstName, String lastName,
			String email, String password, String companyName,
			String streetAddress, String suburb, String city,
			String stateProvince, String postZipCode, String phone, String fax,
			String isnewsletter, String emailFormat, Date created,
			Long createdBy, Date upated, Long updateBy, String isactive,
			Set userRoles, Set addressBooks, Set authorities, Set systemLogs) {
		this.country = country;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.password = password;
		this.companyName = companyName;
		this.streetAddress = streetAddress;
		this.suburb = suburb;
		this.city = city;
		this.stateProvince = stateProvince;
		this.postZipCode = postZipCode;
		this.phone = phone;
		this.fax = fax;
		this.isnewsletter = isnewsletter;
		this.emailFormat = emailFormat;
		this.created = created;
		this.createdBy = createdBy;
		this.upated = upated;
		this.updateBy = updateBy;
		this.isactive = isactive;
		this.userRoles = userRoles;
		this.addressBooks = addressBooks;
		this.authorities = authorities;
		this.systemLogs = systemLogs;
	}

	// Property accessors

	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Country getCountry() {
		return this.country;
	}

	public void setCountry(Country country) {
		this.country = country;
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

	public String getCompanyName() {
		return this.companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getStreetAddress() {
		return this.streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}

	public String getSuburb() {
		return this.suburb;
	}

	public void setSuburb(String suburb) {
		this.suburb = suburb;
	}

	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getStateProvince() {
		return this.stateProvince;
	}

	public void setStateProvince(String stateProvince) {
		this.stateProvince = stateProvince;
	}

	public String getPostZipCode() {
		return this.postZipCode;
	}

	public void setPostZipCode(String postZipCode) {
		this.postZipCode = postZipCode;
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

	public String getEmailFormat() {
		return this.emailFormat;
	}

	public void setEmailFormat(String emailFormat) {
		this.emailFormat = emailFormat;
	}

	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Long getCreatedBy() {
		return this.createdBy;
	}

	public void setCreatedBy(Long createdBy) {
		this.createdBy = createdBy;
	}

	public Date getUpated() {
		return this.upated;
	}

	public void setUpated(Date upated) {
		this.upated = upated;
	}

	public Long getUpdateBy() {
		return this.updateBy;
	}

	public void setUpdateBy(Long updateBy) {
		this.updateBy = updateBy;
	}

	public String getIsactive() {
		return this.isactive;
	}

	public void setIsactive(String isactive) {
		this.isactive = isactive;
	}

	public Set getUserRoles() {
		return this.userRoles;
	}

	public void setUserRoles(Set userRoles) {
		this.userRoles = userRoles;
	}

	public Set getAddressBooks() {
		return this.addressBooks;
	}

	public void setAddressBooks(Set addressBooks) {
		this.addressBooks = addressBooks;
	}

	public Set getAuthorities() {
		return this.authorities;
	}

	public void setAuthorities(Set authorities) {
		this.authorities = authorities;
	}

	public Set getSystemLogs() {
		return this.systemLogs;
	}

	public void setSystemLogs(Set systemLogs) {
		this.systemLogs = systemLogs;
	}

}