package com.living.model;

/**
 * AddressBook entity. @author MyEclipse Persistence Tools
 */

public class AddressBook implements java.io.Serializable {

	// Fields

	private Long addressbookId;
	private User user;
	private String firstName;
	private String lastName;
	private String companyName;
	private String streetAddress;
	private String suburb;
	private String city;
	private String stateProvince;
	private String postZipCode;
	private String isPrimary;
	private String isactive;

	// Constructors

	/** default constructor */
	public AddressBook() {
	}

	/** full constructor */
	public AddressBook(User user, String firstName, String lastName,
			String companyName, String streetAddress, String suburb,
			String city, String stateProvince, String postZipCode,
			String isPrimary, String isactive) {
		this.user = user;
		this.firstName = firstName;
		this.lastName = lastName;
		this.companyName = companyName;
		this.streetAddress = streetAddress;
		this.suburb = suburb;
		this.city = city;
		this.stateProvince = stateProvince;
		this.postZipCode = postZipCode;
		this.isPrimary = isPrimary;
		this.isactive = isactive;
	}

	// Property accessors

	public Long getAddressbookId() {
		return this.addressbookId;
	}

	public void setAddressbookId(Long addressbookId) {
		this.addressbookId = addressbookId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
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

	public String getIsPrimary() {
		return this.isPrimary;
	}

	public void setIsPrimary(String isPrimary) {
		this.isPrimary = isPrimary;
	}

	public String getIsactive() {
		return this.isactive;
	}

	public void setIsactive(String isactive) {
		this.isactive = isactive;
	}

}