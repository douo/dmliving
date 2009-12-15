package com.living.model;

import java.util.HashSet;
import java.util.Set;

/**
 * OptionsName entity. @author MyEclipse Persistence Tools
 */

public class OptionsName implements java.io.Serializable {

	// Fields

	private Long optionsNameId;
	private Product product;
	private String name;
	private String valueType;
	private String description;
	private Set optionsValues = new HashSet(0);

	// Constructors

	/** default constructor */
	public OptionsName() {
	}

	/** full constructor */
	public OptionsName(Product product, String name, String valueType,
			String description, Set optionsValues) {
		this.product = product;
		this.name = name;
		this.valueType = valueType;
		this.description = description;
		this.optionsValues = optionsValues;
	}

	// Property accessors

	public Long getOptionsNameId() {
		return this.optionsNameId;
	}

	public void setOptionsNameId(Long optionsNameId) {
		this.optionsNameId = optionsNameId;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getValueType() {
		return this.valueType;
	}

	public void setValueType(String valueType) {
		this.valueType = valueType;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set getOptionsValues() {
		return this.optionsValues;
	}

	public void setOptionsValues(Set optionsValues) {
		this.optionsValues = optionsValues;
	}

}