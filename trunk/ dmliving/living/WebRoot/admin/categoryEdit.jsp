<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh">
<head>
<base href="${basePath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>magicalshop</title>
<script type="text/javascript" src="includes/ckeditor/ckeditor.js"></script>
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
                <td class="pageHeading">商品分类&nbsp;-&nbsp;首页</td>
                <td class="pageHeading" align="right"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="40"></td>
                <td align="right"><table border="0" width="100%" cellspacing="0" cellpadding="0">
                    <%--<tr>
                      <td class="smallText" align="right"><form name="search" action="http://localhost/admin/categories.jsp" method="get">
                          <input type="hidden" name="securityToken" value="1611772ff4f5a75918d6502947a0137f" />
                          搜索:
                          <input type="text" name="search" />
                        </form></td>
                    </tr>
                    <tr>
                      <td class="smallText" align="right"><a href="http://localhost/admin/categories.jsp?set_display_categories_dropdown=1&cID=&cPath="><img src="images/icons/cross.gif" border="0" alt="状态 - 关闭" title=" 状态 - 关闭 "/></a>&nbsp;&nbsp;
                        <form name="goto" action="http://localhost/admin/categories.jsp" method="get">
                          <input type="hidden" name="securityToken" value="1611772ff4f5a75918d6502947a0137f" />
                          转到:
                          <select rel="dropdown" name="cPath" onChange="this.form.submit();">
                            <option value="0">首页</option>
                          </select>
                        </form></td>
                    </tr>
                  --%></table></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td valign="top"></td>
                <td valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
                    <tr class="infoBoxHeading">
                      <td class="infoBoxHeading"><b>新建分类</b></td>
                    </tr>
                  </table>
                  <c:choose>
                  	<c:when test="${category.productCategoryId==null }">
                  		<form name="newCategory" action="admin/category/saveCategory.action" method="post" enctype="multipart/form-data">
                  		<input type="hidden" name="category.parentCategoryId" value="${category.parentCategoryId }" />
                  	</c:when>
                  	<c:otherwise>
                  		<form name="updateCategory" action="admin/category/updateCategory.action" method="post" enctype="multipart/form-data">
                  		<input type="hidden" name="category.parentCategoryId" value="${category.parentCategoryId }" />
                  		<input type="hidden" name="category.productCategoryId" value="${category.productCategoryId }" />
                  	</c:otherwise>
                  </c:choose>
                    <input type="hidden" name="category.level" value="${category.level }" />
                    <table border="0" width="100%" cellspacing="0" cellpadding="2">
                      <tr>
                        <td class="infoBoxContent">请填写以下新分类信息</td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          分类名称:<br />
                          <input type="text" name="category.name" size = "51" maxlength= "96" value="${category.name }" />
                          </td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          分类简介:<br />
                          <textarea name="category.description" wrap="soft" cols="100%" rows="20">${category.description }</textarea>
                          <script type="text/javascript">
							CKEDITOR.replace( 'category.description',
							{
								customConfig : 'js/custom/ckeditor_config.js'
							});
						  </script>
					<c:if test="${category.parentCategoryId==null }">
						<tr>
                        <td class="infoBoxContent"><br />
                          分类Banner图像:<br />
                          <input type="file" name="doc"  size="50"  /></td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          <strong>或从服务器上选择已有图像文件，文件名:</strong>&nbsp;
                          <input type="text" name="category.bannerUrl" value="${category.bannerUrl }" /></td>
                      </tr>
					</c:if>
					<tr>
                        <td class="infoBoxContent"><br />
                          分类图像:<br />
                          <input type="file" name="doc"  size="50"  /></td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent">上传目录:
                          <select rel="dropdown" name="directory">
                            <option value="">Main Directory</option>
                            <option value="uploads">uploads</option>
                            <option value="manufacturer">manufacturer</option>
                            <option value="product">product</option>
                            <option value="category" selected="selected">categoyr</option>
                          </select></td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          <strong>或从服务器上选择已有图像文件，文件名:</strong>&nbsp;
                          <input type="text" name="category.imageUrl" value="${category.imageUrl }" /></td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          页面风格(CSS):<br />
                          <input type="text" name="category.cssStyle" size="6" value="${category.cssStyle }"/></td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          排序:<br />
                          <input type="text" name="category.orderLevel" size="6" value="${category.orderLevel }" /></td>
                      </tr>
                      <tr>
                        <td align="center" class="infoBoxContent"><br />
                          <c:choose>
		                  	<c:when test="${category.productCategoryId==null }">
		                  		<input type="image" src="images/buttons/schinese/button_save.gif" border="0" alt="保存" title=" 保存 "/>
		                  	</c:when>
		                  	<c:otherwise>
		                  		<input type="image" src="images/buttons/schinese/button_update.gif" border="0" alt="更新" title=" 更新 "/>
		                  	</c:otherwise>
		                  </c:choose>
                          
                          <a href="" onclick="javascript:history.back(-1);return false;"><img src="images/buttons/schinese/button_cancel.gif" border="0" alt="取消" title=" 取消 "/></a></td>
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
