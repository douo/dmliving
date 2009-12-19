package com.living.webapp.action;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.living.model.User;
import com.living.service.AddressBookService;
import com.living.service.UserService;
import com.living.util.Constants;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport {

	private static final long serialVersionUID = 8652138522043213801L;

	protected final Logger logger=Logger.getLogger(getClass());
	
	protected ApplicationContext ctx = null;

	protected int start=0;
	protected int limit=10;
	protected int totalProperty=-1;

	protected boolean success=true;
	
	public static final String  LIST="list";
	public static final String NEXT="next";
	
	protected String inputAction;
	protected String nextAction;
	protected String nameSpace;
	
	public User getLoginUser(){
		return (User) getSession().getAttribute(Constants.SESSION_LOGIN);
	}
	
	public String getNameSpace() {
		return nameSpace;
	}

	public void setNameSpace(String nameSpace) {
		this.nameSpace = nameSpace;
	}
	
	public HttpServletRequest getRequest(){
		return ServletActionContext.getRequest();
	}
	
	public HttpServletResponse getResponse(){
		return ServletActionContext.getResponse();
	}
	
	public HttpSession getSession(){
		return getRequest().getSession();
	}
	
	public ServletContext getServletContext(){
		return ServletActionContext.getServletContext();
	}
	
	public String getRealyPath(String path){
		return getServletContext().getRealPath(path);
	}
	
	public Object getBean(String name) {
        if (ctx == null) {
            ctx = WebApplicationContextUtils.getRequiredWebApplicationContext(getServletContext());
        }
        return ctx.getBean(name);
    }
	
/*	public void cleanCookies(){
		Cookie[] cookies=getRequest().getCookies();	
		for (Cookie cookie : cookies) {
			cookie.setMaxAge(0);
		}
	}*/
	
	public String getInputAction() {
		return inputAction;
	}
	public void setInputAction(String inputAction) {
		this.inputAction = inputAction;
	}
	public String getNextAction() {
		return nextAction;
	}
	public void setNextAction(String nextAction) {
		this.nextAction = nextAction;
	}

	public int getStart() {
		return start;
	}

	public void setStart(int start) {
		this.start = start;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}
	
	public int getTotalProperty() {
		return totalProperty;
	}

	public void setTotalProperty(int totalProperty) {
		this.totalProperty = totalProperty;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}
	
	@Autowired
	protected UserService userService;
	
	@Autowired
	protected AddressBookService addressBookService;
	
}
