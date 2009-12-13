<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isErrorPage="true"%>
<%@ include file="/includes/jsp-tags.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Errors</title>
</head>
<body>
<div id="layout-content">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
  <tr>
    <td valign="top">
<!-- bof  breadcrumb -->
<!-- eof breadcrumb -->
<!-- bof upload alerts -->
<!-- eof upload alerts -->
<div class="centerColumn" id="logoffDefault">
<br />
<h2>Server error occurred as follows</h2>
<div class="messageStackError larger">
<img height="20" width="20" title=" Error " alt="Error" src="images/icons/error.gif"/>
<s:actionerror/>
<s:fielderror/>
<br/>
${exception }
</div>
<s:debug/>
</div>
</td>
  </tr>
</table>
</div>
</body>
</html>