package com.living.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Country entity. @author MyEclipse Persistence Tools
 */

public class Country implements java.io.Serializable {

	// Fields

	private Long countryId;
	private Integer countryCode;
	private String name;
	private Set addressBooks = new HashSet(0);

	// Constructors

	/** default constructor */
	public Country() {
	}

	/** full constructor */
	public Country(Integer countryCode, String name, Set addressBooks) {
		this.countryCode = countryCode;
		this.name = name;
		this.addressBooks = addressBooks;
	}

	// Property accessors

	public Long getCountryId() {
		return this.countryId;
	}

	public void setCountryId(Long countryId) {
		this.countryId = countryId;
	}

	public Integer getCountryCode() {
		return this.countryCode;
	}

	public void setCountryCode(Integer countryCode) {
		this.countryCode = countryCode;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set getAddressBooks() {
		return this.addressBooks;
	}

	public void setAddressBooks(Set addressBooks) {
		this.addressBooks = addressBooks;
	}

}