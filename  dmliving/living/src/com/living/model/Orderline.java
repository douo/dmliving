package com.living.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Orderline entity. @author MyEclipse Persistence Tools
 */

public class Orderline implements java.io.Serializable {

	// Fields

	private Long orderlineId;
	private Product product;
	private Long quantity;
	private Double discount;
	private String isactive;
	private Set orderFroms = new HashSet(0);

	// Constructors

	/** default constructor */
	public Orderline() {
	}

	/** full constructor */
	public Orderline(Product product, Long quantity, Double discount,
			String isactive, Set orderFroms) {
		this.product = product;
		this.quantity = quantity;
		this.discount = discount;
		this.isactive = isactive;
		this.orderFroms = orderFroms;
	}

	// Property accessors

	public Long getOrderlineId() {
		return this.orderlineId;
	}

	public void setOrderlineId(Long orderlineId) {
		this.orderlineId = orderlineId;
	}

	public Product getProduct() {
		return this.product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Long getQuantity() {
		return this.quantity;
	}

	public void setQuantity(Long quantity) {
		this.quantity = quantity;
	}

	public Double getDiscount() {
		return this.discount;
	}

	public void setDiscount(Double discount) {
		this.discount = discount;
	}

	public String getIsactive() {
		return this.isactive;
	}

	public void setIsactive(String isactive) {
		this.isactive = isactive;
	}

	public Set getOrderFroms() {
		return this.orderFroms;
	}

	public void setOrderFroms(Set orderFroms) {
		this.orderFroms = orderFroms;
	}

}