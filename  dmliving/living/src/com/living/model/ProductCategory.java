package com.living.model;

import java.util.HashSet;
import java.util.Set;

/**
 * ProductCategory entity. @author MyEclipse Persistence Tools
 */

public class ProductCategory implements java.io.Serializable {

	// Fields

	private Long productCategoryId;
	private Long parentCategoryId;
	private String name;
	private String description;
	private Long level;
	private Long orderLevel;
	private String isactive;
	private Set products = new HashSet(0);

	// Constructors

	/** default constructor */
	public ProductCategory() {
	}

	/** full constructor */
	public ProductCategory(Long parentCategoryId, String name,
			String description, Long level, Long orderLevel, String isactive,
			Set products) {
		this.parentCategoryId = parentCategoryId;
		this.name = name;
		this.description = description;
		this.level = level;
		this.orderLevel = orderLevel;
		this.isactive = isactive;
		this.products = products;
	}

	// Property accessors

	public Long getProductCategoryId() {
		return this.productCategoryId;
	}

	public void setProductCategoryId(Long productCategoryId) {
		this.productCategoryId = productCategoryId;
	}

	public Long getParentCategoryId() {
		return this.parentCategoryId;
	}

	public void setParentCategoryId(Long parentCategoryId) {
		this.parentCategoryId = parentCategoryId;
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

	public Long getLevel() {
		return this.level;
	}

	public void setLevel(Long level) {
		this.level = level;
	}

	public Long getOrderLevel() {
		return this.orderLevel;
	}

	public void setOrderLevel(Long orderLevel) {
		this.orderLevel = orderLevel;
	}

	public String getIsactive() {
		return this.isactive;
	}

	public void setIsactive(String isactive) {
		this.isactive = isactive;
	}

	public Set getProducts() {
		return this.products;
	}

	public void setProducts(Set products) {
		this.products = products;
	}

}