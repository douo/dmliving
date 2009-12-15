package com.living.model;

/**
 * Email entity. @author MyEclipse Persistence Tools
 */

public class Email implements java.io.Serializable {

	// Fields

	private Integer emailId;
	private String title;
	private String column3;
	private String column4;
	private String column5;
	private String column6;
	private String column7;

	// Constructors

	/** default constructor */
	public Email() {
	}

	/** full constructor */
	public Email(String title, String column3, String column4, String column5,
			String column6, String column7) {
		this.title = title;
		this.column3 = column3;
		this.column4 = column4;
		this.column5 = column5;
		this.column6 = column6;
		this.column7 = column7;
	}

	// Property accessors

	public Integer getEmailId() {
		return this.emailId;
	}

	public void setEmailId(Integer emailId) {
		this.emailId = emailId;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getColumn3() {
		return this.column3;
	}

	public void setColumn3(String column3) {
		this.column3 = column3;
	}

	public String getColumn4() {
		return this.column4;
	}

	public void setColumn4(String column4) {
		this.column4 = column4;
	}

	public String getColumn5() {
		return this.column5;
	}

	public void setColumn5(String column5) {
		this.column5 = column5;
	}

	public String getColumn6() {
		return this.column6;
	}

	public void setColumn6(String column6) {
		this.column6 = column6;
	}

	public String getColumn7() {
		return this.column7;
	}

	public void setColumn7(String column7) {
		this.column7 = column7;
	}

}