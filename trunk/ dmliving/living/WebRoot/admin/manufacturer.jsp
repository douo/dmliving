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
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript"></script>
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
                    <c:choose>
                    	<c:when test="${manufacturer.manufacturerId == manufacturer_current.manufacturerId}">
                    		<tr id="defaultSelected" onclick="document.location.href='admin/manufacture/manufactureEdit.action?manufacturer.manufacturerId=${manufacturer.manufacturerId}&action=edit'" onmouseout="rowOutEffect(this)" onmouseover="rowOverEffect(this)" class="dataTableRowSelected">
			                <td class="dataTableContent">${manufacturer.name }</td>
			                <td align="right" class="dataTableContent">
			                  <a href="admin/manufacture/manufactureEdit.action?manufacturer.manufacturerId=${manufacturer.manufacturerId}&action=edit"><img border="0" title=" 编辑 " alt="编辑" src="images/icon_edit.gif"/></a>                  <a href="http://localhost/admin/manufacturers.jsp?page=1&amp;mID=6&amp;action=delete"><img border="0" title=" 删除 " alt="删除" src="images/icon_delete.gif"/></a>
							  <img border="0" alt="" src="images/icon_arrow_right.gif"/>
							</td>
			              	</tr>
                    	</c:when>
                    	<c:otherwise>
                    	<tr onclick="document.location.href='admin/manufacture/manufactureEdit.action?manufacturer.manufacturerId=${manufacturer.manufacturerId}&action=edit'" onmouseout="rowOutEffect(this)" onmouseover="rowOverEffect(this)" class="dataTableRow">
		                <td class="dataTableContent">${manufacturer.name }</td>
		                <td align="right" class="dataTableContent">
		                  <a href="admin/manufacture/manufactureEdit.action?manufacturer.manufacturerId=${manufacturer.manufacturerId}&action=edit"><img border="0" title=" 编辑 " alt="编辑" src="images/icon_edit.gif"/></a>
						  <a href="http://localhost/admin/manufacturers.jsp?page=1&amp;mID=6&amp;action=delete"><img border="0" title=" 删除 " alt="删除" src="images/icon_delete.gif"/></a>
						  <img border="0" alt=" 信息 " src="images/icon_info.gif"/>
						</td>
		              	</tr>
                    	</c:otherwise>
                    </c:choose>
                    </c:forEach>
                    <tr>
                <td colspan="2"><table width="100%" cellspacing="0" cellpadding="2" border="0">
                  <tbody><tr>
                    <td valign="top" class="smallText">显示<b>${start+1 }</b>到<b>${totalProperty }</b> (共<b>${totalProperty }</b>个厂商)</td>
                    <td align="right" class="smallText"><form method="get" action="http://localhost/admin/manufacturers.jsp" name="pages"><input type="hidden" value="21664016f0a4daeeb8e82a364099e5dd" name="securityToken"/>&lt;&lt;  第<select onchange="this.form.submit();" name="page" rel="dropdown">
					  <option selected="selected" value="1">1</option>
					</select>
					页，共1页  <a class="splitPageLink" href="http://localhost/admin/manufacturers.jsp?page=2">&gt;&gt;</a></form></td>
					</tr>
				<tr>
                	<td align="right" class="smallText" colspan="2"><a href="admin/manufacture/manufactureNew.action?action=new"><img border="0" title=" 加入 " alt="加入" src="images/buttons/schinese/button_insert.gif"/></a></td>
              	</tr>
                </tbody></table></td>
              </tr>
                  </table></td>
                  <!-- 右栏开始: 编辑与删除 action=list -->
                  <c:if test="${action =='list'}">
                <td width="25%" valign="top">
					<table width="100%" cellspacing="0" cellpadding="2" border="0">
					  <tbody><tr class="infoBoxHeading">
					    <td class="infoBoxHeading"><b>${manufacturer.name }</b></td>
					  </tr>
					</tbody></table>
					<table width="100%" cellspacing="0" cellpadding="2" border="0">
					  <tbody><tr>
					    <td align="center" class="infoBoxContent"><a href="admin/manufacture/manufactureEdit.action?manufacturer.manufacturerId=${manufacturer.manufacturerId}&action=edit"><img border="0" title=" 编辑 " alt="编辑" src="images/buttons/schinese/button_edit.gif"/></a> <a href="http://localhost/admin/manufacturers.jsp?page=1&amp;mID=6&amp;action=delete"><img border="0" title=" 删除 " alt="删除" src="images/buttons/schinese/button_delete.gif"/></a></td>
					  </tr>
					  <tr>
					    <td class="infoBoxContent"><br/>添加日期: ${manufacturer.addDate }</td>
					  </tr>
					  <tr>
					    <td class="infoBoxContent"><br/>
					    <c:choose>
                        	<c:when test="${manufacturer.picture } == ''">
                        		图片不存在
                        	</c:when>
                        	<c:otherwise><img border="0" title=" ${manufacturer.name } " alt="${manufacturer.name }" src="${basePath }${manufacturer.picture }"/></c:otherwise>
                        </c:choose>
					    </td>
					  </tr>
					  <!-- 
					  <tr>
					    <td class="infoBoxContent"><br/>商品: 0</td>
					  </tr>
					   -->
					</tbody></table>
				</td>
				</c:if>
				<c:if test="${action == 'edit'}">
                  <!-- 右栏开始：编辑厂商 -->
                <td width="25%" valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
                    <tr class="infoBoxHeading">
                      <td class="infoBoxHeading"><b>编辑厂商</b></td>
                    </tr>
                  </table>
                  <form name="manufacturers" action="admin/manufacture/manufactureUpdate.action" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="manufacturer.manufacturerId" value="${manufacturer.manufacturerId }" />
                    <table border="0" width="100%" cellspacing="0" cellpadding="2">
                      <tr>
                        <td class="infoBoxContent">请做必要修改</td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          厂商名字:<br/>
                          <input type="text" name="manufacturer.name" value="${manufacturer.name }" size = "51" maxlength= "96" /></td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          厂商图片:<br/>
                          <input type="file" name="doc" size="50" />
                          <br />
                          ${manufacturer.picture }
                          </td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          上传目录:
                          <select rel="dropdown" name="directory">
                            <option value="/">Main Directory</option>
                            <option value="uploads">uploads</option>
                            <option value="manufacturer">manufacturer</option>
                            <option value="product">product</option>
                            <option value="category">categoyr</option>
                          </select></td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          <strong>或从服务器上选择已有图像文件，文件名:</strong>&nbsp;
                          <input type="text" name="image_manual" /></td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br/>
                        <c:choose>
                        	<c:when test="${manufacturer.picture } == ''">
                        		图片不存在
                        	</c:when>
                        	<c:otherwise><img border="0" title=" ${manufacturer.name } " alt="${manufacturer.name }" src="${basePath }${manufacturer.picture }"/></c:otherwise>
                        </c:choose>
                        
                        </td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br/>
                          厂商网址:<br/>
                          &nbsp;
                          <input type="text" name="manufacturer.url" value="${manufacturer.url }" size = "51" maxlength= "765" />
                          <br/></td>
                      </tr>
                      <tr>
                        <td align="center" class="infoBoxContent"><br/>
                          <input type="image" src="images/buttons/schinese/button_save.gif" border="0" alt="保存" title=" 保存 "/>
                          <a href="http://localhost/admin/manufacturers.jsp?page=1&mID=4"><img src="images/buttons/schinese/button_cancel.gif" border="0" alt="取消" title=" 取消 "/></a></td>
                      </tr>
                    </table>
                  </form></td>
                  </c:if>
                  <c:if test="${action == 'new'}">
                  <!-- 右栏开始：新厂商 -->
                <td width="25%" valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
                    <tr class="infoBoxHeading">
                      <td class="infoBoxHeading"><b>新厂商</b></td>
                    </tr>
                  </table>
                  <form name="manufacturers" action="admin/manufacture/saveManufacture.action" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="manufacturer.manufacturerId" value="${manufacturer.manufacturerId }" />
                    <table border="0" width="100%" cellspacing="0" cellpadding="2">
                      <tr>
                        <td class="infoBoxContent">请为新厂商填写以下信息</td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          厂商名字:<br/>
                          <input type="text" name="manufacturer.name" value="" size = "51" maxlength= "96" /></td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          厂商图片:<br/>
                          <input type="file" name="doc" size="50" />
                          <br />
                          </td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          上传目录:
                          <select rel="dropdown" name="directory">
                            <option value="">Main Directory</option>
                            <option value="uploads">uploads</option>
                          </select></td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          <strong>或从服务器上选择已有图像文件，文件名:</strong>&nbsp;
                          <input type="text" name="image_manual" /></td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br />
                          ${manufacturer.picture }</td>
                      </tr>
                      <tr>
                        <td class="infoBoxContent"><br/>
                          厂商网址:<br/>
                          &nbsp;
                          <input type="text" name="manufacturer.url" value="${manufacturer.url }" size = "51" maxlength= "765" />
                          <br/></td>
                      </tr>
                      <tr>
                        <td align="center" class="infoBoxContent"><br/>
                          <input type="image" src="images/buttons/schinese/button_save.gif" border="0" alt="保存" title=" 保存 "/>
                          <a href="http://localhost/admin/manufacturers.jsp?page=1&mID=4"><img src="images/buttons/schinese/button_cancel.gif" border="0" alt="取消" title=" 取消 "/></a></td>
                      </tr>
                    </table>
                  </form></td>
                  </c:if>
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
