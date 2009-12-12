package com.living.action;

import org.apache.commons.lang.StringUtils;

import com.living.model.User;
import com.living.util.Constants;
import com.living.webapp.action.BaseAction;

public class UserAction extends BaseAction {
	private static final long serialVersionUID = -5700184806798771718L;

	private User user;
	
	private String goingToURL;

	/**
	 * 用户登陆
	 */
	public String login() {
		user = userService.login(user);
		if (user != null) {
			userService.initUser(getRequest(), user);
			String goingToURL = (String) getSession().getAttribute(Constants.GOTO_URL_KEY);
			if (StringUtils.isNotBlank(goingToURL)) {
				setGoingToURL(goingToURL);
				getSession().removeAttribute(Constants.GOTO_URL_KEY);
			} else {
				setGoingToURL("/");
			}
			return SUCCESS;
		} else {
			getRequest().setAttribute("loginError", "Account or password is not corrected!");
			return INPUT;
		}
	}
	
	/**
	 * 转向登陆页面
	 */
	public String loginAccount() {
		return SUCCESS;
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
		if (user != null) {
			user = (User) userService.register(user);
			if (user != null) {
				// 注册成功后在会话里保存用户信息
				userService.initUser(getRequest(), user); 
				return SUCCESS;
			}
		}
		getRequest().setAttribute("registerError", "Our system already has a record of that email address - please try logging in with that email address. If you do not use that address any longer you can correct it in the My Account area.");
		return ERROR;
	}
	
	/**
	 * 注册账户页面
	 * @return
	 */
	public String createAccount() {
		return SUCCESS;
	}
	
	/**
	 * 显示用户首要地址
	 * @return
	 */
	public String showPrimaryAdress() {
		user = (User) getSession().getAttribute(Constants.SESSION_LOGIN);
		return SUCCESS;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getGoingToURL() {
		return goingToURL;
	}

	public void setGoingToURL(String goingToURL) {
		this.goingToURL = goingToURL;
	}

}
