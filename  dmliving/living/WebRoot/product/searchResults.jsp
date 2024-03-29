<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: Advanced Search</title>
<script type="text/javascript" src="js/login.js"></script>
<style type="text/css" media="screen">.categoryListBoxContents { background-color: #0ce39f; }.centerBoxContentsProducts { background-color: #0ce39f; }.centerBoxContentsProducts { background: url(images/search_product_bg.gif); }</style>
</head>
<body id="advancedsearchresultBody">
<div class="clearBoth"></div>
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top"><!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <div class="centerColumn" id="advSearchResultsDefault">
          <!--<h1 id="advSearchResultsDefaultHeading">Advanced Search</h1>-->
          <div id="productListHeading">Search Results for "${keyword }"</div>
          <br />
          <div style="float:left; padding-left: 20px;">${count } item(s)</div>
          <!-- <div style="float: left; padding-left: 20px;">148 item(s)</div>-->
          <br />
          <div id="productListing">
            <!-- <div id="productsListingTopNumber" class="navSplitPagesResult back">Displaying <strong>1</strong> to <strong>9</strong> (of <strong>148</strong> products)</div> -->
            <%--<div id="productsListingListingTopLinks" class="navSplitPagesLinks forward"> &nbsp;<strong class="current">1</strong>&nbsp;&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=2" title=" Page 2 ">2</a>&nbsp;&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=3" title=" Page 3 ">3</a>&nbsp;&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=4" title=" Page 4 ">4</a>&nbsp;&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=5" title=" Page 5 ">5</a>&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=6" title=" Next Set of 5 Pages ">...</a>&nbsp;&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=2" title=" Next Page ">[Next&nbsp;&gt;&gt;]</a>&nbsp;</div>
            --%><br class="clearBoth" />
           <c:forEach var="product" items="${products}">
            <div class="centerBoxContentsProducts back" style="width: 300px;">
              <div class="imgWrapper"><a href="product/showProduct.action?product.productId=${product.productId }"><img src="${product.imageUrl }" alt="${product.name }" title=" ${product.name } " width="116" height="116" /></a></div>
              <br />
              <a class="product-list-name" href="product/showProduct.action?product.productId=${product.productId }">${product.name }</a><br />
              <strong><span class="normalprice">$${product.normalPrice } </span> <span class="productSpecialPrice">$${product.memberPrice }</span></strong><br />
            </div>
            </c:forEach>
            <br class="clearBoth" />
            <!-- <div id="productsListingBottomNumber" class="navSplitPagesResult back">Displaying <strong>1</strong> to <strong>9</strong> (of <strong>148</strong> products)</div> -->
            <%--<div  id="productsListingListingBottomLinks" class="navSplitPagesLinks forward"> &nbsp;<strong class="current">1</strong>&nbsp;&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=2" title=" Page 2 ">2</a>&nbsp;&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=3" title=" Page 3 ">3</a>&nbsp;&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=4" title=" Page 4 ">4</a>&nbsp;&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=5" title=" Page 5 ">5</a>&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=6" title=" Next Set of 5 Pages ">...</a>&nbsp;&nbsp;<a href="/index.jsp?main_page=advanced_search_result&amp;search_in_description=1&amp;keyword=a&amp;sort=20a&amp;page=2" title=" Next Page ">[Next&nbsp;&gt;&gt;]</a>&nbsp;</div>
            --%><br class="clearBoth" />
          </div>
          <!-- <div class="buttonRow back"><a href="/index.jsp?main_page=advanced_search&amp;search_in_description=1&amp;keyword=a"><img src="includes/templates/dml/buttons/english/button_back.gif" alt="Back" title=" Back " width="150" height="29" /></a></div> -->
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>
