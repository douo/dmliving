package com.living.service;

import com.framework.service.BaseService;
import com.living.model.User;

public interface UserService extends BaseService {
	/**
	 * 用户或管理员登陆
	 * @param user
	 * @return
	 */
	public User login(User user);
}
