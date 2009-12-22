package com.living.util.mail;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

/**
 * 邮件发送器
 * @author C.donglin
 * @since 2009-12-20
 */
public class EmailSender {
	protected static final Log log = LogFactory.getLog(EmailSender.class);
	private static MailSender mailSender;
	private static SimpleMailMessage simpleMailMessage;
	
	public EmailSender() {
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("resource/mail-cofing/mail.xml");
		mailSender = (MailSender) applicationContext.getBean("mailSender");
		simpleMailMessage = (SimpleMailMessage) applicationContext.getBean("mailMessage");
	}
	
	/**
	 * 发送邮件
	 * @author C.donglin
	 * @since 2009-12-22
	 * @param to 收件人(可多个)
	 * @param subject 主题
	 * @param text 内容
	 */
	public void sendMail(String[] to, String subject, String text){
		simpleMailMessage.setTo(to);
		simpleMailMessage.setSubject(subject);
		simpleMailMessage.setText(text);
		mailSender.send(simpleMailMessage);
	}
	
}
