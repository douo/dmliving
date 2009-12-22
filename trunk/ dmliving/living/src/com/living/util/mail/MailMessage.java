package com.living.util.mail;

import org.springframework.mail.SimpleMailMessage;

/**
 * a simple mail message, 
 * including data such as the from, to, cc, subject, and text fields. 
 * @author C.donglin
 * @since 2009-12-21
 */
public class MailMessage extends SimpleMailMessage {
	private static final long serialVersionUID = -2004866280365770312L;

	/**
	 * 收件人
	 */
	public void setTo(String to) {
		super.setTo(to);
	}
	
	/**
	 * 收件人,多个
	 */
	public void setTo(String[] to) {
		super.setTo(to);
	}
}
