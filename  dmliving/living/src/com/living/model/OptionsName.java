package com.living.model;

import java.util.HashSet;
import java.util.Set;

/**
 * OptionsName entity. @author MyEclipse Persistence Tools
 */

public class OptionsName implements java.io.Serializable {

	// Fields

	private Long optionsNameId;
	private OptionsValue optionsValue;
	private String name;
	private String description;
	private Set products = new HashSet(0);

	// Constructors

	/** default constructor */
	public OptionsName() {
	}

	/** full constructor */
	public OptionsName(OptionsValue optionsValue, String name,
			String description, Set products) {
		this.optionsValue = optionsValue;
		this.name = name;
		this.description = description;
		this.products = products;
	}

	// Property accessors

	public Long getOptionsNameId() {
		return this.optionsNameId;
	}

	public void setOptionsNameId(Long optionsNameId) {
		this.optionsNameId = optionsNameId;
	}

	public OptionsValue getOptionsValue() {
		return this.optionsValue;
	}

	public void setOptionsValue(OptionsValue optionsValue) {
		this.optionsValue = optionsValue;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set getProducts() {
		return this.products;
	}

	public void setProducts(Set products) {
		this.products = products;
	}

}