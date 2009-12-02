package com.living.model;

import java.util.HashSet;
import java.util.Set;

/**
 * OptionsValue entity. @author MyEclipse Persistence Tools
 */

public class OptionsValue implements java.io.Serializable {

	// Fields

	private Long optionsValueId;
	private String optionsValue;
	private String isactive;
	private Set optionsNames = new HashSet(0);

	// Constructors

	/** default constructor */
	public OptionsValue() {
	}

	/** full constructor */
	public OptionsValue(String optionsValue, String isactive, Set optionsNames) {
		this.optionsValue = optionsValue;
		this.isactive = isactive;
		this.optionsNames = optionsNames;
	}

	// Property accessors

	public Long getOptionsValueId() {
		return this.optionsValueId;
	}

	public void setOptionsValueId(Long optionsValueId) {
		this.optionsValueId = optionsValueId;
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

	public Set getOptionsNames() {
		return this.optionsNames;
	}

	public void setOptionsNames(Set optionsNames) {
		this.optionsNames = optionsNames;
	}

}