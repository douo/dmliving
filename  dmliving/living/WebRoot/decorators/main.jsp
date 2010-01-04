<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.living.util.*" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="${basePath }" />
<title>
<decorator:title default="INTRANET" />
</title>
<decorator:head />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@ include file="/includes/style.jsp" %>
</head>
<body id="indexBody">
<div id="mainWrapper">
  <a name="very_top"></a>
  <!-- the FEATURING overlay -->
  <!-- <div id="featuring-overlay"><a href="index.php?main_page=index&cPath=2"><img  alt="Featuring Products" src="/images/featuring_nav.gif"></a></div> -->
  <center>
    <script type="text/javascript" src="flash/swfobject.js"></script>
    <div id="layout-header">
      <div id="layout-header-logo"><a href="."><img src="images/<%="/index.jsp".equals(request.getServletPath())? "homepage_dml_logo.gif" : "header_dml_logo.gif" %>" alt="Deeply Madly Living Home" title=" Deeply Madly Living Home " width="234" border="0" /></a> </div>
      <div id="layout-header-nav">
        <table align="right" width="100%" border="0" cellpadding="0" cellspacing="0" height="34">
          <tr>
            <td>&nbsp;&nbsp;</td>
            <td width="140" align="center" background="images/phone_number.gif"><strong>UA-12191306-1</strong></td>
            <td bgcolor="#333333" align="center" width="40%"><a href="user/myAccount.action">my account</a> &nbsp;|&nbsp; <%=request.getSession().getAttribute(Constants.SESSION_LOGIN)==null ? "<a href='user/login.action'>login</a>" : "<a href='user/logout.action'>logout</a>" %> &nbsp;|&nbsp; 
            <a href="car/viewCar.action">
            <c:if test="${not hasProduct}"><img src="images/shopping_cart_empty.gif" alt="" width="20" height="12" align="absbottom" /></c:if>
            <c:if test="${hasProduct}"><img src="images/shopping_cart_full.gif" alt="" width="20" height="12" align="absbottom" /></c:if>
            </a> &nbsp;<a href="car/viewCar.action" class="green-link">shopping cart</a>
              <!-- (<?= $items_in_bag ?>) --></td>
            <td align="right" width="230" background="images/search_bg.gif"><b>search</b>
              <form name="quick_find_header" action="product/searchProduct.action" method="get">
                <input type="text" name="keyword" size="6" maxlength="30" style="width: 100px" value="Enter search keywords here" onFocus="if (this.value == 'Enter search keywords here') this.value = '';" onBlur="if (this.value == '') this.value = 'Enter search keywords here';" />
                &nbsp;
                <input type="image" value="HEADER_SEARCH_BUTTON" src="images/search_go_button.gif" align="absbottom" style="width: 24; height:20px; padding-bottom:-120px" alt="GO" />
              </form>
              <!--bof-header ezpage links-->
              &nbsp; &nbsp; </td>
          </tr>
        </table>
        <div style="clear:both;">
          <!--eof-header ezpage links-->
          <!--bof-drop down menu display-->
          <!-- menu area -->
          <div id="dropMenuWrapper">
            <div id="dropMenu">
              <ul class="level1">
              ${treeNode }
                <li class="submenu-purple"><a href="." target="_blank"><img src="images/dmlnav_dmd_design_link.jpg" border="0" /></a></li>
              </ul>
            </div>
          </div>
          <div class="clearBoth"></div>
          <!--eof-drop down menu display-->
        </div>
      </div>
    </div>
    <!-- EOF layout-header -->
    <div class="clearBoth"></div>
    <decorator:body />
    <%@ include file="/includes/footer.jsp" %>
  </center>
</div>
<script src=" https://ssl.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-12191306-1";
urchinTracker();
</script>
<!--bof- parse time display -->
<!--eof- parse time display -->
<!--bof- banner #6 display -->
<!--eof- banner #6 display -->
<script type="text/javascript">window.status = "Done";</script>
</body>
</html>