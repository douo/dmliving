package com.living.dao;

import com.framework.dao.BaseHibernateDao;
import com.living.model.AddressBook;
import com.living.model.User;

@SuppressWarnings("unchecked")
public interface AddressBookDao extends BaseHibernateDao {
	String USER_ACCOUNT = "user.userId";
	AddressBook findByUser(User user);
}
