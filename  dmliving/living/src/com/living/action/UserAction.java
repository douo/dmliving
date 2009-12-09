package com.living.action;

import java.util.Date;

import com.living.model.User;
import com.living.webapp.action.BaseAction;

public class UserAction extends BaseAction {
	private static final long serialVersionUID = -5700184806798771718L;

	private User user;

	/**
	 * 用户登陆
	 */
	public String login() {
		user = userService.login(user);
		if (user != null) {
			System.out.println("login success!");
			return SUCCESS;
		}
		System.out.println("login failed!");
		return ERROR;
	}
	
	/**
	 * 用户注册
	 */
	public String register() {
		System.out.println("register invoke!");
		if (user != null) {
			user.setCreated(new Date());
			user = (User) userService.save(user);
			return SUCCESS;
		}
		return ERROR;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
