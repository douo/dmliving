package com.living.dao;

import java.io.Serializable;
import java.util.List;

import com.framework.dao.BaseHibernateDao;
import com.living.model.AddressBook;

@SuppressWarnings("unchecked")
public interface AddressBookDao extends BaseHibernateDao {
	String USER_ACCOUNT = "user.userId";
	List<AddressBook> findByUserId(Serializable userId);
}
