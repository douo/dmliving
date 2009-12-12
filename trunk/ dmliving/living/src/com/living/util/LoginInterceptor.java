package com.living.util;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.StrutsStatics;

import com.opensymphony.xwork2.ActionContext;
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

	@SuppressWarnings("unchecked")
	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		/*HttpServletRequest request = ServletActionContext.getRequest();
		HttpSession session = request.getSession();*/
		ActionContext actionContext = invocation.getInvocationContext();
		HttpServletRequest request = (HttpServletRequest) actionContext.get(StrutsStatics.HTTP_REQUEST);
		Map session = actionContext.getSession();
		
		// 如果登陆则不做拦截处理
		if (session != null && session.get(Constants.SESSION_LOGIN) != null) {
			return invocation.invoke();
		}
		
		/*Cookie[] cookies = request.getCookies();    
        if (cookies!=null) {    
            for (Cookie cookie : cookies) {    
                if (COOKIE_REMEMBERME_KEY.equals(cookie.getName())) {    
                    String value = cookie.getValue();    
                    if (StringUtils.isNotBlank(value)) {    
                        String[] split = value.split("==");    
                        String userName = split[0];    
                        String password = split[1];    
                        try {    
                            User user = userDao    
                                    .attemptLogin(userName, password);    
                            session.put(USER_SESSION_KEY, user);    
                        } catch (UserNotFoundException e) {    
                            setGoingToURL(session, invocation);    
                            return "login";    
                        }    
                    } else {    
                        setGoingToURL(session, invocation);    
                        return "login";    
                    }    
                    return invocation.invoke();    
                }    
            }    
        }*/
		
		// 设置原请求地址
		// setGoingToURL(request, session, invocation);
		log.info("Going to login...");
		setGoingToURL(request, session, invocation);
		return "login";
	}
	
	/**
	 * 设置登陆前页面URL
	 * @param session
	 * @param invocation
	 */
	@SuppressWarnings("unchecked")
	//private void setGoingToURL(HttpServletRequest request,HttpSession session,ActionInvocation invocation) {
	private void setGoingToURL(HttpServletRequest request, Map session, ActionInvocation invocation) {
		// 如果referer不为空 直接使用它。如果为空我们分别获得命名空间，action名,以及请求参数重新构造成一个URL保存在session中
		/*String url = request.getHeader("referer");
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
		session.setAttribute(Constants.GOTO_URL_KEY, url);*/
		
		String url = "";
		String nameSpace = invocation.getProxy().getNamespace();
		String actionName = invocation.getProxy().getActionName();
		if (StringUtils.isNotBlank(nameSpace) && !nameSpace.equals("/")) {
			url += nameSpace;
		}
		if (StringUtils.isNotBlank(actionName)) {
			url += "/" + actionName + ".action";
		}
		log.info("待转向URL: " + url);
		session.put(Constants.GOTO_URL_KEY, url);
	}

}
