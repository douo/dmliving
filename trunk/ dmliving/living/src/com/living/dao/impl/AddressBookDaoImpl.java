package com.living.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.framework.dao.impl.BaseHibernateDaoImpl;
import com.living.dao.AddressBookDao;
import com.living.model.AddressBook;
import com.living.model.User;

@Repository
public class AddressBookDaoImpl extends BaseHibernateDaoImpl<AddressBook> implements AddressBookDao {

	@Override
	public void initHibernateTemplate() {
	}

	public AddressBook findByUser(User user) {
		List<AddressBook> addressBookList = findByProperty(USER_ACCOUNT, user.getUserId());
		if (addressBookList != null && addressBookList.size() > 0) {
			return addressBookList.get(0);
		}
		return null;
	}

	@Override
	public List<AddressBook> findByUserId(Serializable userId) {
		List<AddressBook> addressBookList = findByProperty(USER_ACCOUNT, userId);
		if (addressBookList != null && addressBookList.size() > 0) {
			return addressBookList;
		}
		return null;
	}
}
