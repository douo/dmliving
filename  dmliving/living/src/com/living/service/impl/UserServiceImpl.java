package com.living.service.impl;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.CountryDao;
import com.living.dao.UserDao;
import com.living.model.User;
import com.living.service.UserService;
import com.living.util.Constants;

@Service
public class UserServiceImpl extends BaseServiceImpl implements UserService {

	@Autowired
	public UserServiceImpl(UserDao defaultDao) {
		super(defaultDao);
	}

	@Autowired
	UserDao userDao;
	
	@Autowired
	CountryDao countryDao;
	
	/**
	 * 用户登陆
	 * @param user
	 * @return User or null
	 */
	@Override
	public User login(User user) {
		if (user != null) {
			user.setPassword(DigestUtils.md5Hex(user.getPassword()));
			user = userDao.findByAccountPwd(user.getEmail(), user.getPassword());
			if (user != null) {
				return user;
			}
		}
		return null;
	}

	@Override
	public void initUser(HttpServletRequest request, User user) {
		HttpSession session = request.getSession();
		session.removeAttribute("error");
		session.removeAttribute("loginError");
		session.setAttribute(Constants.SESSION_LOGIN, user);
	}
	
	@Override
	//@Transactional(propagation = Propagation.REQUIRED)
	//@Transactional(propagation=Propagation.NESTED,rollbackFor=Exception.class)
	public User register(User user) {
		if (!hasUser(user)) {
			user.setPassword(DigestUtils.md5Hex(user.getPassword()));
			user = (User) userDao.save(user);
			return user;
		}
		return null;
	}
	
	/**
	 * 是否已存在用户
	 * @param user
	 * @return
	 */
	public boolean hasUser(User user) {
		return userDao.findByAccountPwd(user.getEmail(), user.getPassword()) != null;
	}
	
}
