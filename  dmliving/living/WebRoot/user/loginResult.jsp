<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.living.util.Constants"%>
<%
	String goToUrl = (String) session.getAttribute(Constants.GOTO_URL_KEY);
	if (goToUrl != null) {
		response.sendRedirect(goToUrl);
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登陆成功</title>
</head>
<body>

</body>
</html>