package com.living.dao;

import com.framework.dao.BaseHibernateDao;
import com.living.model.User;

public interface UserDao extends BaseHibernateDao<User> {
	String ACCOUNT = "email";
	String PASSWORD = "password";
	User findByAccountPwd(String account, String password);
}
