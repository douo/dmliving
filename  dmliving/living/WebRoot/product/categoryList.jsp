<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: ${pcategory.name }</title>
<style type="text/css" media="screen">
	.categoryListBoxContents { background-color: ${pcategory.cssStyle }}.centerBoxContentsProducts { background-color: ${pcategory.cssStyle } }.centerBoxContentsProducts { background: ${pcategory.cssStyle } }
</style>
</head>
<body id="indexBody">
<div style="padding-bottom: 12px;"><a href="product/listProduct.action?category.productCategoryId=${pcategory.productCategoryId }"><img src="${pcategory.bannerUrl }" alt="${pcategory.name }" /></a></div>
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
    <tr>
      <td valign="top"><!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <div class="centerColumn" id="indexCategories">
          <!-- <h1 id="indexCategoriesHeading">BATHING</h1> -->
          <!-- BOF: Display grid of available sub-categories, if any -->
          <c:forEach items="${categories}" var="category">
          <div class="categoryListBoxContents" style="width:100%;">
            <div class="categoryListBoxContents2">
              <div class="imgWrapper"><a href="product/listProduct.action?category.productCategoryId=${category.productCategoryId }"><img src="${category.imageUrl }" alt="${category.name }" title=" ${category.name } " width="116" height="116" /></a></div>
            </div>
            <div class="categoryListBoxContents3"><a href="product/listProduct.action?category.productCategoryId=${category.productCategoryId }">${category.name }</a></div>
          </div>
          <br class="clearBoth" />
          </c:forEach>
          <!-- EOF: Display grid of available sub-categories -->
        </div></td>
    </tr>
  </table>
</div>
</body>
</html>
