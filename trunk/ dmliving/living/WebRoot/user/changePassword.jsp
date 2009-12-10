<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: My Account Password</title>
<script type="text/javascript" src="js/login.js"></script>
</head>
<body id="accountpasswordBody">
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top"><!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <img src="images/account_mini_banner.gif" alt="My Account" title=" My Account " width="924" height="31" border="0" />
        <div class="centerColumn" id="accountPassword">
          <form name="account_password" action="/index.jsp?main_page=account_password" method="post" onsubmit="return check_form(account_password);">
            <input type="hidden" name="action" value="process" />
            <h1>My Account Password</h1>
            <fieldset>
              <!-- <legend>My Account Password</legend>
 -->
              <div class="alert back">* = required</div>
              <br class="clearBoth" />
              <label class="inputLabel" for="password-current" style="padding-bottom: 9px;">Current Password:</label>
              <input type="password" name="password_current" id="password-current" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="password-new" style="padding-bottom: 9px;">New Password:</label>
              <input type="password" name="password_new" id="password-new" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="password-confirm" style="padding-bottom: 9px;">Confirm Password:</label>
              <input type="password" name="password_confirmation" id="password-confirm" />
              <span class="alert">*</span><br class="clearBoth" />
              <br />
              <div class="buttonRow back">
                <input type="image" src="images/buttons/english/button_submit.gif" alt="Submit" title=" Submit " />
              </div>
              <!-- <div class="buttonRow back"><a href="/index.jsp?main_page=account"><img src="buttons/english/button_back.gif" alt="Back" title=" Back " width="150" height="29" /></a></div>
 -->
            </fieldset>
          </form>
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>
