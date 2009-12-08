package com.living.model;

/**
 * Authority entity. @author MyEclipse Persistence Tools
 */

public class Authority implements java.io.Serializable {

	// Fields

	private Long authorityId;
	private User user;
	private String authority;

	// Constructors

	/** default constructor */
	public Authority() {
	}

	/** full constructor */
	public Authority(User user, String authority) {
		this.user = user;
		this.authority = authority;
	}

	// Property accessors

	public Long getAuthorityId() {
		return this.authorityId;
	}

	public void setAuthorityId(Long authorityId) {
		this.authorityId = authorityId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getAuthority() {
		return this.authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

}