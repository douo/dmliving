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
			userService.initUser(getRequest(), user);
			return SUCCESS;
		} else {
			System.out.println("login fail!");
			getSession().setAttribute("loginError", "用户帐号或密码出错");		
		}
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
	
	/**
	 * 用户登陆或者注册
	 */
	public String loginOrRegister() {
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}
