package com.living.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.AddressBookDao;
import com.living.model.AddressBook;
import com.living.model.User;
import com.living.service.AddressBookService;

@Service
public class AddressBookServiceImpl extends BaseServiceImpl implements AddressBookService {

	@Autowired
	public AddressBookServiceImpl(AddressBookDao defaultDao) {
		super(defaultDao);
	}
	
	@Autowired
	AddressBookDao addressBookDao;

	@Override
	public AddressBook findByUser(User user) {
		if (user != null) {
			return addressBookDao.findByUser(user);
		}
		return null;
	}
}
