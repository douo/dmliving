package com.living.model;

import java.util.Date;

/**
 * ShopingCar entity. @author MyEclipse Persistence Tools
 */

public class ShopingCar implements java.io.Serializable {

	// Fields

	private Long shopingCarId;
	private User user;
	private Product product;
	private Long productNumber;
	private String remark;
	private Date created;
	private Long expires;
	private String state;

	// Constructors

	/** default constructor */
	public ShopingCar() {
	}

	/** full constructor */
	public ShopingCar(User user, Product product, Long productNumber,
			String remark, Date created, Long expires, String state) {
		this.user = user;
		this.product = product;
		this.productNumber = productNumber;
		this.remark = remark;
		this.created = created;
		this.expires = expires;
		this.state = state;
	}

	// Property accessors

	public Long getShopingCarId() {
		return this.shopingCarId;
	}

	public void setShopingCarId(Long shopingCarId) {
		this.shopingCarId = shopingCarId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Long getProductNumber() {
		return this.productNumber;
	}

	public void setProductNumber(Long productNumber) {
		this.productNumber = productNumber;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Long getExpires() {
		return this.expires;
	}

	public void setExpires(Long expires) {
		this.expires = expires;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

}