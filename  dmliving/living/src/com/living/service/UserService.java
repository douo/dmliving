package com.living.service;

import javax.servlet.http.HttpServletRequest;

import com.framework.service.BaseService;
import com.living.model.User;

public interface UserService extends BaseService {
	
	/**
	 * 用户登陆
	 * @param user
	 * @return
	 */
	public User login(User user);
	
	/**
	 * 初始化用户, 保存用户信息
	 * @param request
	 * @param users
	 */
	public void initUser(HttpServletRequest request,User user);
	
	/**
	 * 用户注册
	 * @param user
	 * @return
	 */
	public User register(User user);
	
	/**
	 * 修改用户密码
	 * @author C.donglin
	 * @since 2009-12-19
	 * @param user
	 * @param newPassword
	 * @return
	 */
	public boolean changePassword(User user, String newPassword);
	
	/**
	 * 判断是否等于当前密码
	 * @author C.donglin
	 * @since 2009-12-19
	 * @param user
	 * @param currentPassword
	 * @return
	 */
	public boolean isCorrectPassword(User user, String currentPassword);
	
	/**
	 * 是否存在此用户
	 * @author C.donglin
	 * @since 2009-12-20
	 * @param user
	 * @return
	 */
	public boolean hasUser(User user);
}
