package com.living.action;

import java.util.List;

import com.living.model.AddressBook;
import com.living.model.User;
import com.living.util.Constants;
import com.living.webapp.action.BaseAction;

public class AddressBookAcion extends BaseAction {
	private static final long serialVersionUID = -1185904818789252320L;
	
	private AddressBook addressBook;
	private List<AddressBook> addressBookList;
	private User user;
	private String actionForm;
	
	/**
	 * 显示用户首要地址
	 * @return
	 */
	public String showPrimaryAdress() {
		return SUCCESS;
	}

	/**
	 * 查看用户地址
	 * @return
	 */
	public String viewAddressBook() {
		user = (User) getSession().getAttribute(Constants.SESSION_LOGIN);
		addressBookList = addressBookService.findByUserId(user.getUserId());
		return SUCCESS;
	}
	
	/**
	 * 增加用户地址
	 * @return
	 */
	public String saveAddress() {
		if (addressBook != null) {
			user = (User) getSession().getAttribute(Constants.SESSION_LOGIN);
			addressBook.setUser(user);
			addressBook = (AddressBook) addressBookService.save(addressBook);
			if (addressBook != null) {
				getRequest().setAttribute("addressMessage", "Your address book has been successfully updated.");
				return SUCCESS;
			}
		}
		return INPUT;
	}
	
	/**
	 * 更新用户地址
	 * @return
	 */
	public String updateAddress() {
		user = (User) getSession().getAttribute(Constants.SESSION_LOGIN);
		addressBook.setUser(user);
		addressBook = (AddressBook) addressBookService.update(addressBook);
		if (addressBook != null) {
			getRequest().setAttribute("addressMessage", "Your address book has been successfully added.");
			return SUCCESS;
		}
		return INPUT;
	}
	
	/**
	 * 查看指定ID的用户地址
	 * @return
	 */
	public String viewAddress() {
		addressBook = (AddressBook) addressBookService.findById(addressBook.getAddressbookId());
		return SUCCESS;
	}
	
	/**
	 * 删除指定ID的用户地址
	 * @return
	 */
	public String deleteAddress() {
		if (addressBook != null) {
			addressBook = (AddressBook) addressBookService.findById(addressBook.getAddressbookId());
			if (Constants.ADDRESS_PRIMARY_YES.equals(addressBook.getIsPrimary())) {
				getRequest().removeAttribute("addressMessage");
				getRequest().setAttribute("addressError", "The primary address cannot be deleted. Please set another address as the primary address and try again.");
				return SUCCESS;
			}
			if (addressBookService.delete(addressBook)) {
				getRequest().removeAttribute("addressError");
				getRequest().setAttribute("addressMessage", " Your address book has been successfully updated.");
				return SUCCESS;
			}
		}
		return INPUT;
	}
	

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<AddressBook> getAddressBookList() {
		return addressBookList;
	}

	public void setAddressBookList(List<AddressBook> addressBookList) {
		this.addressBookList = addressBookList;
	}

	public AddressBook getAddressBook() {
		return addressBook;
	}

	public void setAddressBook(AddressBook addressBook) {
		this.addressBook = addressBook;
	}

	public String getActionForm() {
		return actionForm;
	}

	public void setActionForm(String actionForm) {
		this.actionForm = actionForm;
	}

}
