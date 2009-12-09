package com.living.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.UserDao;
import com.living.model.User;
import com.living.service.UserService;

@Service
public class UserServiceImpl extends BaseServiceImpl implements UserService {

	@Autowired
	public UserServiceImpl(UserDao defaultDao) {
		super(defaultDao);
	}

	@Autowired
	UserDao userDao;
	
	/**
	 * 用户或管理员登陆
	 * @param user
	 * @return User or null
	 */
	public User login(User user) {
		user = userDao.findByAccountPwd(user.getEmail(), user.getPassword());
		if (user != null) {
			return user;
		}
		return null;
	}

}
