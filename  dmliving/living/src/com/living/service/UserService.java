package com.living.service;

import javax.servlet.http.HttpServletRequest;

import com.framework.service.BaseService;
import com.living.model.User;

public interface UserService extends BaseService {
	/**
	 * 用户或管理员登陆
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
}
