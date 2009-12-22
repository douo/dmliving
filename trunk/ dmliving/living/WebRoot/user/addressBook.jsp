<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>New Entry : Deeply Madly Living: &quot;Cool&quot; living for the wild at heart</title>
<script type="text/javascript" src="js/login.js"></script>
</head>
<body id="addressbookBody">
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top"><!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <img src="images/account_mini_banner.gif" alt="My Account" title=" My Account " width="924" height="31" border="0" />
        <div class="centerColumn" id="addressBookDefault">
          <h1 id="addressBookDefaultHeading">My Address Book</h1>
          <br />
          <!-- messageStackWarning larger -->
          <c:if test="${addressError != null }">
          <div class="messageStackError larger">
		  <img height="20" width="20" title=" Error " alt="Error" src="images/icons/error.gif"/>
		  ${addressError }
		  </div>
		  </c:if>
          <c:if test="${addressMessage != null }">
          <div class="messageStackSuccess larger"><img src="images/icons/success.gif" alt="Success" title=" Success " width="20" height="20" />${addressMessage }</div>
          </c:if>
          <br class="clearBoth" />
          <!-- <div class="fieldset-label">Primary Address</div> -->
          <fieldset>
         	<legend>Primary Address</legend>
            <address class="back important" style="width: 200px;">
            ${user.companyName }<br />
            ${user.firstName } ${user.lastName }<br />
            ${user.streetAddress }<br />
            ${user.city }, ${user.postZipCode }<br />
            ${user.stateProvince }, ${user.country }
            </address>
            <div class="instructions">This address is used as the pre-selected shipping and billing address for orders placed with Deeply Madly Living.<br />
              <br />
              This address is also used as the base for product and service tax calculations.</div>
            <br class="clearBoth" />
          </fieldset>
          <br />
          <br />
          <!-- <div class="fieldset-label">Address Book Entries</div> -->
          <fieldset>
            <legend>Address Book Entries</legend>
            <div class="alert forward"><span class="coming"><strong>NOTE:</strong></span> A maximum of 5 address book entries allowed.</div>
            <br class="clearBoth" />
            <c:forEach var="addressBook" items="${addressBookList}">
            <!--  <h3 class="addressBookDefaultName">xilin chen&nbsp;(primary address)</h3> -->
            <div class="back" style="font-size: 14px;">${addressBook.firstName }&nbsp;${addressBook.lastName }&nbsp;<c:if test="${addressBook.isPrimary=='Y'}">(primary address)</c:if></div>
            <br class="clearBoth" />
            <address>
            ${addressBook.companyName }<br />
            ${addressBook.firstName }&nbsp;${addressBook.lastName }<br />
            ${addressBook.streetAddress }<br />
            ${addressBook.city }, ${addressBook.postZipCode }<br />
            ${addressBook.stateProvince }, ${addressBook.country }
            </address>
            <div class="buttonRow forward">
             <a href="address/editAddress.action?addressBook.addressbookId=${addressBook.addressbookId }"><img src="images/buttons/english/small_edit.gif" alt="Edit" title=" Edit " width="46" height="15" /></a>
             <a href="address/deleteAddressConfirm.action?addressBook.addressbookId=${addressBook.addressbookId }"><img src="images/buttons/english/button_delete_small.gif" alt="Delete" title=" Delete " width="46" height="15" /></a>
            </div>
            <br class="clearBoth" />
            </c:forEach>
            <div class="buttonRow back"><a href="address/NewAddress.action"><img src="images/buttons/english/button_add_address.gif" alt="Add Address" title=" Add Address " width="150" height="29" /></a></div>
          </fieldset>
          <!-- <div class="buttonRow back">
          <a href="/index.jsp?main_page=account">
			img src="images/buttons/english/button_back.gif" alt="Back" title=" Back " width="150" height="29" /></a></div> -->
          <br class="clearBoth" />
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>
