package com.living.service.impl;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.AddressBookDao;
import com.living.dao.UserDao;
import com.living.model.AddressBook;
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
	AddressBookDao addressBookDao;
	
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

	/**
	 * 初始化用户
	 */
	@Override
	public void initUser(HttpServletRequest request, User user) {
		HttpSession session = request.getSession();
		session.removeAttribute("error");
		session.removeAttribute("loginError");
		session.setAttribute(Constants.SESSION_LOGIN, user);
	}
	
	/**
	 * 注册用户
	 */
	@Override
	@Transactional(propagation = Propagation.REQUIRED)
	//@Transactional(propagation=Propagation.NESTED,rollbackFor=Exception.class)
	public User register(User user) {
		if (!hasUser(user)) {
			user.setPassword(DigestUtils.md5Hex(user.getPassword())); // 简单的MD5加密
			user.setCreated(new Date());
			user = (User) userDao.save(user);
			// 保存地址本信息
			AddressBook addressBook = new AddressBook();
			addressBook.setCity(user.getCity());
			addressBook.setCompanyName(user.getCompanyName());
			addressBook.setFirstName(user.getFirstName());
			addressBook.setLastName(user.getLastName());
			addressBook.setPostZipCode(user.getPostZipCode());
			addressBook.setStateProvince(user.getPostZipCode());
			addressBook.setStreetAddress(user.getStreetAddress());
			addressBook.setSuburb(user.getSuburb());
			addressBook.setIsPrimary(Constants.IS_PRIMARY_YES);
			addressBook.setUser(user);
			addressBookDao.save(addressBook);
			
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
		return userDao.findByAccount(user.getEmail()) != null;
	}
	
}
