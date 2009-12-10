package com.living.action;

import java.util.Date;

import com.living.model.User;
import com.living.webapp.action.BaseAction;

public class UserAction extends BaseAction {
	private static final long serialVersionUID = -5700184806798771718L;

	private User user;
	
	private String referer;

	/**
	 * 用户登陆
	 */
	public String login() {
		user = userService.login(user);
		if (user != null) {
			referer = getRequest().getHeader("Referer");
			userService.initUser(getRequest(), user);
			return SUCCESS;
		} else {
			System.out.println("login fail!");
			getRequest().setAttribute("loginError", "用户帐号或密码错误!");		
		}
		return ERROR;
	}
	
	/**
	 * 用户注销登陆
	 */
	public String logoff(){
		getSession().invalidate();
		return SUCCESS;
	}
	
	/**
	 * 用户注册
	 */
	public String register() {
		System.out.println("register invoke!");
		if (user != null) {
			user.setCreated(new Date());
			user = (User) userService.register(user);
			// 注册成功后在会话里保存用户信息
			userService.initUser(getRequest(), user); 
			return SUCCESS;
		}
		return ERROR;
	}
	
	/**
	 * 注册账户页面
	 * @return
	 */
	public String createAccount() {
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getReferer() {
		return referer;
	}

	public void setReferer(String referer) {
		this.referer = referer;
	}
}
