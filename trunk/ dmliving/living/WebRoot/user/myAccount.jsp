<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: My Account</title>
</head>
<body id="accountBody">
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top">
      <!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <img src="images/account_mini_banner.gif" alt="My Account" title=" My Account " width="924" height="31" border="0" />
        <div class="centerColumn" id="accountDefault"> <br />
          <h1 id="accountDefaultHeading">My Account</h1>
          <c:if test="${accountMessage != null}">
          <div class="messageStackSuccess larger">
		  <img height="20" width="20" title=" Success " alt="Success" src="images/icons/success.gif"/>
		  ${accountMessage }
		  </div>
		  </c:if>
          <br />
          <br />
          <br class="clearBoth" />
          <!-- <div id="accountLinksWrapper" class="back"> -->
          <div class="account-header">My Account</div>
          <!-- <h2>My Account</h2> -->
          <a href="user/viewAccount.action">View or change my account information.</a><br />
          <a href="address/viewAddressBook.action">View or change entries in my address book.</a><br />
          <a href="/index.jsp?main_page=account_password">Change my account password.</a><br />
          <br />
          <br />
          <div class="account-header">Newsletter</div>
          <!-- <h2>Newsletter</h2>  -->
          <a href="/index.jsp?main_page=account_newsletters">Subscribe or unsubscribe from newsletter.</a><br />
          <!-- </div> -->
          <br class="clearBoth" />
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>
