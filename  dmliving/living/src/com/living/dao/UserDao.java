package com.living.dao;

import com.framework.dao.BaseHibernateDao;
import com.living.model.User;

@SuppressWarnings("unchecked")
public interface UserDao extends BaseHibernateDao {
	String ACCOUNT = "email";
	String PASSWORD = "password";
	User findByAccountPwd(String account, String password);
}
