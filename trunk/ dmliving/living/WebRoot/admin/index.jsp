<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh">
<head>
<base href="${basePath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>magicalshop</title>
<script language="JavaScript" src="js/menu.js" type="text/JavaScript"></script>
<link href="css/admin/stylesheet.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/admin/cssjsmenuhover.css" media="all" id="hoverJS" />
<script type="text/javascript">
  <!--
  function init()
  {
    cssjsmenu('navbar');
    if (document.getElementById)
    {
      var kill = document.getElementById('hoverJS');
      kill.disabled = true;
    }
  }
  // -->
</script>
</head>
<body onload="init()">
<!-- header //-->
<!-- All HEADER_ definitions in the columns below are defined in includes/languages/english.jsp //-->
<table border="0" width="100%" cellspacing="0" cellpadding="0" class="header">

  <tr>
<!-- modified by zen-cart.cn //-->
    <td align="left" valign="top"></td>
<!-- end of modification //-->
    <td colspan="2" align="left"><table width="100%"><tr>
    <td align="left" class="main" valign="top"></td>
    <td align="right" class="main" valign="top">Power By No.10&trade;.</td>
    </tr></table></td>

  </tr>
</table>
<table border="0" cellspacing="0" cellpadding="0" width="100%">
  <tr class="headerBar" height="20" width="100%">

    <td class="headerBarContent" align="left">
      <form name="languages" action="" method="get"><input type="hidden" name="securityToken" value="27fe92d6da53168fac8a394ccf5c1d24" />选择语言:&nbsp;&nbsp;<select rel="dropdown" name="language" onChange="this.form.submit();">
  <option value="gb" selected="selected">简体中文</option>
  <option value="en">English</option>

</select>
</form>
	</td>
    <td class="headerBarContent" align="center"><b>Sun, 06 Dec 2009 06:31:43 +0000GMT&nbsp;[127.0.0.1 ]&nbsp;</b></td>
    <td class="headerBarContent" align="right"><a href="http://localhost/admin/index.jsp" class="headerLink">管理首页</a>&nbsp;|&nbsp;<a href="http://localhost/index.jsp?main_page=" class="headerLink" target="_blank">商店首页</a>&nbsp;|&nbsp;<a href="http://www.zen-cart.cn/" class="headerLink" target="_blank">支持网站</a>&nbsp;|&nbsp;<a href="http://localhost/admin/server_info.jsp" class="headerLink">版本</a>&nbsp;|&nbsp;<a href="http://localhost/admin/logoff.jsp" class="headerLink">退出</a>&nbsp;</td>
  </tr>
</table>
<!-- Menu bar #2. -->
<div id="navbar">
<ul class="nde-menu-system" onmouseover="hide_dropdowns('in')" onmouseout="hide_dropdowns('out')">
<!-- configuration //-->
<li class="submenu"> 
<a target="_top" href="http://localhost/admin/alt_nav.jsp">商店设置</a><ul>
<li><a href="http://localhost/admin/configuration.jsp?gID=1">基本设置</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=2">最小值</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=3">最大值</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=4">图像参数</a></li>

<li><a href="http://localhost/admin/configuration.jsp?gID=5">客户资料</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=7">配送参数</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=8">商品列表</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=9">库存选项</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=10">日志选项</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=12">电子邮件</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=13">属性设置</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=14">GZip压缩</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=15">Sessions</a></li>

<li><a href="http://localhost/admin/configuration.jsp?gID=11">条款选项</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=16">礼券和优惠券</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=17">信用卡</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=18">商品信息</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=19">布局设置</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=20">网站维护</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=21">新进商品</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=22">推荐商品</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=23">所有商品</a></li>

<li><a href="http://localhost/admin/configuration.jsp?gID=24">商品索引</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=25">定义页面</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=30">简易页面设置</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=31">快速更新</a></li>
<li><a href="http://localhost/admin/configuration.jsp?gID=32">搜索引擎优化</a></li>
</ul>
</li>
<!-- configuration_eof //--><!-- catalog //-->
<li class="submenu"><a target="_top" href="http://localhost/admin/alt_nav.jsp">商品管理</a><UL>
<li><a href="http://localhost/admin/categories.jsp">商品分类</a></li>

<li><a href="http://localhost/admin/product_types.jsp">商品类型</a></li>
<li><a href="http://localhost/admin/products_price_manager.jsp">价格管理</a></li>
<li><a href="http://localhost/admin/options_name_manager.jsp">选项名称</a></li>
<li><a href="http://localhost/admin/options_values_manager.jsp">选项内容</a></li>
<li><a href="http://localhost/admin/attributes_controller.jsp">属性控制</a></li>
<li><a href="http://localhost/admin/downloads_manager.jsp">下载管理</a></li>
<li><a href="http://localhost/admin/option_name.jsp">选项名称排序</a></li>
<li><a href="http://localhost/admin/option_values.jsp">选项内容排序 </a></li>
<li><a href="http://localhost/admin/manufacturers.jsp">厂商管理</a></li>

<li><a href="http://localhost/admin/reviews.jsp">评论管理</a></li>
<li><a href="http://localhost/admin/specials.jsp">特价商品</a></li>
<li><a href="http://localhost/admin/featured.jsp">推荐商品</a></li>
<li><a href="http://localhost/admin/salemaker.jsp">促销管理</a></li>
<li><a href="http://localhost/admin/products_expected.jsp">预售商品</a></li>
<li><a href="http://localhost/admin/quick_updates.jsp">快速更新</a></li>
</UL>
</li>
<!-- catalog_eof //-->
<!-- modules //-->
<li class="submenu"><a target="_top" href="http://localhost/admin/alt_nav.jsp">模块管理</a><UL>

<li><a href="http://localhost/admin/modules.jsp?set=payment">支付模块</a></li>
<li><a href="http://localhost/admin/modules.jsp?set=shipping">配送模块</a></li>
<li><a href="http://localhost/admin/modules.jsp?set=ordertotal">总额计算</a></li>
</UL>
</li>
<!-- modules_eof //-->
<!-- customers //-->
<li class="submenu"><a target="_top" href="http://localhost/admin/alt_nav.jsp">客户管理</a><UL>
<li><a href="http://localhost/admin/customers.jsp">客户资料</a></li>
<li><a href="http://localhost/admin/orders.jsp">订单管理</a></li>
<li><a href="http://localhost/admin/group_pricing.jsp">团体价格</a></li>

<li><a href="http://localhost/admin/paypal.jsp">PayPal付款通知</a></li>
</UL>
</li>
<!-- customers_eof //-->
<!-- taxes //-->
<li class="submenu"><a target="_top" href="http://localhost/admin/alt_nav.jsp">地区税率</a><UL>
<li><a href="http://localhost/admin/countries.jsp">国家代码</a></li>
<li><a href="http://localhost/admin/zones.jsp">地区代码</a></li>
<li><a href="http://localhost/admin/geo_zones.jsp">地区设置</a></li>
<li><a href="http://localhost/admin/tax_classes.jsp">税率种类</a></li>
<li><a href="http://localhost/admin/tax_rates.jsp">税率管理</a></li>

</UL>
</li>
<!-- taxes_eof //-->
<!-- localization //-->
<li class="submenu"><a target="_top" href="http://localhost/admin/alt_nav.jsp">界面设定</a><UL>
<li><a href="http://localhost/admin/currencies.jsp">货币代码</a></li>
<li><a href="http://localhost/admin/languages.jsp">语言代码</a></li>
<li><a href="http://localhost/admin/orders_status.jsp">订单状态</a></li>
</UL>
</li>
<!-- localization_eof //-->
<!-- reports //-->
<li class="submenu"><a target="_top" href="http://localhost/admin/alt_nav.jsp">分析系统</a><UL>

<li><a href="http://localhost/admin/stats_products_viewed.jsp">访问统计</a></li>
<li><a href="http://localhost/admin/stats_products_purchased.jsp">销售统计</a></li>
<li><a href="http://localhost/admin/stats_customers.jsp">订单统计</a></li>
<li><a href="http://localhost/admin/stats_products_lowstock.jsp">商品库存</a></li>
<li><a href="http://localhost/admin/stats_customers_referrals.jsp">客户推荐</a></li>
<li><a href="http://localhost/admin/stats_sales_report.jsp">销售分析</a></li>
</UL>
</li>
<!-- reports_eof //-->
<!-- tools //-->
<li class="submenu"><a target="_top" href="http://localhost/admin/alt_nav.jsp">工具</a><UL>

<li><a href="http://localhost/admin/template_select.jsp">模板选择</a></li>
<li><a href="http://localhost/admin/layout_controller.jsp">外观控制</a></li>
<li><a href="http://localhost/admin/banner_manager.jsp">广告管理</a></li>
<li><a href="http://localhost/admin/mail.jsp">电子邮件</a></li>
<li><a href="http://localhost/admin/newsletters.jsp">电子商情/商品通知</a></li>
<li><a href="http://localhost/admin/server_info.jsp">服务器/版本信息</a></li>
<li><a href="http://localhost/admin/whos_online.jsp">在线名单</a></li>
<li><a href="http://localhost/admin/admin.jsp">管理设置</a></li>
<li><a href="http://localhost/admin/email_welcome.jsp">欢迎邮件</a></li>

<li><a href="http://localhost/admin/store_manager.jsp">商店管理</a></li>
<li><a href="http://localhost/admin/developers_tool_kit.jsp">开发工具</a></li>
<li><a href="http://localhost/admin/ezpages.jsp">简易页面管理</a></li>
<li><a href="http://localhost/admin/define_pages_editor.jsp">页面编辑</a></li>
<li><a href="http://localhost/admin/sqlpatch.jsp">安装SQL脚本</a></li>
<li><a href="http://localhost/admin/backup_mysql.jsp">数据库备份</a></li>
<li><a href="http://localhost/admin/image_handler.jsp">图像管理</a></li>
</UL>
</li>
<!-- tools_eof //-->

<!-- gv_admin //-->
<li class="submenu"><a target="_top" href="http://localhost/admin/alt_nav.jsp">礼券优惠券</a><UL>
<li><a href="http://localhost/admin/coupon_admin.jsp">优惠券管理</a></li>
<li><a href="http://localhost/admin/gv_queue.jsp">礼券队列</a></li>
<li><a href="http://localhost/admin/gv_mail.jsp">发送礼券</a></li>
<li><a href="http://localhost/admin/gv_sent.jsp">已发礼券</a></li>
</UL>
</li>
<!-- gv_admin_eof //-->
<!-- extras_dhtml //-->
<li class="submenu"><a target="_top" href="http://localhost/admin/alt_nav.jsp">其他</a><UL>

<li><a href="http://localhost/admin/record_artists.jsp">歌手档案</a></li>
<li><a href="http://localhost/admin/record_company.jsp">唱片公司</a></li>
<li><a href="http://localhost/admin/music_genre.jsp">音乐类型</a></li>
<li><a href="http://localhost/admin/media_manager.jsp">媒体管理</a></li>
<li><a href="http://localhost/admin/media_types.jsp">媒体类型</a></li>
</UL>
</li>
<!-- extras_dhtml_eof //-->
</ul>
</div>
<!-- header_eof //-->
 <div id="colone">

<div class="reportBox">
<div class="header">商品统计 </div>
<div class="row"><span class="left">点击开始日期:</span><span class="rigth"> 2009/11/27</span></div><div class="row"><span class="left">点击计数:</span><span class="rigth"> 75</span></div><div class="row"><span class="left">客户:</span><span class="rigth"> 2</span></div><div class="row"><span class="left">商品: </span><span class="rigth">125</span></div><div class="row"><span class="left">未激活商品: </span><span class="rigth">0</span></div><div class="row"><span class="left">顾客评论:</span><span class="rigth">1</span></div><div class="row"><span class="left"><a href="http://localhost/admin/reviews.jsp?status=1">等待审批的评论:</a></span><span class="rigth">0</span></div><div class="row"><span class="left">电子商情订阅:</span><span class="rigth"> 2</span></div><br /><div class="row"><span class="left">过期特价商品</span><span class="rigth"> 2</span></div><div class="row"><span class="left">特价商品</span><span class="rigth"> 27</span></div><div class="row"><span class="left">过期推荐商品</span><span class="rigth"> 1</span></div><div class="row"><span class="left">推荐商品</span><span class="rigth"> 9</span></div><div class="row"><span class="left">过期促销商品</span><span class="rigth"> 2</span></div><div class="row"><span class="left">促销商品</span><span class="rigth"> 6</span></div> </div>

 <div class="reportBox">
   <div class="header">订单状态 </div>
  <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?selected_box=customers&status=2">处理中</a>:</span><span class="rigth"> 0</span>   </div><div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?selected_box=customers&status=3">已发货</a>:</span><span class="rigth"> 0</span>   </div><div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?selected_box=customers&status=4">已更新</a>:</span><span class="rigth"> 0</span>   </div><div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?selected_box=customers&status=1">等待中</a>:</span><span class="rigth"> 6</span>   </div>  </div>

</div>
<div id="coltwo">
<div class="reportBox">
<div class="header">新客户: </div>
                <div class="row"><span class="left"><a href="http://localhost/admin/customers.jsp?search=chen&origin=index" class="contentlink">donglin chen</a></span><span class="rigth">
2009/11/27              </span></div>
              <div class="row"><span class="left"><a href="http://localhost/admin/customers.jsp?search=chen&origin=index" class="contentlink">donglin chen</a></span><span class="rigth">
2009/11/27              </span></div>
</div>

 <div class="reportBox">
   <div class="header">最近2天的统计<span class="rigth"> &nbsp;&nbsp;&nbsp;Session - 总计</span></div>
                <div class="row"><span class="left">2009/11/28</span><span class="rigth"> 2 - 3</span>   </div>
              <div class="row"><span class="left">2009/11/27</span><span class="rigth"> 2 - 72</span>   </div>

</div>
</div>
<div id="colthree">
<div class="reportBox">
<div class="header">新订单: </div>
                <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?oID=6&origin=index" class="contentlink"> donglin chen</a></span><span class="center">499.99元</span><span class="rigth">
2009/11/28              </span></div>
              <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?oID=5&origin=index" class="contentlink"> donglin chen</a></span><span class="center">499.99元</span><span class="rigth">

2009/11/28              </span></div>
              <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?oID=4&origin=index" class="contentlink"> donglin chen</a></span><span class="center">499.99元</span><span class="rigth">
2009/11/28              </span></div>
              <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?oID=3&origin=index" class="contentlink"> donglin chen</a></span><span class="center">499.99元</span><span class="rigth">
2009/11/28              </span></div>
              <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?oID=2&origin=index" class="contentlink"> donglin chen</a></span><span class="center">499.99元</span><span class="rigth">

2009/11/28              </span></div>
</div>
</div>
<!-- The following copyright announcement is in compliance
to section 2c of the GNU General Public License, and
thus can not be removed, or can only be modified
appropriately.

Please leave this comment intact together with the
following copyright announcement. //-->

<div class="copyrightrow"><a href="http://www.zen-cart.cn" target="_blank"><img src="images/small_zen_logo.gif" alt="Zen Cart:: 电子商务的艺术" border="0" /></a><br /><br />版权所有 &copy; 2003-2009 <a href="http://www.zen-cart.cn" target="_blank">Zen Cart中文版</a></div><div class="warrantyrow"><br /><br />Zen Cart is derived from: Copyright &copy; 2003 osCommerce<br />This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY;<br />without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE<br />and is redistributable under the <a href="http://www.zen-cart.com/license/2_0.txt" target="_blank">GNU General Public License</a><br />

</div>
</body>
</html>
