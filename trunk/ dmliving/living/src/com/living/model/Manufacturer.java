package com.living.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Manufacturer entity. @author MyEclipse Persistence Tools
 */

public class Manufacturer implements java.io.Serializable {

	// Fields

	private Long manufacturerId;
	private String name;
	private String picture;
	private String loc;
	private String url;
	private Date addDate;
	private String state;
	private Set products = new HashSet(0);

	// Constructors

	/** default constructor */
	public Manufacturer() {
	}

	/** full constructor */
	public Manufacturer(String name, String picture, String loc, String url,
			Date addDate, String state, Set products) {
		this.name = name;
		this.picture = picture;
		this.loc = loc;
		this.url = url;
		this.addDate = addDate;
		this.state = state;
		this.products = products;
	}

	// Property accessors

	public Long getManufacturerId() {
		return this.manufacturerId;
	}

	public void setManufacturerId(Long manufacturerId) {
		this.manufacturerId = manufacturerId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getLoc() {
		return this.loc;
	}

	public void setLoc(String loc) {
		this.loc = loc;
	}

	public String getUrl() {
		return this.url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public Date getAddDate() {
		return this.addDate;
	}

	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Set getProducts() {
		return this.products;
	}

	public void setProducts(Set products) {
		this.products = products;
	}

}