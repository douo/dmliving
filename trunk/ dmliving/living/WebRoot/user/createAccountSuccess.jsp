<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: Your Account has been Created</title>
</head>
<body id="createaccountsuccessBody">
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top"><!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <img src="images/account_mini_banner.gif" alt="My Account" title=" My Account " width="924" height="31" border="0" />
        <div class="centerColumn" id="createAcctSuccess">
          <h1 id="createAcctSuccessHeading">Your Account has been Created</h1>
          <br />
          <div id="createAcctSuccessMainContent" class="content">Congratulations, your new account with Deeply Madly Living has been successfully created!<br />
            <br />
            You can now take advantage of member privileges to enhance your online shopping experience with us.<br />
            <br />
            A confirmation has been sent to the provided email address. If you have not received it within the hour, please <a href="/index.jsp?main_page=contact_us">Contact Us</a>.</div>
          <div class="account-header">Primary Address&nbsp;&nbsp;&nbsp; <a href="user/showPrimaryAdress.action"><img src="images/buttons/english/small_edit.gif" alt="Edit" title=" Edit " width="46" height="15" /></a> <a href="https://www.deeplymadlyliving.com/index.jsp?main_page=address_book_process&amp;delete=345"><img src="images/buttons/english/button_delete.gif" alt="Delete" title=" Delete " width="46" height="15" /></a><br class="clearBoth"/>
          </div>
          <!-- <legend>Primary Address</legend> -->
          <!-- <h3 class="addressBookDefaultName">xilin chen</h3> -->
          ${user.lastName } ${user.firstName }<br />
          <address>
          ${user.companyName }<br />
          ${user.lastName } ${user.firstName }<br />
          ${user.streetAddress }<br />
          ${user.city }, ${user.postZipCode }<br />
          ${user.stateProvince }, ${user.country }
          </address>
          <!-- <div class="buttonRow"><a href="https://www.deeplymadlyliving.com/index.jsp?main_page=address_book_process&amp;edit=345"><img src="buttons/english/small_edit.gif" alt="Edit" title=" Edit " width="46" height="15" /></a> <a href="https://www.deeplymadlyliving.com/index.jsp?main_page=address_book_process&amp;delete=345"><img src="buttons/english/button_delete.gif" alt="Delete" title=" Delete " width="46" height="15" /></a></div> -->
          <br class="clearBoth"/>
          <div class="buttonRow back"><a href="${basePath }"><img src="images/buttons/english/button_continue.gif" alt="Continue Checkout" title=" Continue Checkout " width="150" height="29" /></a></div>
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>
