<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: ${category.name }</title>
</head>
<body id="indexBody">
<div style="padding-bottom: 12px;"><a href="#"><img src="${category.imageUrl }" alt="${category.name }"/></a></div>
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top"><!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <div class="centerColumn" id="indexProductList">
          <div id="productListHeading">${category.name }</div>
          <br class="clearBoth" />
          <div style="float:left; padding-left: 20px;">${count } item(s)</div>
          <!-- <div style="float: left; padding-left: 20px;">4 item(s)</div>-->
          <div class="forward">Sort by: <a class="#">name</a> - <a class="product-list-sorter" href="index.jsp?main_page=index&cPath=1_32&sort=3a">low price</a> - <a class="product-list-sorter" href="index.jsp?main_page=index&cPath=1_32&sort=3d">high price</a> - <a class="product-list-sorter" href="index.jsp?main_page=index&cPath=1_32&sort=7d">best seller</a> - <a class="product-list-sorter" href="index.jsp?main_page=index&cPath=1_32&sort=8d">new</a> - <a class="product-list-sorter" href="index.jsp?main_page=index&cPath=1_32&sort=9d">sale</a> &nbsp; &nbsp; &nbsp; &nbsp; </div>
          <br />
          <div id="productListing">
            <!-- <div id="productsListingTopNumber" class="navSplitPagesResult back">Displaying <strong>1</strong> to <strong>4</strong> (of <strong>4</strong> products)</div> -->
            <div id="productsListingListingTopLinks" class="navSplitPagesLinks forward"> &nbsp;</div>
            <br class="clearBoth" />
            <c:forEach var="product" items="${products}">
            <div class="centerBoxContentsProducts back" style="width: 300px;">
              <div class="imgWrapper"><a href="product/showProduct.action?productId=${product.productId }"><img src="${product.imageUrl }" alt="${product.name }" title=" ${product.name } " width="116" height="116" /></a></div>
              <br />
              <a class="product-list-name" href="product/showProduct.action?productId=${product.productId }">${product.name }</a><br />
              <strong>$${product.normalPrice }</strong><br />
            </div>
            </c:forEach>
            <br class="clearBoth" />
            <!-- <div id="productsListingBottomNumber" class="navSplitPagesResult back">Displaying <strong>1</strong> to <strong>4</strong> (of <strong>4</strong> products)</div> -->
            <div  id="productsListingListingBottomLinks" class="navSplitPagesLinks forward"> &nbsp;</div>
            <br class="clearBoth" />
          </div>
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>
