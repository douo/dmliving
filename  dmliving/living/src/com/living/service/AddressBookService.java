package com.living.service;

import java.io.Serializable;
import java.util.List;

import com.framework.service.BaseService;
import com.living.model.AddressBook;

public interface AddressBookService extends BaseService {
	List<AddressBook> findByUserId(Serializable userId);
}
