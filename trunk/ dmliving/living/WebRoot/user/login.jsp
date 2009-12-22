<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="en">
<head>
<title>Deeply Madly Living: Sign In or Register Below</title>
<script type="text/javascript" src="js/login.js"></script>
</head>
<body id="loginBody" onload="update_zone(document.create_account);">
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top">
      <!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <div class="centerColumn" id="loginDefault"> <br />
          <h1 id="loginDefaultHeading">Sign In  Below</h1>
          <br />
          <c:if test="${loginMsg != null}">
          <div class="messageStackSuccess larger">
          <img src="images/icons/success.gif" alt="Success" title=" Success " width="20" height="20" />
          ${loginMsg }</div>
          </c:if>
          <c:if test="${loginError != null }">
          <div class="messageStackError larger">
		  <img height="20" width="20" title=" Error " alt="Error" src="images/icons/error.gif"/>
		  ${loginError }
		  </div>
		  <br/>
		  </c:if>
          <!--BOF normal login-->
          <form name="login" action="user/login.action" method="post" onsubmit="return check_login(login);">
            <div class="fieldset-label">Returning Customer? Please Sign In</div>
            <fieldset>
              <!-- <legend>Returning Customer? Please Sign In</legend> -->
              <label class="inputLabel" for="login-email-address">Email Address:</label>
              <input type="text" name="user.email" size = "41" maxlength= "96" id="login-email-address" />
              <br class="clearBoth" />
              <label class="inputLabel" for="login-password">Password:</label>
              <input type="password" name="user.password" size = "41" maxlength = "40" id="login-password" />
              <div class="buttonRow back important" style="width: 600px;">
              <a href="user/forgotPassword.action">Forgot your password?</a>
              </div>
              <br class="clearBoth" />
              <div class="buttonRow back ">
                <input type="image" src="images/buttons/english/button_login.gif" alt="Login" title=" Login " />
              </div>
              <div class="buttonRow back " style="margin-left: 10px;">
                <a href="user/createAccount.action"><img src="images/buttons/english/button_register.gif" alt="Register" title=" Register "/></a>
              </div>
            </fieldset>
          </form>
          <!--EOF normal login-->
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>
