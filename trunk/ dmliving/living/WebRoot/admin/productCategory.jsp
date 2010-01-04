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
    <td><table border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td class="smallText" align="center" width="100" valign="top">图示: </td>
          <td class="smallText" align="center" width="100" valign="top">关闭状态<br />
            <img src="images/icon_red_on.gif" border="0" alt="状态 - 关闭" title=" 状态 - 关闭 "/></td>
          <td class="smallText" align="center" width="100" valign="top">开启状态<br />
            <img src="images/icon_green_on.gif" border="0" alt="状态 - 开启" title=" 状态 - 开启 "/></td>
          <td class="smallText" align="center" width="100" valign="top">链接商品<br />
            <img src="images/icon_yellow_on.gif" border="0" alt="商品已链接" title=" 商品已链接 "/></td>
          <td class="smallText" align="center" width="150" valign="top">Meta标签已定义:<br />
            是&nbsp;否<br />
            <img src="images/icon_edit_metatags_on.gif" border="0" alt="Meta标签已定义" title=" Meta标签已定义 "/>&nbsp;<img src="images/icon_edit_metatags_off.gif" border="0" alt="Meta标签未定义" title=" Meta标签未定义 "/></td>
        </tr>
      </table></td>
  </tr>
  <tr>
    <td class="smallText" width="100%" align="right"> 显示顺序
      <form name="set_categories_products_sort_order_form" action="http://localhost/admin/categories.jsp" method="get">
        <input type="hidden" name="securityToken" value="8c996b0fd1b9d07e4155e42400b3cdf6" />
        &nbsp;&nbsp;
        <select rel="dropdown" name="reset_categories_products_sort_order" onChange="this.form.submit();">
          <option value="0" selected="selected">分类排序, 分类名称</option>
          <option value="1">分类名称</option>
        </select>
        <input type="hidden" name="cID" />
        <input type="hidden" name="cPath" value="" />
        <input type="hidden" name="pID" />
        <input type="hidden" name="page" />
        <input type="hidden" name="action" value="set_categories_products_sort_order" />
      </form></td>
  </tr>
  <tr>
    <!-- body_text //-->
    <td width="100%" valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
        <tr>
          <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td class="pageHeading">商品分类&nbsp;-&nbsp;
                	<c:forEach items="${categoryTree}" var="categoryTree">
                	${categoryTree.name }&nbsp;&gt;&nbsp;
                	</c:forEach>
                </td>
                <td class="pageHeading" align="right"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="40"/></td>
                <td align="right"><table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <tr>
                      <td class="smallText" align="right"><form name="search" action="http://localhost/admin/categories.jsp" method="get">
                          <input type="hidden" name="securityToken" value="8c996b0fd1b9d07e4155e42400b3cdf6" />
                          搜索:
                          <input type="text" name="search" />
                        </form></td>
                    </tr>
                    <tr>
                      <td class="smallText" align="right"><a href="http://localhost/admin/categories.jsp?set_display_categories_dropdown=1&cID=&cPath="><img src="images/icons/cross.gif" border="0" alt="状态 - 关闭" title=" 状态 - 关闭 "></a>&nbsp;&nbsp;
                        <form name="goto" action="http://localhost/admin/categories.jsp" method="get">
                          <input type="hidden" name="securityToken" value="8c996b0fd1b9d07e4155e42400b3cdf6" />
                          转到:
                          <select rel="dropdown" name="cPath" onChange="this.form.submit();">
                            <option value="0">首页</option>
                            <option value="65">杯具&nbsp;&nbsp;</option>
                          </select>
                        </form></td>
                    </tr>
                  </table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
                    <tr class="dataTableHeadingRow">
                      <td class="dataTableHeadingContent" width="30" align="right">编号</td>
                      <td class="dataTableHeadingContent">商品分类</td>
                      <td class="dataTableHeadingContent" align="left">型号</td>
                      <td class="dataTableHeadingContent" align="right">价格/特价/促销</td>
                      <td class="dataTableHeadingContent" align="right">&nbsp;</td>
                      <td class="dataTableHeadingContent" align="right">数量&nbsp;&nbsp;&nbsp;</td>
                      <td class="dataTableHeadingContent" width="50" align="center">状态</td>
                      <td class="dataTableHeadingContent" align="right">排序</td>
                      <td class="dataTableHeadingContent" align="right">操作&nbsp;</td>
                    </tr>
                    <c:if test="${categories != '[]'}">
                    <c:forEach var="category" items="${categories }" varStatus="count">
                    <tr class="dataTableRow" onmouseover="rowOverEffect(this)" onmouseout="rowOutEffect(this)" onclick="document.location.href='${basePath}admin/category/categoryList.action?category.productCategoryId=${category.productCategoryId }'">
                      <td class="dataTableContent" width="20" align="right">${category.productCategoryId }</td>
                      <td class="dataTableContent"><a href="http://localhost/admin/categories.jsp?cPath=65"><img src="images/icons/folder.gif" border="0" alt="目录" title=" 目录 "/></a>&nbsp;<b>${category.name }</b></td>
                      <td class="dataTableContent" align="center">&nbsp;</td>
                      <td class="dataTableContent" align="right">&nbsp;</td>
                      <td class="dataTableContent" align="center">&nbsp;</td>
                      <td class="dataTableContent" align="right" valign="bottom"> 0 / 0 开启                   &nbsp;&nbsp; </td>
                      <td class="dataTableContent" width="50" align="left"><a href="http://localhost/admin/categories.jsp?action=setflag_categories&flag=0&cID=65&cPath="><img src="images/icon_green_on.gif" border="0" alt="状态 - 开启" title=" 状态 - 开启 "/></a></td>
                      <td class="dataTableContent" align="right">${category.orderLevel }</td>
                      <td class="dataTableContent" align="right"><a href="admin/category/showCategory.action?category.productCategoryId=${category.productCategoryId }"><img src="images/icon_edit.gif" border="0" alt="编辑" title=" 编辑 "/></a>
                      <a href="admin/pCategoryDeleteConfirm.jsp?productCategoryId=${category.productCategoryId }&categoryName=${category.name }"><img src="images/icon_delete.gif" border="0" alt="删除" title=" 删除 "/></a> <a href="http://localhost/admin/categories.jsp?cPath=&cID=65&action=move_category"><img src="images/icon_move.gif" border="0" alt="移动" title=" 移动 "/></a><a href="http://localhost/admin/categories.jsp?cPath=&cID=65&action=edit_category_meta_tags"><img src="images/icon_edit_metatags_off.gif" border="0" alt="Meta标签未定义" title=" Meta标签未定义 "/></a></td>
                    </tr>
                    </c:forEach>
                    </c:if>
                    <c:if test="${products != '[]'}">
                    <c:forEach var="product" items="${products}">
                    <tr class="dataTableRow" onmouseover="rowOverEffect(this)" onmouseout="rowOutEffect(this)" onclick="document.location.href='admin/product/showProduct.action?product.productId=${product.productId }'">
                      <td class="dataTableContent" width="20" align="right">${product.productId }</td>
                      <td class="dataTableContent"><a href="http://localhost/admin/categories.jsp?cPath=65"><img src="images/icons/preview.gif" border="0" alt="商品" title=" 商品 "/></a>&nbsp;<b>${product.name }</b></td>
                      <td class="dataTableContent" align="left">${product.ptype }</td>
                      <td class="dataTableContent" align="center">${product.normalPrice }</td>
                      <td class="dataTableContent" align="center">&nbsp;</td>
                      <td class="dataTableContent" align="center">${product.stockQuantity }</td>
                      <td class="dataTableContent" width="50" align="center"><a href="http://localhost/admin/categories.jsp?action=setflag_categories&flag=0&cID=65&cPath="><img src="images/icon_green_on.gif" border="0" alt="状态 - 开启" title=" 状态 - 开启 "/></a></td>
                      <td class="dataTableContent" align="right">${product.sortOrder }</td>
                      <td class="dataTableContent" align="right"><a href="admin/product/showProduct.action?product.productId=${product.productId }"><img src="images/icon_edit.gif" border="0" alt="编辑" title=" 编辑 "/></a>
                      <a href="admin/product/deleteProduct.action?product.productId=${product.productId }"><img src="images/icon_delete.gif" border="0" alt="删除" title=" 删除 "/></a>
                      <a href="http://localhost/admin/categories.jsp?cPath=&cID=65&action=move_category"><img src="images/icon_move.gif" border="0" alt="移动" title=" 移动 "/></a>
                      <a href="http://localhost/admin/categories.jsp?cPath=&cID=65&action=edit_category_meta_tags"><img src="images/icon_edit_metatags_off.gif" border="0" alt="Meta标签未定义" title=" Meta标签未定义 "/></a>
                      </td>
                    </tr>
                    </c:forEach>
                    </c:if>
                    <tr>
                      <td colspan="3"><table border="0" width="100%" cellspacing="0" cellpadding="2">
                          <tr>
                            <td class="smallText">分类:&nbsp;${count}<br />
                              商品:&nbsp;0</td>
                            <td align="right" class="smallText">
                            <a href="#" onclick="javascript:history.back(-1);return false;">
							<img border="0" title=" 返回 " alt="返回" src="images/buttons/schinese/button_back.gif"/>
							</a>
							<c:if test="${products == '[]' }">
                            <a href="admin/category/newCategory.action?category.parentCategoryId=${category.productCategoryId }&category.level=${category.level}"><img src="images/buttons/schinese/button_new_category.gif" border="0" alt="新分类" title=" 新分类 "/></a>
                            </c:if>
                            <c:if test="${categories == '[]' }">
                            <a href="admin/product/newProduct.action?category.productCategoryId=${category.productCategoryId }">
							<img border="0" title=" 新商品 " alt="新商品" src="images/buttons/schinese/button_new_product.gif"/>
							</a></c:if>&nbsp;
							                              说明: 本分类中若有子分类，则不能添加商品          &nbsp;</td>
                          </tr>
                        </table></td>
                    </tr>
                  </table></td>
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
