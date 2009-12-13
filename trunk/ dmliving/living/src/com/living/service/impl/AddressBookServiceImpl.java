package com.living.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.AddressBookDao;
import com.living.model.AddressBook;
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
	public List<AddressBook> findByUserId(Serializable userId) {
		try {
			List<AddressBook> addressBook = addressBookDao.findByUserId(userId);
			return addressBook;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
