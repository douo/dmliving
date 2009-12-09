<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style type="text/css" media="screen">
	.categoryListBoxContents { background-color: #0ce39f; }.centerBoxContentsProducts { background-color: #0ce39f; }.centerBoxContentsProducts { background: url(images/search_product_bg.gif); }
</style>
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
            <td width="140" align="center" background="images/phone_number.gif"><strong>1-646-429-9335</strong></td>
            <td bgcolor="#333333" align="center" width="40%"><a href="#">my account</a> &nbsp;|&nbsp; <a href="user/loginOrRegister.action">login</a> &nbsp;|&nbsp; <a href="#"><img src="images/shopping_cart_empty.gif" alt="" width="20" height="12" align="absbottom" /></a> &nbsp;<a href="#" class="green-link">shopping cart</a>
              <!-- (<?= $items_in_bag ?>) --></td>
            <td align="right" width="230" background="images/search_bg.gif"><b>search</b>
              <form name="quick_find_header" action="" method="get">
                <input type="hidden" name="main_page" value="advanced_search_result" />
                <input type="hidden" name="search_in_description" value="1" />
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
                <li class="submenu-blue"><a href="#">FEATURING</a></li>
                <li class="submenu"><a href="#">BATHING</a>
                  <ul class="level2">
                    <li> <a href="#">BATH ACCESSORIES</a></li>
                    <li> <a href="#">BATH LINEN</a></li>
                    <li> <a href="#">BATHROOM FIXTURES</a></li>
                  </ul>
                </li>
                <li class="submenu"> <a href="#">COOKING</a>
                  <ul class="level2">
                    <li> <a href="#">CUTLERY</a></li>
                    <li> <a href="#">DINNERWARE</a></li>
                    <li> <a href="#">GLASSWARE</a></li>
                  </ul>
                </li>
                <li class="submenu"> <a href="#">DECORATING</a>
                  <ul class="level2">
                    <li> <a href="#">ACCESSORIES</a></li>
                    <li> <a href="#">CENTERPIECES & VASES</a></li>
                    <li> <a href="#">PILLOWS & THROWS</a></li>
                    <li> <a href="#">WALL DECORATIONS</a></li>
                  </ul>
                </li>
                <li class="submenu"> <a href="#">DINING</a>
                  <ul class="level2">
                    <li> <a href="#">CHAIRS & STOOLS</a></li>
                    <li> <a href="#">COMMODES & SIDE TABLES</a></li>
                    <li> <a href="#">TABLES</a></li>
                  </ul>
                </li>
                <li class="submenu"> <a href="#">LIGHTING</a>
                  <ul class="level2">
                    <li> <a href="#">CEILING & WALL LIGHTS</a></li>
                    <li> <a href="#">FLOOR & TABLE LAMPS</a></li>
                  </ul>
                </li>
                <li class="submenu"> <a href="#">LIVING</a>
                  <ul class="level2">
                    <li> <a href="#">BENCHES & SHELVES</a></li>
                    <li> <a href="#">CHAIRS</a></li>
                    <li> <a href="#">COFFEE TABLES</a></li>
                    <li> <a href="#">COMMODES & SIDE TABLES</a></li>
                    <li> <a href="#">SOFAS</a></li>
                  </ul>
                </li>
                <li class="submenu"> <a href="#">SLEEPING</a>
                  <ul class="level2">
                    <li> <a href="#">BEDROOM ACCESSORIES</a></li>
                    <li> <a href="#">BEDROOM FURNITURE</a></li>
                  </ul>
                </li>
                <li class="submenu"> <a href="#">WORKING</a>
                  <ul class="level2">
                    <li> <a href="#">FURNITURE</a></li>
                  </ul>
                </li>
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
_uacct = "UA-3114850-2";
urchinTracker();
</script>
<!--bof- parse time display -->
<!--eof- parse time display -->
<!--bof- banner #6 display -->
<!--eof- banner #6 display -->
<script type="text/javascript">window.status = "Done";</script>
</body>
</html>