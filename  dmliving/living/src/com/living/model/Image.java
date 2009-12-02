package com.living.model;

/**
 * Image entity. @author MyEclipse Persistence Tools
 */

public class Image implements java.io.Serializable {

	// Fields

	private Long imageId;
	private Product product;
	private String imageUrl;
	private Long orderLevel;
	private String isactive;

	// Constructors

	/** default constructor */
	public Image() {
	}

	/** full constructor */
	public Image(Product product, String imageUrl, Long orderLevel,
			String isactive) {
		this.product = product;
		this.imageUrl = imageUrl;
		this.orderLevel = orderLevel;
		this.isactive = isactive;
	}

	// Property accessors

	public Long getImageId() {
		return this.imageId;
	}

	public void setImageId(Long imageId) {
		this.imageId = imageId;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getImageUrl() {
		return this.imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
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

}