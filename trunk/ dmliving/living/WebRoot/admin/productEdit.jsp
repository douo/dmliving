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
<link rel="stylesheet" type="text/css" href="includes/javascript/spiffyCal/spiffyCal_v2_1.css"></link>
<script language="JavaScript" src="includes/javascript/spiffyCal/spiffyCal_v2_1.js"></script>
<script type="text/javascript" src="includes/ckeditor/ckeditor.js"></script>
<script language="javascript">
<!--
  var dateAvailable = new ctlSpiffyCalendarBox("dateAvailable", "new_product", "products_date_available","btnDate1","",scBTNMODE_CUSTOMBLUE);
//--></script>
</head>
<body>
<div id="spiffycalendar" class="text" style="visibility: hidden; left: 275px; top: 277px;">
<form name="spiffyCal">
<table class="cal-Table" width="185" cellspacing="0" cellpadding="0" border="3">
</table>
</form>
</div>
<!-- body //-->
<table border="0" width="100%" cellspacing="2" cellpadding="2">
  <tr>
<!-- body_text //-->
    <td width="100%" valign="top">
    <form name="new_product" action="admin/category/saveProduct.action" method="post" enctype="multipart/form-data">
    <input type="hidden" name="category.productCategoryId" value="${category.productCategoryId }" />
    <input type="hidden" name="product.productId" value="${product.productId }"/>
    <table border="0" width="100%" cellspacing="0" cellpadding="2">
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr>
            <td class="pageHeading">商品的分类: &quot;
            <c:forEach items="${categoryTree}" var="categoryTree">
           	${categoryTree.name }&nbsp;&gt;&nbsp;
           	</c:forEach>&quot;</td>
            <td class="pageHeading" align="right"><img src="images/pixel_trans.gif" border="0" alt="" width="57" height="40"/></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
      </tr>
      <tr>
        <td class="main" align="right">
        <input type="image" src="images/buttons/schinese/button_save.gif" border="0" alt="保存" title=" 保存 "/>
        &nbsp;&nbsp;<a href="http://localhost/admin/categories.jsp?cPath=65">
        <img src="images/buttons/schinese/button_cancel.gif" border="0" alt="取消" title=" 取消 "/></a>
        </td>
      </tr>
      <tr>
        <td><table border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td class="main">商品主分类:</td>
            <td class="main"> ID&nbsp;${category.productCategoryId }&nbsp;${category.name }</tr>
          <tr>
            <td colspan="2" class="main"><strong>备注: 主分类用于定价，分类影响链接商品的价格。例如促销</strong></td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="100%" height="2"/></td>
          </tr>
         <tr>
            <td colspan="2" class="main" align="center"></td>
          <tr>
            <td class="main">商品状态:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="radio" name="product.isactive" value="1" checked="checked" />&nbsp;有货&nbsp;<input type="radio" name="products_status" value="0" />&nbsp;缺货</td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <tr>
            <td class="main">到货日期:<br /><small>(YYYY-MM-DD)</small></td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<script language="javascript">dateAvailable.writeControl(); dateAvailable.dateFormat="yyyy-MM-dd";</script></td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <tr>
            <td class="main">商品厂商:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;
            <select rel="dropdown" name="manufacturer.manufacturerId">
              <option value="" selected="selected">无</option>
              <c:forEach var="manufacturer" items="${manufacturers}">
			  <option value="${manufacturer.manufacturerId }">${manufacturer.name }</option>
			  </c:forEach>
			</select>
			</td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <tr>
            <td class="main">商品名称:</td>

            <td class="main">&nbsp;<input type="text" name="product.name" size = "51" maxlength= "192" /></td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
            
          </tr>

          <tr>
            <td class="main">免费商品:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="radio" name="product.isFree" value="1" />&nbsp;是&nbsp;&nbsp;<input type="radio" name="product.ifFree" value="0" checked="checked" />&nbsp;否 </td>
          </tr>
          <!-- 
          <tr>
            <td class="main">价格面议:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="radio" name="product.isCall" value="1" />&nbsp;是&nbsp;&nbsp;<input type="radio" name="product_is_call" value="0" checked="checked" />&nbsp;否 </td>
          </tr>
          <tr>
            <td class="main">按属性定价:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="radio" name="products_priced_by_attribute" value="1" />&nbsp;是&nbsp;&nbsp;<input type="radio" name="products_priced_by_attribute" value="0" checked="checked" />&nbsp;否 </td>
          </tr>
 		  -->
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <!-- 
          <tr bgcolor="#ebebff">
            <td class="main">税种:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<select rel="dropdown" name="products_tax_class_id" onchange="updateGross()">
			  <option value="0" selected="selected">无</option>
			  <option value="1">附加购物税</option>
			</select>
			</td>
          </tr>
           -->
          <tr bgcolor="#ebebff">
            <td class="main">价格(基本价):</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="text" name="product.normalPrice" /></td>
          </tr>
          <tr bgcolor="#ebebff">

            <td class="main">价格(含税价):</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="text" name="products_price_gross" /></td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <tr>
            <td class="main">虚拟商品:</td>

            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="radio" name="product.isVirtual" value="1" />&nbsp;是, 不要送货地址&nbsp;<input type="radio" name="product.isVirtual" value="0" checked="checked" />&nbsp;否, 需要送货地址 </td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <tr>
            <td class="main" valign="top">免运费:</td>

            <td class="main" valign="top"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="radio" name="product.freeShip" value="1" />&nbsp;是&nbsp;<input type="radio" name="product.freeShip" value="0" checked="checked" />&nbsp;否<!-- <br /><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="radio" name="product.freeShip" value="2" />&nbsp;特定, 可下载商品需要配送地址  --></td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <!-- 
          <tr>
            <td class="main">显示数量方框:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="radio" name="products_qty_box_status" value="1" checked="checked" />&nbsp;是&nbsp;<input type="radio" name="products_qty_box_status" value="0" />&nbsp;否 </td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>

          <tr>
            <td class="main">最少购买数量:</td>

            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="text" name="products_quantity_order_min" value="1" /></td>
          </tr>

          <tr>
            <td class="main">最多购买数量:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="text" name="products_quantity_order_max" value="0" />&nbsp;&nbsp;0 = 无限制, 1 = 无装箱数量</td>
          </tr>

          <tr>

            <td class="main">购买数量单位:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="text" name="products_quantity_order_units" value="1" /></td>
          </tr>

          <tr>
            <td class="main">允许属性混合:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="radio" name="products_quantity_mixed" value="1" checked="checked" />&nbsp;是&nbsp;&nbsp;<input type="radio" name="products_quantity_mixed" value="0" />&nbsp;否</td>

          </tr>
		 -->
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <tr>
            <td class="main" valign="top">商品简介:</td>
            <td colspan="2"><table border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td class="main" width="25" valign="top">&nbsp;</td>
                <td class="main" width="100%">
        		<textarea name="product.description" wrap="soft" cols="100%" rows="30"></textarea>
        		<script type="text/javascript">
					CKEDITOR.replace( 'product.description',
					{
						customConfig : 'js/custom/ckeditor_config.js'
					});
				</script>
                </td>
              </tr>
            </table></td>
          </tr>

          <tr>
            <td class="main" valign="top"></td>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <tr>
            <td class="main">商品数量:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="text" name="product.stockQuantity" /></td>

          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <tr>
            <td class="main">商品型号:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="text" name="product.ptype" size = "51" maxlength= "96" /></td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_black.gif" border="0" alt="" width="100%" height="3"/></td>
          </tr>

          <tr>
            <td class="main" colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">

              <tr>
                <td class="main">商品图像:</td>
                <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="file" name="doc"  size="50"  />&nbsp;图像名称: &nbsp;NONE</td>
                <td valign = "center" class="main">上传目录:&nbsp;<select rel="dropdown" name="directory">
				 <option value="/">Main Directory</option>
                 <option value="uploads">uploads</option>
                 <option value="manufacturer">manufacturer</option>
                 <option value="product">product</option>
                 <option value="category">categoyr</option>
				</select>
				</td>
			 </tr>
              <%--<tr>
                <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/></td>
                <td class="main" valign="top"><strong>删除图像吗?</strong> 说明: 从商品中删除，但不删除图像文件: <input type="radio" name="image_delete" value="0" checked="checked" />&nbsp;否 <input type="radio" name="image_delete" value="1" />&nbsp;是</td>

	  	      </tr>
			--%>
              <tr>
                <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/></td>
                <td colspan="3" class="main" valign="top"><br /><strong>或从服务器上选择已有图像文件，文件名:</strong>&nbsp;<input type="text" name="products_image_manual" /></td>
              </tr>
            </table></td>

          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_black.gif" border="0" alt="" width="100%" height="3"/></td>
          </tr>
		  <!-- 
          <tr>
            <td class="main">商品网址:<br /><small><small>(不要 http://)</small></small></td>
            <td class="main">&nbsp;<input type="text" name="products_url[2]" size = "51" maxlength= "765" /></td>
          </tr>
           -->
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <tr>

            <td class="main">商品重量:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="text" name="product.weight" /></td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
          </tr>
          <tr>
            <td class="main">排序:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"/>&nbsp;<input type="text" name="product.sortOrder" value="0" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"/></td>
      </tr>
      <tr>
        <td class="main" align="right"><input type="image" src="images/buttons/schinese/button_save.gif" border="0" alt="保存" title=" 保存 "/>&nbsp;&nbsp;<a href="http://localhost/admin/categories.jsp?cPath=65"><img src="images/buttons/schinese/button_cancel.gif" border="0" alt="取消" title=" 取消 "></a></td>
      </tr>
    </table></form>
    </td>
<!-- body_text_eof //-->
  </tr>
</table>

</body>
</html>
