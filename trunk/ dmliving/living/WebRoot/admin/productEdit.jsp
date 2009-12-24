<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh">
<head>
<base href="${basePath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>magicalshop</title>
<script type="text/javascript" src="includes/ckeditor/ckeditor.js"></script>
<link rel="stylesheet" type="text/css" href="includes/javascript/spiffyCal/spiffyCal_v2_1.css"></link>
<script language="JavaScript" src="includes/javascript/spiffyCal/spiffyCal_v2_1.js"></script>
<script language="javascript">
<!--
  var dateAvailable = new ctlSpiffyCalendarBox("dateAvailable", "new_product", "products_date_available","btnDate1","",scBTNMODE_CUSTOMBLUE);
//--></script>
<script language="javascript">
<!--
var tax_rates = new Array();
tax_rates["1"] = 0;

function doRound(x, places) {
  return Math.round(x * Math.pow(10, places)) / Math.pow(10, places);
}

function getTaxRate() {
  var selected_value = document.forms["new_product"].products_tax_class_id.selectedIndex;
  var parameterVal = document.forms["new_product"].products_tax_class_id[selected_value].value;

  if ( (parameterVal > 0) && (tax_rates[parameterVal] > 0) ) {
    return tax_rates[parameterVal];
  } else {
    return 0;
  }
}

function updateGross() {
  var taxRate = getTaxRate();
  var grossValue = document.forms["new_product"].products_price.value;

  if (taxRate > 0) {
    grossValue = grossValue * ((taxRate / 100) + 1);
  }

  document.forms["new_product"].products_price_gross.value = doRound(grossValue, 4);
}

function updateNet() {
  var taxRate = getTaxRate();
  var netValue = document.forms["new_product"].products_price_gross.value;

  if (taxRate > 0) {
    netValue = netValue / ((taxRate / 100) + 1);
  }

  document.forms["new_product"].products_price.value = doRound(netValue, 4);
}
//--></script>
</head>
<body>
<!-- body //-->
<table border="0" width="100%" cellspacing="2" cellpadding="2">
  <tr>
<!-- body_text //-->
    <td width="100%" valign="top">
    <form name="new_product" action="http://localhost/admin/product.php?cPath=65&product_type=1&action=new_product_preview" method="post" enctype="multipart/form-data"><input type="hidden" name="securityToken" value="b255aeb70d84e275d2c8128fff6c0193" />
    <table border="0" width="100%" cellspacing="0" cellpadding="2">
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr>

            <td class="pageHeading">商品的分类: &quot;杯具&quot;</td>
            <td class="pageHeading" align="right"><img src="images/pixel_trans.gif" border="0" alt="" width="57" height="40"></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
      </tr>

      <tr>
        <td class="main" align="right"><input type="hidden" name="products_date_added" value="2009-12-24" /><input type="image" src="images/buttons/schinese/button_preview.gif" border="0" alt="预览" title=" 预览 ">&nbsp;&nbsp;<a href="http://localhost/admin/categories.php?cPath=65"><img src="includes/languages/schinese/images/buttons/button_cancel.gif" border="0" alt="取消" title=" 取消 "></a></td>
      </tr>
      <tr>
        <td><table border="0" cellspacing="0" cellpadding="2">
          <tr>
            <td class="main">商品主分类:</td>
            <td class="main"> ID 65 杯具          </tr>

          <tr>
            <td colspan="2" class="main"><strong>备注: 主分类用于定价，分类影响链接商品的价格。例如促销</strong></td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="100%" height="2"></td>
          </tr>
<input type="hidden" name="master_categories_id" /><input type="hidden" name="products_discount_type" value="0" /><input type="hidden" name="products_discount_type_from" value="0" /><input type="hidden" name="products_price_sorter" value="0" />          <tr>
            <td colspan="2" class="main" align="center"></td>

          <tr>
            <td class="main">商品状态:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="radio" name="products_status" value="1" checked="checked" />&nbsp;有货&nbsp;<input type="radio" name="products_status" value="0" />&nbsp;缺货</td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>

          </tr>
          <tr>
            <td class="main">到货日期:<br /><small>(YYYY-MM-DD)</small></td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<script language="javascript">dateAvailable.writeControl(); dateAvailable.dateFormat="yyyy-MM-dd";</script></td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>

          </tr>
          <tr>
            <td class="main">商品厂商:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<select rel="dropdown" name="manufacturers_id">
  <option value="" selected="selected">无</option>
  <option value="6">Canon</option>
  <option value="4">Fox</option>

  <option value="8">GT Interactive</option>
  <option value="9">Hewlett Packard</option>
  <option value="5">Logitech</option>
  <option value="1">Matrox</option>
  <option value="2">Microsoft</option>
  <option value="7">Sierra</option>

  <option value="3">Warner</option>
</select>
</td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>
          <tr>
            <td class="main">商品名称:</td>

            <td class="main">&nbsp;<input type="text" name="products_name[2]" size = "51" maxlength= "192" /></td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
            
          </tr>

          <tr>
            <td class="main">免费商品:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="radio" name="product_is_free" value="1" />&nbsp;是&nbsp;&nbsp;<input type="radio" name="product_is_free" value="0" checked="checked" />&nbsp;否 </td>
          </tr>
          <tr>
            <td class="main">价格面议:</td>

            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="radio" name="product_is_call" value="1" />&nbsp;是&nbsp;&nbsp;<input type="radio" name="product_is_call" value="0" checked="checked" />&nbsp;否 </td>
          </tr>

          <tr>
            <td class="main">按属性定价:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="radio" name="products_priced_by_attribute" value="1" />&nbsp;是&nbsp;&nbsp;<input type="radio" name="products_priced_by_attribute" value="0" checked="checked" />&nbsp;否 </td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>
          <tr bgcolor="#ebebff">
            <td class="main">税种:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<select rel="dropdown" name="products_tax_class_id" onchange="updateGross()">
  <option value="0" selected="selected">无</option>

  <option value="1">附加购物税</option>
</select>
</td>
          </tr>
          <tr bgcolor="#ebebff">
            <td class="main">价格(基本价):</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="text" name="products_price" onKeyUp="updateGross()" /></td>
          </tr>
          <tr bgcolor="#ebebff">

            <td class="main">价格(含税价):</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="text" name="products_price_gross" OnKeyUp="updateNet()" /></td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>
          <tr>
            <td class="main">虚拟商品:</td>

            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="radio" name="products_virtual" value="1" />&nbsp;是, 不要送货地址&nbsp;<input type="radio" name="products_virtual" value="0" checked="checked" />&nbsp;否, 需要送货地址 </td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>
          <tr>
            <td class="main" valign="top">免运费:</td>

            <td class="main" valign="top"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="radio" name="product_is_always_free_shipping" value="1" />&nbsp;是&nbsp;<input type="radio" name="product_is_always_free_shipping" value="0" checked="checked" />&nbsp;否<br /><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="radio" name="product_is_always_free_shipping" value="2" />&nbsp;特定, 可下载商品需要配送地址 </td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>
          <tr>
            <td class="main">显示数量方框:</td>

            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="radio" name="products_qty_box_status" value="1" checked="checked" />&nbsp;是&nbsp;<input type="radio" name="products_qty_box_status" value="0" />&nbsp;否 </td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>

          <tr>
            <td class="main">最少购买数量:</td>

            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="text" name="products_quantity_order_min" value="1" /></td>
          </tr>

          <tr>
            <td class="main">最多购买数量:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="text" name="products_quantity_order_max" value="0" />&nbsp;&nbsp;0 = 无限制, 1 = 无装箱数量</td>
          </tr>

          <tr>

            <td class="main">购买数量单位:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="text" name="products_quantity_order_units" value="1" /></td>
          </tr>

          <tr>
            <td class="main">允许属性混合:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="radio" name="products_quantity_mixed" value="1" checked="checked" />&nbsp;是&nbsp;&nbsp;<input type="radio" name="products_quantity_mixed" value="0" />&nbsp;否</td>

          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>

<script language="javascript"><!--
updateGross();
//--></script>
          <tr>
            <td class="main" valign="top">商品简介:</td>

            <td colspan="2"><table border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td class="main" width="25" valign="top">&nbsp;</td>
                <td class="main" width="100%">
        <textarea name="products_description[2]" wrap="soft" cols="100%" rows="30"></textarea>        </td>
              </tr>
            </table></td>
          </tr>

          <tr>
            <td class="main" valign="top"></td>
            <td colspan="2">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>
          <tr>
            <td class="main">商品数量:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="text" name="products_quantity" /></td>

          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>
          <tr>
            <td class="main">商品型号:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="text" name="products_model" size = "51" maxlength= "96" /></td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_black.gif" border="0" alt="" width="100%" height="3"></td>
          </tr>

          <tr>
            <td class="main" colspan="2"><table width="100%" border="0" cellspacing="0" cellpadding="0">

              <tr>
                <td class="main">商品图像:</td>
                <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="file" name="products_image"  size="50"  />&nbsp;图像名称: &nbsp;NONE<input type="hidden" name="products_previous_image" /></td>
                <td valign = "center" class="main">上传目录:&nbsp;<select rel="dropdown" name="img_dir">
  <option value="" selected="selected">Main Directory</option>
  <option value="attributes/">attributes</option>

  <option value="banners/">banners</option>
  <option value="categories/">categories</option>
  <option value="dvd/">dvd</option>
  <option value="gift_certificates/">gift_certificates</option>
  <option value="gt_interactive/">gt_interactive</option>
  <option value="hewlett_packard/">hewlett_packard</option>

  <option value="large/">large</option>
  <option value="manufacturers/">manufacturers</option>
  <option value="matrox/">matrox</option>
  <option value="medium/">medium</option>
  <option value="microsoft/">microsoft</option>
  <option value="samples/">samples</option>

  <option value="sierra/">sierra</option>
  <option value="uploads/">uploads</option>
</select>
</td>
						  </tr>
              <tr>
                <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"></td>
                <td class="main" valign="top"><strong>删除图像吗?</strong> 说明: 从商品中删除，但不删除图像文件: <input type="radio" name="image_delete" value="0" checked="checked" />&nbsp;否 <input type="radio" name="image_delete" value="1" />&nbsp;是</td>

	  	    	  </tr>

              <tr>
                <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15"></td>
                <td colspan="3" class="main" valign="top"><strong>覆盖原有图像吗?</strong>  <input type="radio" name="overwrite" value="0" />&nbsp;否 <input type="radio" name="overwrite" value="1" checked="checked" />&nbsp;是                  <br /><br /><strong>或从服务器上选择已有图像文件，文件名:</strong>&nbsp;<input type="text" name="products_image_manual" /></td>
              </tr>
            </table></td>

          </tr>

          <tr>
            <td colspan="2"><img src="images/pixel_black.gif" border="0" alt="" width="100%" height="3"></td>
          </tr>

          <tr>
            <td class="main">商品网址:<br /><small><small>(不要 http://)</small></small></td>
            <td class="main">&nbsp;<input type="text" name="products_url[2]" size = "51" maxlength= "765" /></td>

          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>
          <tr>

            <td class="main">商品重量:</td>
            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="text" name="products_weight" /></td>
          </tr>
          <tr>
            <td colspan="2"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
          </tr>
          <tr>
            <td class="main">排序:</td>

            <td class="main"><img src="images/pixel_trans.gif" border="0" alt="" width="24" height="15">&nbsp;<input type="text" name="products_sort_order" value="0" /></td>
          </tr>
        </table></td>
      </tr>
      <tr>
        <td><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="10"></td>
      </tr>
      <tr>
        <td class="main" align="right"><input type="hidden" name="products_date_added" value="2009-12-24" /><input type="image" src="includes/languages/schinese/images/buttons/button_preview.gif" border="0" alt="预览" title=" 预览 ">&nbsp;&nbsp;<a href="http://localhost/admin/categories.php?cPath=65"><img src="includes/languages/schinese/images/buttons/button_cancel.gif" border="0" alt="取消" title=" 取消 "></a></td>

      </tr>
    </table></form>
    </td>
<!-- body_text_eof //-->
  </tr>
</table>

</body>
</html>
