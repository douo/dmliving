<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">

<HTML dir=ltr lang=en xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>Deeply Madly Living: My Account Information</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><style type="text/css">
<!--
body {
	background-color: #000000;
}
.STYLE1 {color: #FFFFFF}
.STYLE2 {color: #FF0000}
-->
</style>
</head>
<BODY id=accountBody>
<DIV id=mainWrapper>
<DIV id=layout-content>
<TABLE id=contentMainWrapper border=0 cellSpacing=0 cellPadding=0 
  width="100%"><TBODY>
  <TR>
    <TD vAlign=top bgcolor="#000000"><img src="account_mini_banner.gif" width="924" height="31">
      <DIV id=accountEditDefault class=centerColumn>
      <H1 class="STYLE1">My Account Information</H1>
      <BR>
      <table>
	  <form action="account_edit" name=form>
      <DIV class="alert forward STYLE2">* = required</DIV>
	  <tr><td><span class="STYLE1">First Name:</span></td>
	  <td><input type="text" name="newFirstName"
	   value=<jsp:getProperty name="userRegister" property="name"/>></td> 
	  </tr> <br>
	  <tr><td><span class="STYLE1">Last Name:</span></td>
	  <td><input type="text" name="newLastName"
	 value=<jsp:getProperty name="userRegister" property="name"/>></td> </tr> <br>
	   <tr><td><span class="STYLE1">Email Adreess:</span></td>
	   <td><input type="text" name="Email Adreess"
	 value=<jsp:getProperty name="userRegister" property="newEmailAdreess"/>></td> </tr> <br>
	    <tr><td><span class="STYLE1">Telephone:</span></td>
	    <td><input type="text" name="Email Adreess"
	 value=<jsp:getProperty name="userRegister" property="Telephone"/>></td> </tr> <br>
	    <tr><td><span class="STYLE1">Fax Number:</span></td>
	    <td><input type="text" name="newFaxNumber"
	 value=<jsp:getProperty name="userRegister" property="Fax Number"/>></td> </tr> 
	 </table>
      <DIV class="buttonRow back"><img src="button_update[1].gif" width="150" height="29"></DIV>
      <BR><BR></TBODY>
	  </body>
</HTML>
