package com.living.webapp.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

public class BasePathListener implements ServletRequestListener  {

	public void requestDestroyed(ServletRequestEvent arg0) {
	}

	public void requestInitialized(ServletRequestEvent even) {
		HttpServletRequest request=(HttpServletRequest) even.getServletRequest();
		String path =(request.getSession().getServletContext()).getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
		request.setAttribute("basePath",basePath);		
	}

}
