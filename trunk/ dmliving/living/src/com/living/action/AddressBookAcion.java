package com.living.action;

import com.living.model.AddressBook;
import com.living.model.User;
import com.living.util.Constants;
import com.living.webapp.action.BaseAction;

public class AddressBookAcion extends BaseAction {
	private static final long serialVersionUID = -1185904818789252320L;
	
	private AddressBook addressBook;
	
	/**
	 * 显示用户首要地址
	 * @return
	 */
	public String showPrimaryAdress() {
		User user = (User) getSession().getAttribute(Constants.SESSION_LOGIN);
		addressBook = addressBookService.findByUser(user);
		/*if (addressBook != null) {
			return SUCCESS;
		}*/
		return SUCCESS;
	}

	public AddressBook getAddressBook() {
		return addressBook;
	}

	public void setAddressBook(AddressBook addressBook) {
		this.addressBook = addressBook;
	}

}
