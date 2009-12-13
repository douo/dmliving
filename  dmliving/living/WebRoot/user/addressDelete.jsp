<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>New Entry : Deeply Madly Living: &quot;Cool&quot; living for the wild at heart</title>
<script type="text/javascript" src="js/login.js"></script>
</head>
<body id="addressbookprocessBody" onload="update_zone(document.addressbook);">
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top"><!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <img src="images/account_mini_banner.gif" alt="My Account" title=" My Account " width="924" height="31" border=0 />
        <div id="addressBookDefault" class="centerColumn">
          <h1>Delete Address Book Entry</h1>
          <br/>
          <div class="alert">Are you sure you would like to delete the selected address from your address book?</div>
          <address>
          ${addressBook.companyName }<br />
          ${addressBook.firstName }&nbsp;${addressBook.lastName }<br />
          ${addressBook.streetAddress }<br />
          ${addressBook.city }, ${addressBook.postZipCode }<br />
          ${addressBook.stateProvince }, ${addressBook.country }
          </address>
          <br class="clearBoth"/>
          <div class="buttonRow forward"><a href="address/deleteAddress.action?addressBook.addressbookId=${addressBook.addressbookId }"><img height="15" width="46" title=" Delete " alt="Delete" src="images/buttons/english/button_delete.gif"/></a></div>
          <div class="buttonRow back"><a href="" onclick="javascript:history.back(-1);return false;"><img height="29" width="150" title=" Back " alt="Back" src="images/buttons/english/button_back.gif"/></a></div>
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>
