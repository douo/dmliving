package com.living.model;

/**
 * OptionsValue entity. @author MyEclipse Persistence Tools
 */

public class OptionsValue implements java.io.Serializable {

	// Fields

	private Long optionsValueId;
	private OptionsName optionsName;
	private String optionsValue;
	private String isactive;

	// Constructors

	/** default constructor */
	public OptionsValue() {
	}

	/** full constructor */
	public OptionsValue(OptionsName optionsName, String optionsValue,
			String isactive) {
		this.optionsName = optionsName;
		this.optionsValue = optionsValue;
		this.isactive = isactive;
	}

	// Property accessors

	public Long getOptionsValueId() {
		return this.optionsValueId;
	}

	public void setOptionsValueId(Long optionsValueId) {
		this.optionsValueId = optionsValueId;
	}

	public OptionsName getOptionsName() {
		return this.optionsName;
	}

	public void setOptionsName(OptionsName optionsName) {
		this.optionsName = optionsName;
	}

	public String getOptionsValue() {
		return this.optionsValue;
	}

	public void setOptionsValue(String optionsValue) {
		this.optionsValue = optionsValue;
	}

	public String getIsactive() {
		return this.isactive;
	}

	public void setIsactive(String isactive) {
		this.isactive = isactive;
	}

}