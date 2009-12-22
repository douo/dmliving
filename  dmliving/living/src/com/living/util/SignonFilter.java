package com.living.util;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 
 * @author C.donglin
 * @since 2009-12-22
 */
public class SignonFilter implements Filter {

	protected FilterConfig filterConfig;
	String Login_PAGE = "../AdminLogin.jsp";
	private String redirectURL = null;
    private List notCheckURLList = new ArrayList();
    private String sessionKey = null;

	
	public void destroy() {
		this.filterConfig = null;
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest hreq = (HttpServletRequest)request;
		HttpServletResponse hres = (HttpServletResponse)response;
		HttpSession session = hreq.getSession();
		if (session != null && session.getAttribute(Constants.SESSION_LOGIN) != null) {
			chain.doFilter(request, response);
		}
		else {
			hres.sendRedirect(Login_PAGE);
		}
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
		redirectURL = filterConfig.getInitParameter("redirectURL");
        sessionKey = filterConfig.getInitParameter("checkSessionKey");

        String notCheckURLListStr = filterConfig.getInitParameter("notCheckURLList");

        if (notCheckURLListStr != null) {
            StringTokenizer st = new StringTokenizer(notCheckURLListStr, ";");
            notCheckURLList.clear();
            while (st.hasMoreTokens()) {
                notCheckURLList.add(st.nextToken());
            }
        }

	}

}