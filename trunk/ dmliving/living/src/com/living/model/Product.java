package com.living.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Product entity. @author MyEclipse Persistence Tools
 */

public class Product implements java.io.Serializable {

	// Fields

	private Long productId;
	private ProductCategory productCategory;
	private String name;
	private String description;
	private String itemNumber;
	private String imageUrl;
	private String isactive;
	private Long stockQuantity;
	private Double normalPrice;
	private Double memberPrice;
	private Double stockPrice;
	private Double specialPrice;
	private Set optionsNames = new HashSet(0);
	private Set images = new HashSet(0);
	private Set orderlines = new HashSet(0);
	private Set shopingCars = new HashSet(0);

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** full constructor */
	public Product(ProductCategory productCategory, String name,
			String description, String itemNumber, String imageUrl,
			String isactive, Long stockQuantity, Double normalPrice,
			Double memberPrice, Double stockPrice, Double specialPrice,
			Set optionsNames, Set images, Set orderlines, Set shopingCars) {
		this.productCategory = productCategory;
		this.name = name;
		this.description = description;
		this.itemNumber = itemNumber;
		this.imageUrl = imageUrl;
		this.isactive = isactive;
		this.stockQuantity = stockQuantity;
		this.normalPrice = normalPrice;
		this.memberPrice = memberPrice;
		this.stockPrice = stockPrice;
		this.specialPrice = specialPrice;
		this.optionsNames = optionsNames;
		this.images = images;
		this.orderlines = orderlines;
		this.shopingCars = shopingCars;
	}

	// Property accessors

	public Long getProductId() {
		return this.productId;
	}

	public void setProductId(Long productId) {
		this.productId = productId;
	}

	public ProductCategory getProductCategory() {
		return this.productCategory;
	}

	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
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

	public Double getNormalPrice() {
		return this.normalPrice;
	}

	public void setNormalPrice(Double normalPrice) {
		this.normalPrice = normalPrice;
	}

	public Double getMemberPrice() {
		return this.memberPrice;
	}

	public void setMemberPrice(Double memberPrice) {
		this.memberPrice = memberPrice;
	}

	public Double getStockPrice() {
		return this.stockPrice;
	}

	public void setStockPrice(Double stockPrice) {
		this.stockPrice = stockPrice;
	}

	public Double getSpecialPrice() {
		return this.specialPrice;
	}

	public void setSpecialPrice(Double specialPrice) {
		this.specialPrice = specialPrice;
	}

	public Set getOptionsNames() {
		return this.optionsNames;
	}

	public void setOptionsNames(Set optionsNames) {
		this.optionsNames = optionsNames;
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

	public Set getShopingCars() {
		return this.shopingCars;
	}

	public void setShopingCars(Set shopingCars) {
		this.shopingCars = shopingCars;
	}

}