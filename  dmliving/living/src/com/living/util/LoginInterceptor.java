package com.living.util;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

/**
 * 登陆拦截器, 处理登陆前页面URL
 * @author MAGICALBOY
 *
 */
public class LoginInterceptor extends MethodFilterInterceptor {
	private static final long serialVersionUID = -2779963796175114641L;
	
	private static final Logger log = Logger.getLogger(LoginInterceptor.class);

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();
		// 判断用户是否登陆
		if (session != null && session.getAttribute(Constants.SESSION_LOGIN) != null) {
			return invocation.invoke();
		}
		// 设置原请求地址
		setGoingToURL(request, session, invocation);
		return invocation.invoke();
	}
	
	/**
	 * 设置登陆前页面URL
	 * @param request
	 * @param session
	 * @param invocation
	 */
	@SuppressWarnings("unchecked")
	private void setGoingToURL(HttpServletRequest request,HttpSession session,ActionInvocation invocation) {
		// 如果referer不为空 直接使用它。如果为空我们分别获得命名空间，action名,以及请求参数重新构造成一个URL保存在session中
		String url = request.getHeader("referer");
		if (url == null || "".equals(url)) {
			url = "";
			String path = request.getContextPath();
			String actionName = invocation.getProxy().getActionName();
			String nameSpace = invocation.getProxy().getNamespace();
			if (nameSpace != null && !nameSpace.trim().equals("")) {
				url = url + path + nameSpace;
			}
			if (actionName != null && !actionName.trim().equals("")) {
				url = url + "/" + actionName + ".action" + "?";
			}
			Map<String, String[]> parMap = request.getParameterMap();
			if (parMap != null) {
				for (String str : parMap.keySet()) {
					String[] value = parMap.get(str);
					for(String val : value) {
						url += url + str + "=" + val +"&";
					}
				}
			}
			log.info("完整URL:" + url);
		}
		
		// TODO 在这里写例外URL
		
		log.info("待转向URL: " + url);
		session.setAttribute(Constants.GOTO_URL_KEY, url);
	}

}
