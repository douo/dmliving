<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh">
<head>
<base href="${basePath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>magicalshop</title>
</head>
<body>
<!-- body //-->
<table border="0" width="100%" cellspacing="2" cellpadding="2">
  <tr>
    <!-- body_text //-->
    <td width="100%" valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
        <tr>
          <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td class="pageHeading">商品分类&nbsp;-&nbsp;${param.categoryName }</td>
                <td class="pageHeading" align="right"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="40"/></td>
                <td align="right">
                <table border="0" width="100%" cellspacing="0" cellpadding="0">
                  </table>
                </td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
                    <tr class="dataTableHeadingRow"> </tr>
                    <tr class="dataTableRow" onmouseover="rowOverEffect(this)" onmouseout="rowOutEffect(this)" onclick="document.location.href='http://localhost/admin/categories.jsp?cPath=65_67'"> </tr>
                  </table></td>
                <td valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
                    <tr class="infoBoxHeading">
                      <td class="infoBoxHeading"><b>删除分类</b></td>
                    </tr>
                  </table>
                  <form name="categories" action="admin/category/deleteCategory.action" method="post">
                    <input type="hidden" name="category.productCategoryId" value="${param.productCategoryId }" />
                    <table border="0" width="100%" cellspacing="0" cellpadding="2">
                      <tr>
                        <td class="infoBoxContent">您确认要删除该分类吗?</td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          <strong>警告:</strong> 主分类被删除的链接商品将无法正确显示价格。在删除含有链接商品的分类前，请重置链接商品的主分类到其他的分类中</td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          <b>test</b></td>
                      </tr>
                      <tr>
                        <td align="center" class="infoBoxContent"><br />
                          <input type="image" src="images/buttons/schinese/button_delete.gif" border="0" alt="删除" title=" 删除 "/>
                          <a href="http://localhost/admin/categories.jsp?cPath=65&cID=67"><img src="images/buttons/schinese/button_cancel.gif" border="0" alt="取消" title=" 取消 "/></a></td>
                      </tr>
                    </table>
                  </form></td>
              </tr>
              <tr>
                <td class="alert" colspan="3" width="100%" align="center"></td>
              </tr>
              <tr> </tr>
            </table></td>
        </tr>
      </table></td>
    <!-- body_text_eof //-->
  </tr>
</table>
<!-- body_eof //-->
</body>
</html>
