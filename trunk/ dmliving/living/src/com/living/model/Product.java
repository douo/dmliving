package com.living.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Product entity. @author MyEclipse Persistence Tools
 */

public class Product implements java.io.Serializable {

	// Fields

	private Long productId;
	private OptionsName optionsName;
	private ProductCategory productCategory;
	private Price price;
	private String name;
	private String description;
	private String itemNumber;
	private String imageUrl;
	private String isactive;
	private Long stockQuantity;
	private Set images = new HashSet(0);
	private Set orderlines = new HashSet(0);

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** full constructor */
	public Product(OptionsName optionsName, ProductCategory productCategory,
			Price price, String name, String description, String itemNumber,
			String imageUrl, String isactive, Long stockQuantity, Set images,
			Set orderlines) {
		this.optionsName = optionsName;
		this.productCategory = productCategory;
		this.price = price;
		this.name = name;
		this.description = description;
		this.itemNumber = itemNumber;
		this.imageUrl = imageUrl;
		this.isactive = isactive;
		this.stockQuantity = stockQuantity;
		this.images = images;
		this.orderlines = orderlines;
	}

	// Property accessors

	public Long getProductId() {
		return this.productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public OptionsName getOptionsName() {
		return this.optionsName;
	}

	public void setOptionsName(OptionsName optionsName) {
		this.optionsName = optionsName;
	}

	public ProductCategory getProductCategory() {
		return this.productCategory;
	}

	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}

	public Price getPrice() {
		return this.price;
	}

	public void setPrice(Price price) {
		this.price = price;
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

	public String getItemNumber() {
		return this.itemNumber;
	}

	public void setItemNumber(String itemNumber) {
		this.itemNumber = itemNumber;
	}

	public String getImageUrl() {
		return this.imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getIsactive() {
		return this.isactive;
	}

	public void setIsactive(String isactive) {
		this.isactive = isactive;
	}

	public Long getStockQuantity() {
		return this.stockQuantity;
	}

	public void setStockQuantity(Long stockQuantity) {
		this.stockQuantity = stockQuantity;
	}

	public Set getImages() {
		return this.images;
	}

	public void setImages(Set images) {
		this.images = images;
	}

	public Set getOrderlines() {
		return this.orderlines;
	}

	public void setOrderlines(Set orderlines) {
		this.orderlines = orderlines;
	}

}