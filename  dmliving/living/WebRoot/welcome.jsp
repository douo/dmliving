<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: "Cool" living for the wild at heart</title>
</head>
<body id="indexBody">
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top"><!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <div style="z-index: 1;" id="intro_movie">Movie</div>
        <script type="text/javascript">
		var so = new SWFObject("flash/home_intro.swf", "movie", "924", "288", "8", "#000000");
		so.addParam("menu", "false");
		so.addParam("wmode", "opaque");
		so.write("intro_movie");
		</script>
        <!-- <img src="/dml/images/homepage_flash.gif"> -->
        <p/> <img src="images/home_intro_statement.gif" alt="" width="924" height="74" border="0" />
        <table width="924px" border="0" cellpadding="0" cellspacing="0">
         <c:forEach var="category" items="${categories}" varStatus="counter">
            <c:if test="${counter.count%3==1}"><tr><td align="left"><a href='product/listProduct.action?category.productCategoryId=${category.productCategoryId }'><img src="${category.imageUrl }" alt="${category.name }" title=" ${category.name } " width="295" height="150" /></a></td></c:if>
            <c:if test="${counter.count%3==2}"><td align="center"><a href='product/listProduct.action?category.productCategoryId=${category.productCategoryId }'><img src="${category.imageUrl }" alt="${category.name }" title=" ${category.name } " width="295" height="150" /></a></td></c:if>
            <c:if test="${counter.count%3==0}"><td align="right"><a href='product/listProduct.action?category.productCategoryId=${category.productCategoryId }'><img src="${category.imageUrl }" alt="${category.name }" title=" ${category.name } " width="295" height="150" /></a></td>
            <c:if test="${!counter.last}">
	          <tr>
	            <td colspan="3">&nbsp;</td>
	          </tr>
	          </c:if>
            </c:if>
            <c:if test="${counter.last}">
	          </tr>
	        </c:if>
         </c:forEach>
        </table>
        <div class="centerColumn" id="indexDefault">
          <h1 id="indexDefaultHeading"></h1>
          <div id="indexDefaultMainContent" class="content"></div>
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>
