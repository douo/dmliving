package com.living.model;

import java.math.BigDecimal;
import java.util.Date;

/**
 * OrderFrom entity. @author MyEclipse Persistence Tools
 */

public class OrderFrom implements java.io.Serializable {

	// Fields

	private Long orderId;
	private Orderline orderline;
	private String isactive;
	private Date created;
	private Long createdby;
	private Date updated;
	private Long updatedby;
	private Long postway;
	private Long paymentMethod;
	private String description;
	private String isinvoiced;
	private BigDecimal promotionalNum;
	private String state;

	// Constructors

	/** default constructor */
	public OrderFrom() {
	}

	/** full constructor */
	public OrderFrom(Orderline orderline, String isactive, Date created,
			Long createdby, Date updated, Long updatedby, Long postway,
			Long paymentMethod, String description, String isinvoiced,
			BigDecimal promotionalNum, String state) {
		this.orderline = orderline;
		this.isactive = isactive;
		this.created = created;
		this.createdby = createdby;
		this.updated = updated;
		this.updatedby = updatedby;
		this.postway = postway;
		this.paymentMethod = paymentMethod;
		this.description = description;
		this.isinvoiced = isinvoiced;
		this.promotionalNum = promotionalNum;
		this.state = state;
	}

	// Property accessors

	public Long getOrderId() {
		return this.orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public Orderline getOrderline() {
		return this.orderline;
	}

	public void setOrderline(Orderline orderline) {
		this.orderline = orderline;
	}

	public String getIsactive() {
		return this.isactive;
	}

	public void setIsactive(String isactive) {
		this.isactive = isactive;
	}

	public Date getCreated() {
		return this.created;
	}

	public void setCreated(Date created) {
		this.created = created;
	}

	public Long getCreatedby() {
		return this.createdby;
	}

	public void setCreatedby(Long createdby) {
		this.createdby = createdby;
	}

	public Date getUpdated() {
		return this.updated;
	}

	public void setUpdated(Date updated) {
		this.updated = updated;
	}

	public Long getUpdatedby() {
		return this.updatedby;
	}

	public void setUpdatedby(Long updatedby) {
		this.updatedby = updatedby;
	}

	public Long getPostway() {
		return this.postway;
	}

	public void setPostway(Long postway) {
		this.postway = postway;
	}

	public Long getPaymentMethod() {
		return this.paymentMethod;
	}

	public void setPaymentMethod(Long paymentMethod) {
		this.paymentMethod = paymentMethod;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getIsinvoiced() {
		return this.isinvoiced;
	}

	public void setIsinvoiced(String isinvoiced) {
		this.isinvoiced = isinvoiced;
	}

	public BigDecimal getPromotionalNum() {
		return this.promotionalNum;
	}

	public void setPromotionalNum(BigDecimal promotionalNum) {
		this.promotionalNum = promotionalNum;
	}

	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}

}