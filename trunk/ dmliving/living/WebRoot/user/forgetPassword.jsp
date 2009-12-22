<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: Forgot your Password?</title>
<script type="text/javascript" src="js/login.js"></script>
</head>
<body id="passwordforgottenBody">
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top"><!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <div class="centerColumn" id="passwordForgotten">
          <form name="password_forgotten" action="user/findPassword.action" method="post">
          <c:if test="${getPswError != null}">
          <div class="messageStackError larger">
			<img height="20" width="20" title=" Error " alt="Error" src="images/icons/error.gif"/>
			${getPswError }
			</div>
			</c:if>
            <br />
            <span class='fieldset-label'>Forgot your Password?</span>
            <fieldset>
              <div id="passwordForgottenMainContent" class="content">Enter your e-mail address below and we will send you an e-mail with your new password immediately.</div>
              <!-- <div class="alert forward">* = required</div> -->
              <br class="clearBoth" />
              <label for="email-address">Email Address:</label>
              <input type="text" name="user.email" size = "41" maxlength= "96" id="email-address" />
              &nbsp;<span class="alert">*</span><br class="clearBoth" />
              <br />
              <div class="buttonRow back">
                <input type="image" src="images/buttons/english/button_submit.gif" alt="Submit" title=" Submit " />
              </div>
            </fieldset>
            <!-- <div class="buttonRow back"><a href="http://www.deeplymadlyliving.com/index.jsp?main_page=index"><img src="includes/templates/dml/buttons/english/button_back.gif" alt="Back" title=" Back " width="150" height="29" /></a></div> -->
          </form>
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>
