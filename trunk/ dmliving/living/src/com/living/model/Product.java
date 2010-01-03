package com.living.model;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Product entity. @author MyEclipse Persistence Tools
 */

public class Product implements java.io.Serializable {

	// Fields

	private Long productId;
	private Manufacturer manufacturer;
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
	private String ptype;
	private String freeShip;
	private String isFree;
	private String isVirtual;
	private Date addDate;
	private Date updated;
	private Date dateAvailable;
	private Long leastBuy;
	private Long mostBuy;
	private Long buyUnit;
	private Double weight;
	private String isCall;
	private String isNumberBox;
	private String sortOrder;
	private Set optionsNames = new HashSet(0);
	private Set images = new HashSet(0);
	private Set orderlines = new HashSet(0);
	private Set shopingCars = new HashSet(0);

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** full constructor */
	public Product(Manufacturer manufacturer, ProductCategory productCategory,
			String name, String description, String itemNumber,
			String imageUrl, String isactive, Long stockQuantity,
			Double normalPrice, Double memberPrice, Double stockPrice,
			Double specialPrice, String ptype, String freeShip, String isFree,
			String isVirtual, Date addDate, Date updated, Date dateAvailable,
			Long leastBuy, Long mostBuy, Long buyUnit, Double weight,
			String isCall, String isNumberBox, String sortOrder,
			Set optionsNames, Set images, Set orderlines, Set shopingCars) {
		this.manufacturer = manufacturer;
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
		this.ptype = ptype;
		this.freeShip = freeShip;
		this.isFree = isFree;
		this.isVirtual = isVirtual;
		this.addDate = addDate;
		this.updated = updated;
		this.dateAvailable = dateAvailable;
		this.leastBuy = leastBuy;
		this.mostBuy = mostBuy;
		this.buyUnit = buyUnit;
		this.weight = weight;
		this.isCall = isCall;
		this.isNumberBox = isNumberBox;
		this.sortOrder = sortOrder;
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

	public Manufacturer getManufacturer() {
		return this.manufacturer;
	}

	public void setManufacturer(Manufacturer manufacturer) {
		this.manufacturer = manufacturer;
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

	public String getPtype() {
		return this.ptype;
	}

	public void setPtype(String ptype) {
		this.ptype = ptype;
	}

	public String getFreeShip() {
		return this.freeShip;
	}

	public void setFreeShip(String freeShip) {
		this.freeShip = freeShip;
	}

	public String getIsFree() {
		return this.isFree;
	}

	public void setIsFree(String isFree) {
		this.isFree = isFree;
	}

	public String getIsVirtual() {
		return this.isVirtual;
	}

	public void setIsVirtual(String isVirtual) {
		this.isVirtual = isVirtual;
	}

	public Date getAddDate() {
		return this.addDate;
	}

	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}

	public Date getUpdated() {
		return this.updated;
	}

	public void setUpdated(Date updated) {
		this.updated = updated;
	}

	public Date getDateAvailable() {
		return this.dateAvailable;
	}

	public void setDateAvailable(Date dateAvailable) {
		this.dateAvailable = dateAvailable;
	}

	public Long getLeastBuy() {
		return this.leastBuy;
	}

	public void setLeastBuy(Long leastBuy) {
		this.leastBuy = leastBuy;
	}

	public Long getMostBuy() {
		return this.mostBuy;
	}

	public void setMostBuy(Long mostBuy) {
		this.mostBuy = mostBuy;
	}

	public Long getBuyUnit() {
		return this.buyUnit;
	}

	public void setBuyUnit(Long buyUnit) {
		this.buyUnit = buyUnit;
	}

	public Double getWeight() {
		return this.weight;
	}

	public void setWeight(Double weight) {
		this.weight = weight;
	}

	public String getIsCall() {
		return this.isCall;
	}

	public void setIsCall(String isCall) {
		this.isCall = isCall;
	}

	public String getIsNumberBox() {
		return this.isNumberBox;
	}

	public void setIsNumberBox(String isNumberBox) {
		this.isNumberBox = isNumberBox;
	}

	public String getSortOrder() {
		return this.sortOrder;
	}

	public void setSortOrder(String sortOrder) {
		this.sortOrder = sortOrder;
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