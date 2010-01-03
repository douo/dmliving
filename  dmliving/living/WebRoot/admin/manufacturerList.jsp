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
          <td width="100%"><table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td class="pageHeading">厂商管理</td>
                <td class="pageHeading" align="right"><img src="images/pixel_trans.gif" border="0" alt="" width="57" height="40"/></td>
              </tr>
            </table></td>
        </tr>
        <tr>
          <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
              <tr>
                <td valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
                    <tr class="dataTableHeadingRow">
                      <td class="dataTableHeadingContent">厂商名字</td>
                      <td class="dataTableHeadingContent" align="right">操作&nbsp;</td>
                    </tr>
                    <c:forEach var="manufacturer" items="${manufacturers}" varStatus="status">
                    <tr onclick="document.location.href='admin/manufacture/manufactureEdit.action?manufacturer.manufacturerId=${manufacturer.manufacturerId}&action=edit'" onmouseout="rowOutEffect(this)" onmouseover="rowOverEffect(this)" class="dataTableRow">
	                <td class="dataTableContent">${manufacturer.name }</td>
	                <td align="right" class="dataTableContent">
	                  <a href="http://localhost/admin/manufacturers.jsp?page=1&amp;mID=6&amp;action=edit"><img border="0" title=" 编辑 " alt="编辑" src="images/icon_edit.gif"/></a>                  <a href="http://localhost/admin/manufacturers.jsp?page=1&amp;mID=6&amp;action=delete"><img border="0" title=" 删除 " alt="删除" src="images/icon_delete.gif"/></a>                  <img border="0" alt="" src="images/icon_arrow_right.gif"/>                </td>
	              	</tr>
                    </c:forEach>
                    <tr>
                <td colspan="2"><table width="100%" cellspacing="0" cellpadding="2" border="0">
                  <tbody><tr>
                    <td valign="top" class="smallText">显示<b>1</b>到<b>20</b> (共<b>21</b>个厂商)</td>
                    <td align="right" class="smallText"><form method="get" action="http://localhost/admin/manufacturers.php" name="pages"><input type="hidden" value="d98148c9388a674d9ed6e322388f0ab1" name="securityToken"/>&lt;&lt;  第<select onchange="this.form.submit();" name="page" rel="dropdown">
  					<option selected="selected" value="1">1</option>
  					<option value="2">2</option>
					</select>
					页，共2页  <a class="splitPageLink" href="http://localhost/admin/manufacturers.php?page=2">&gt;&gt;</a></form></td>
                  </tr>
                </tbody></table></td>
              </tr>
                  </table></td>
                  <!-- 右栏开始 -->
                <td width="25%" valign="top">
					<table width="100%" cellspacing="0" cellpadding="2" border="0">
					  <tbody><tr class="infoBoxHeading">
					    <td class="infoBoxHeading"><b>Canon</b></td>
					  </tr>
					</tbody></table>
					<table width="100%" cellspacing="0" cellpadding="2" border="0">
					  <tbody><tr>
					    <td align="center" class="infoBoxContent"><a href="admin/manufacture/manufactureView.action?action=edit"><img border="0" title=" 编辑 " alt="编辑" src="images/buttons/schinese/button_edit.gif"/></a> <a href="http://localhost/admin/manufacturers.jsp?page=1&amp;mID=6&amp;action=delete"><img border="0" title=" 删除 " alt="删除" src="images/buttons/schinese/button_delete.gif"/></a></td>
					  </tr>
					  <tr>
					    <td class="infoBoxContent"><br/>添加日期: 2003/12/23</td>
					  </tr>
					  <tr>
					    <td class="infoBoxContent"><br/><img border="0" title=" Canon " alt="Canon" src="http://localhost/images/manufacturers/manufacturer_canon.gif"/></td>
					  </tr>
					  <tr>
					    <td class="infoBoxContent"><br/>商品: 0</td>
					  </tr>
					</tbody></table>
				</td>
              </tr>
            </table></td>
        </tr>
      </table></td>
    <!-- body_text_eof //-->
  </tr>
</table>
<!-- body_eof //-->
</body>
</html>
