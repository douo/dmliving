<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
      <img src="images/account_mini_banner.gif" alt="My Account" title=" My Account " width="924" height="31" border="0" />
      <form name="addressbook" action="/index.jsp?main_page=address_book_process&amp;edit=345" method="post" onsubmit="return check_form(addressbook);">
        <div class="centerColumn" id="addressBookDefault">
          <h1>Update Address Book Entry</h1>
        <br />
        <fieldset>
          <legend>Address Details</legend>
          <div class="alert forward">* = required</div>
          <br class="clearBoth" />
          <label class="inputLabel" for="firstname">First Name:</label>
          <input type="text" name="user.firstName" value="${user.firstName }" size = "33" maxlength = "32" style="width: 276px;" id="firstname" />
          <span class="alert">*</span><br class="clearBoth" />
          <label class="inputLabel" for="lastname">Last Name:</label>
          <input type="text" name="user.lastName" value="${user.lastName }" size = "33" maxlength = "32" style="width: 276px;" id="lastname" />
          <span class="alert">*</span><br class="clearBoth" />
          <label class="inputLabel" for="company">Company Name:</label>
          <input type="text" name="company" value="${user.companyName }" size = "33" maxlength = "32" style="width: 276px;" id="company" />
          <br class="clearBoth" />
          <label class="inputLabel" for="street-address">Address Line 1:</label>
          <input type="text" name="user.streetAddress" value="${user.streetAddress }" size = "41" maxlength= "64" style="width: 276px;"  id="street-address" />
          <span class="alert">*</span><br class="clearBoth" />
          <label class="inputLabel" for="suburb">Address Line 2:</label>
          <input type="text" name="suburb" value="${user.suburb }" size = "33" maxlength = "32" style="width: 276px;" id="suburb" />
          <br class="clearBoth" />
          <label class="inputLabel" for="city">City:</label>
          <input type="text" name="user.city" value="${user.city }" size = "33" maxlength = "32" style="width: 276px;" id="city" />
          <span class="alert">*</span><br class="clearBoth" />
          <label class="inputLabel" for="state" id="stateLabel">State/Province:</label>
          <input type="text" name="state" value="${user.stateProvince }" size = "33" maxlength = "32" style="width: 276px;" id="state" />
          <input type="hidden" name="zone_id" value="${user.stateProvince }" />
          <br class="clearBoth" />
          <label class="inputLabel" for="postcode">Post/Zip Code:</label>
          <input type="text" name="user.postZipCode" value="${user.postZipCode }" size = "11" maxlength = "10" style="width: 276px;" id="postcode" />
          <span class="alert">*</span><br class="clearBoth" />
          <label class="inputLabel" for="country">Country:</label>
          <select style="width: 282px;"  name="country" id="country" >
            <option value="">Please Choose Your Country</option>
            <option value="1">China</option>
            <option value="2">American</option>
          </select>
          <span class="alert">*</span><br class="clearBoth" />
        </fieldset>
        <br class="clearBoth" />
        <div class="buttonRow forward">
          <input type="image" src="images/buttons/english/button_update.gif" alt="Update" title=" Update " />
        </div>
        <div class="buttonRow back"><a href="" onclick="javascript:history.back(-1);return false;"><img src="images/buttons/english/button_back.gif" alt="Back" title=" Back " width="150" height="29" /></a></div>
		</div>      
      </form>
      </td>
  </tr>
</table>
</div>
</body>
</html>
