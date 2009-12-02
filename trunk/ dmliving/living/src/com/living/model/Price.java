package com.living.model;

import java.util.HashSet;
import java.util.Set;

/**
 * Price entity. @author MyEclipse Persistence Tools
 */

public class Price implements java.io.Serializable {

	// Fields

	private Long priceId;
	private Double normalPrice;
	private Double memberPrice;
	private Double stockPrice;
	private Double specialPrice;
	private Set products = new HashSet(0);

	// Constructors

	/** default constructor */
	public Price() {
	}

	/** full constructor */
	public Price(Double normalPrice, Double memberPrice, Double stockPrice,
			Double specialPrice, Set products) {
		this.normalPrice = normalPrice;
		this.memberPrice = memberPrice;
		this.stockPrice = stockPrice;
		this.specialPrice = specialPrice;
		this.products = products;
	}

	// Property accessors

	public Long getPriceId() {
		return this.priceId;
	}

	public void setPriceId(Long priceId) {
		this.priceId = priceId;
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

	public Set getProducts() {
		return this.products;
	}

	public void setProducts(Set products) {
		this.products = products;
	}

}