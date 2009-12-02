package com.living.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.framework.dao.impl.BaseHibernateDaoImpl;
import com.living.dao.UserDao;
import com.living.model.User;

@Repository
public class UserDaoImpl extends BaseHibernateDaoImpl<User> implements UserDao {

	public User findByAccountPwd(String account, String password) {
		String[] propertyNames = {ACCOUNT, PASSWORD};
		Object[] values = {account, password};
		List<User> userList = findByProperty(propertyNames, values);
		if (userList != null && userList.size()>0) {
			return userList.get(0);
		}
		return null;
	}
	
	@Override
	public void initHibernateTemplate() {
	}
}