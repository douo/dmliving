package com.living.action;

import com.living.model.User;
import com.living.webapp.action.BaseAction;

public class UserAction extends BaseAction {
	private static final long serialVersionUID = -5700184806798771718L;

	private User user;

	/**
	 * 管理员登陆
	 * @return
	 */
	public String adminLogin() {
		System.out.println("adminLogin invoke!" + user);
		user = userService.login(user);
		if (user != null) {
			System.out.println("login success!");
			return SUCCESS;
		}
		System.out.println("login failed!");
		return ERROR;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
