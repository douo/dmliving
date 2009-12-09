package com.living.action;

import java.util.Date;

import com.living.model.Country;
import com.living.model.User;
import com.living.webapp.action.BaseAction;

public class UserAction extends BaseAction {
	private static final long serialVersionUID = -5700184806798771718L;

	private User user;

	/**
	 * 管理员登陆
	 */
	public String login() {
		System.out.println(";ogin invoke!" + user);
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
//			Country country = new Country();
//			country.setCountryId(user.getCountry().getCountryId());
			System.out.println("country id=" + user.getCountry().getCountryId());
			user.setCreated(new Date());
			// user.setCountry(country);
			// user = (User) userService.save(user);
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
