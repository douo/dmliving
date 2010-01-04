<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en">
<head>
<base href="${basePath }" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin Login</title>
<link href="css/admin.css" rel="stylesheet" type="text/css" />
</head>
<body id="login" onload="document.getElementById('admin_name').focus()">
<form name="login" action="admin/adminLogin.action" method="post">
  <fieldset>
    <legend>Admin Login</legend>
    <label class="loginLabel" for="admin_name">Admin Username:</label>
    <input style="float: left" type="text" id="admin_name" name="user.email" value="" />
    <br class="clearBoth" />
    <label  class="loginLabel" for="admin_pass">Admin Password:</label>
    <input style="float: left" type="password" id="admin_pass" name="user.password" value="" />
    <br class="clearBoth" />
    <span style="color:#F00">${loginError }</span>
    <input type="submit" name="submit" class="button" value="Login" />
    <a style="float: right;" href="#">Resend Password</a>
  </fieldset>
</form>
</body>
</html>
