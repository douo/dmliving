package com.living.service;

import com.framework.service.BaseService;
import com.living.model.AddressBook;
import com.living.model.User;

public interface AddressBookService extends BaseService {
	AddressBook findByUser(User user);
}
