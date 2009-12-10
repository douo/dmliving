<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: My Account Information</title>
</head>
<body id="accounteditBody">
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top"><!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <img src="images/account_mini_banner.gif" alt="My Account" title=" My Account " width="924" height="31" border="0" />
        <div class="centerColumn" id="accountEditDefault">
          <form name="account_edit" action="/index.jsp?main_page=account_edit" method="post" onsubmit="return check_form(account_edit);">
            <input type="hidden" name="action" value="process" />
            <!--  <div class="fieldset-label">My Account Information</div> -->
            <h1>My Account Information</h1>
            <br />
            <fieldset>
              <!-- <legend>My Account Information</legend>
 -->
              <div class="alert forward">* = required</div>
              <br class="clearBoth" />
              <label class="inputLabel" for="firstname">First Name:</label>
              <input type="text" name="firstname" value="xilin" id="firstname" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="lastname">Last Name:</label>
              <input type="text" name="lastname" value="chen" id="lastname" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="email-address">Email Address:</label>
              <input type="text" name="email_address" value="1032894940@qq.com" id="email-address" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="telephone">Telephone:</label>
              <input type="text" name="telephone" value="8913800138000" id="telephone" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="fax">Fax Number:</label>
              <input type="text" name="fax" id="fax" />
              <br class="clearBoth" />
              <!-- PJRN FIX - TO MOVE THE SUBMIT BUTTON HERE -->
              <div class="buttonRow back">
                <input type="image" src="images/buttons/english/button_update.gif" alt="Update" title=" Update " />
              </div>
            </fieldset>
            <br />
            <br />
          </form>
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>