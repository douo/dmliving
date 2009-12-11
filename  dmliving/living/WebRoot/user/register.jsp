<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
          <h1 id="loginDefaultHeading">Please Register Below</h1>
          <!--BOF normal login-->
          <br class="clearBoth" />
          <form name="create_account" action="user/register.action" method="post" onsubmit="return check_form(create_account);">
            <input type="hidden" name="email_pref_html" value="email_format" />
            <s:token />
            <br />
            <div class="fieldset-label">New Customer? Please provide your Billing Information</div>
            <!-- <legend>New Customer? Please provide your Billing Information</legend> -->
            <fieldset>
            <c:if test="${registerError!=null }">
	            <div class="messageStackError larger">
				<img height="20" width="20" title=" Error " alt="Error" src="images/icons/error.gif"/>
				${registerError }
				</div>
			</c:if>
              <!-- <div class="information"></div> -->
              <div class="alert back">* = required</div>
              <br class="clearBoth" />
              <div class="account-create-header">Company Details</div>
              <!-- <legend>Company Details</legend> -->
              <label class="inputLabel" for="company">Company Name:</label>
              <input type="text" name="user.companyName" size = "33" maxlength = "32" style="width: 270px;" id="company" />
              <div class="account-create-header">Address Details</div>
              <!-- <legend>Address Details</legend> -->
              <label class="inputLabel" for="firstname">First Name:</label>
              <input type="text" name="user.firstName" size = "33" maxlength = "32" style="width: 270px;" id="firstname" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="lastname">Last Name:</label>
              <input type="text" name="user.lastName" size = "33" maxlength = "32" style="width: 270px;" id="lastname" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="street-address">Address Line 1:</label>
              <input type="text" name="user.streetAddress" size = "41" maxlength= "64" style="width: 270px;" id="street-address" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="suburb">Address Line 2:</label>
              <input type="text" name="user.suburb" size = "33" maxlength = "32" style="width: 270px;" id="suburb" />
              <br class="clearBoth" />
              <label class="inputLabel" for="city">City:</label>
              <input type="text" name="user.city" size = "33" maxlength = "32" style="width: 270px;" id="city" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="state" id="stateLabel">State/Province:</label>
              <input type="text" name="user.stateProvince" value="" size = "33" maxlength = "32" style="width: 270px;" id="state" />
              <br class="clearBoth" />
              <label class="inputLabel" for="postcode">Post/Zip Code:</label>
              <input type="text" name="user.postZipCode" size = "11" maxlength = "10" style="width: 270px;" id="postcode" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="country">Country:</label>
              <select style="width: 276px;"  name="user.country" id="country" >
                <option value="">Please Choose Your Country</option>
                <option value="China">China</option>
                <option value="America">America</option>
              </select>
              <span class="alert">*</span><br class="clearBoth" />
              <div class="account-create-header">Additional Contact Details</div>
              <!-- <legend>Additional Contact Details</legend> -->
              <label class="inputLabel" for="telephone">Telephone:</label>
              <input type="text" name="user.phone" size = "33" maxlength = "32" style="width: 270px;" id="telephone" />
              <span class="alert">*</span>
              <div class="account-create-header">Login Details</div>
              Create a login profile with Deeply Madly Living to shop faster, track the status of your current orders and review your previous orders.<br />
              <br />
              <!-- <legend>Login Details</legend> -->
              <label class="inputLabel" for="email-address">Email Address:</label>
              <input type="text" name="user.email" size = "41" maxlength= "96" style="width: 270px;" id="email-address" />
              <span class="alert">*</span><br class="clearBoth" />
              <label class="inputLabel" for="password-new">Password:</label>
              <input type="password" name="user.password" size = "21" maxlength= "40" style="width: 270px;" id="password-new" />
              <span class="alert">* (at least 5 characters)</span><br class="clearBoth" />
              <label class="inputLabel" for="password-confirm">Confirm Password:</label>
              <input type="password" name="confirmation" size = "21" maxlength= "40" style="width: 270px;" id="password-confirm" />
              <span class="alert">*</span><br class="clearBoth" />
              <div class="account-create-header">Newsletter</div>
              <!-- <legend>Newsletter</legend> -->
              <input type="checkbox" name="user.isnewsletter" value="1" id="newsletter-checkbox" />
              <label class="checkboxLabel" for="newsletter-checkbox">Subscribe to Our Newsletter.</label>
              <br class="clearBoth" />
              <input type="radio" name="email_format" value="HTML" id="email-format-html" />
              <label class="radioButtonLabel" for="email-format-html">HTML</label>
              <input type="radio" name="email_format" value="TEXT" checked="checked" id="email-format-text" />
              <label class="radioButtonLabel" for="email-format-text">TEXT-Only</label>
              <br class="clearBoth" />
              <br />
              <div class="buttonRow back">
                <input type="image" src="images/button_submit.gif" alt="Submit" title=" Submit " />
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
