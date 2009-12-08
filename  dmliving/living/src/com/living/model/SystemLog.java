package com.living.model;

import java.util.Date;

/**
 * SystemLog entity. @author MyEclipse Persistence Tools
 */

public class SystemLog implements java.io.Serializable {

	// Fields

	private Long systemLogId;
	private User user;
	private String tableName;
	private String modelName;
	private String userName;
	private String ipAddress;
	private Date logDate;
	private String operateUrl;
	private String remark;

	// Constructors

	/** default constructor */
	public SystemLog() {
	}

	/** full constructor */
	public SystemLog(User user, String tableName, String modelName,
			String userName, String ipAddress, Date logDate, String operateUrl,
			String remark) {
		this.user = user;
		this.tableName = tableName;
		this.modelName = modelName;
		this.userName = userName;
		this.ipAddress = ipAddress;
		this.logDate = logDate;
		this.operateUrl = operateUrl;
		this.remark = remark;
	}

	// Property accessors

	public Long getSystemLogId() {
		return this.systemLogId;
	}

	public void setSystemLogId(Long systemLogId) {
		this.systemLogId = systemLogId;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getTableName() {
		return this.tableName;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public String getModelName() {
		return this.modelName;
	}

	public void setModelName(String modelName) {
		this.modelName = modelName;
	}

	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getIpAddress() {
		return this.ipAddress;
	}

	public void setIpAddress(String ipAddress) {
		this.ipAddress = ipAddress;
	}

	public Date getLogDate() {
		return this.logDate;
	}

	public void setLogDate(Date logDate) {
		this.logDate = logDate;
	}

	public String getOperateUrl() {
		return this.operateUrl;
	}

	public void setOperateUrl(String operateUrl) {
		this.operateUrl = operateUrl;
	}

	public String getRemark() {
		return this.remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

}