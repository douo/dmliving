package com.living.action;

import org.apache.commons.lang.StringUtils;

import com.living.model.AddressBook;
import com.living.model.User;
import com.living.util.Constants;
import com.living.util.GenerateNewPassword;
import com.living.util.mail.EmailSender;
import com.living.webapp.action.BaseAction;

public class UserAction extends BaseAction {
	private static final long serialVersionUID = -5700184806798771718L;

	private User user;
	private AddressBook addressBook;
	
	private String goingToURL;

	/**
	 * 用户登陆
	 */
	public String login() {
		if (user != null) {
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
				getRequest().setAttribute("loginError", "Error: Sorry, there is no match for that email address and/or password.");
				return INPUT;
			}
		}
		return INPUT;
	}
	
	/**
	 * 用户账号页面
	 */
	public String myAccount() {
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
			addressBook = addressBookService.findByUserId(user.getUserId()).get(0);
			if (user != null && addressBook != null) {
				// 注册成功后在会话里保存用户信息
				userService.initUser(getRequest(), user); 
				getRequest().removeAttribute("registerError");
				return SUCCESS;
			}
			getRequest().setAttribute("registerError", "Our system already has a record of that email address - please try logging in with that email address. If you do not use that address any longer you can correct it in the My Account area.");
		}
		return INPUT;
	}
	
	/**
	 * 注册账户页面
	 * @return
	 */
	public String createAccount() {
		return SUCCESS;
	}
	
	
	/**
	 * 更新用户信息
	 * @return
	 */
	public String updateAccount() {
		user = (User) userService.update(user);
		if (user != null) {
			getRequest().setAttribute("accountMessage", "Your account has been successfully updated. ");
			return SUCCESS;
		}
		return ERROR;
	}
	
	 /**
	  * 用户账号信息
	  * @return
	  */
	public String accountInformation() {
		user = (User) getSession().getAttribute(Constants.SESSION_LOGIN);
		return SUCCESS;
	}

	/**
	 * 用户密码修改页面
	 * @author C.donglin
	 * @since 2009-12-19
	 * @return
	 */
	public String changepswPage() {
		return SUCCESS;
	}
	
	/**
	 * 修改用户密码
	 * @author C.donglin
	 * @since 2009-12-19
	 * @return
	 */
	public String changePassword() {
		String passwordNew = getRequest().getParameter("password_new");
		String passwordCurrent = getRequest().getParameter("password_current");
		User user = getLoginUser();
		if (user != null) {
			if (userService.isCorrectPassword(user, passwordCurrent)) {
				if (userService.changePassword(user, passwordNew)) {
					getRequest().setAttribute("accountMessage", "Your password has been successfully updated.");
					return SUCCESS;
				}
			} else {
				getRequest().setAttribute("passwordChageError", "Your Current Password did not match the password in our records. Please try again.");
				return INPUT;
			}
		}
		return ERROR;
	}
	
	/**
	 * 找回密码
	 * @author C.donglin
	 * @since 2009-12-20
	 * @return
	 */
	public String findPassword() {
		user = userService.findByAccount(user.getEmail());
		if (user != null) {
			String newRandPsw = GenerateNewPassword.generatePsw(5);
			if (userService.changePassword(user, newRandPsw)) {
				EmailSender emailSender = new EmailSender();
				emailSender.sendMail("cdlmagical@vip.qq.com", "New Password", "Your new password to 'Deeply Madly Living' is: " + newRandPsw +
						"\nAfter you have logged in using the new password, you may change it by going to the 'My Account' page.");
				getRequest().setAttribute("loginMsg", "A new password has been sent to your email address.");
				return SUCCESS;
			} else {
				getRequest().setAttribute("getPswError", "Error: System Error; please try again. ");
				return INPUT;
			}
		} else {
			getRequest().setAttribute("getPswError", "Error: The Email Address was not found in our records; please try again. ");
			return INPUT;
		}
	}
	
	/**
	 * 管理员登陆
	 * @author C.donglin
	 * @since 2009-12-22
	 * @return
	 */
	public String adminLogin() {
		// TODO 需要加入权限控制
		if (user != null) {
			user = userService.login(user);
			if (user != null) {
				userService.initUser(getRequest(), user);
				String goingToURL = (String) getSession().getAttribute(Constants.GOTO_URL_KEY);
				if (StringUtils.isNotBlank(goingToURL)) {
					setGoingToURL(goingToURL);
					getSession().removeAttribute(Constants.GOTO_URL_KEY);
				} else {
					setGoingToURL("/admin/");
				}
				return SUCCESS;
			} else {
				getRequest().setAttribute("loginError", "Error: Invalid username and/or password.");
				return INPUT;
			}
		}
		return INPUT;
	}
	
	
	
	// Setter and Getters below
	
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

	public AddressBook getAddressBook() {
		return addressBook;
	}

	public void setAddressBook(AddressBook addressBook) {
		this.addressBook = addressBook;
	}

}
