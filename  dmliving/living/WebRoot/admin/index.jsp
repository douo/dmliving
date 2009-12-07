<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh">
<head>
<base href="${basePath }" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>magicalshop</title>
</head>
<body>
<div id="colone">
  <div class="reportBox">
    <div class="header">商品统计 </div>
    <div class="row"><span class="left">点击开始日期:</span><span class="rigth"> 2009/11/27</span></div>
    <div class="row"><span class="left">点击计数:</span><span class="rigth"> 75</span></div>
    <div class="row"><span class="left">客户:</span><span class="rigth"> 2</span></div>
    <div class="row"><span class="left">商品: </span><span class="rigth">125</span></div>
    <div class="row"><span class="left">未激活商品: </span><span class="rigth">0</span></div>
    <div class="row"><span class="left">顾客评论:</span><span class="rigth">1</span></div>
    <div class="row"><span class="left"><a href="http://localhost/admin/reviews.jsp?status=1">等待审批的评论:</a></span><span class="rigth">0</span></div>
    <div class="row"><span class="left">电子商情订阅:</span><span class="rigth"> 2</span></div>
    <br />
    <div class="row"><span class="left">过期特价商品</span><span class="rigth"> 2</span></div>
    <div class="row"><span class="left">特价商品</span><span class="rigth"> 27</span></div>
    <div class="row"><span class="left">过期推荐商品</span><span class="rigth"> 1</span></div>
    <div class="row"><span class="left">推荐商品</span><span class="rigth"> 9</span></div>
    <div class="row"><span class="left">过期促销商品</span><span class="rigth"> 2</span></div>
    <div class="row"><span class="left">促销商品</span><span class="rigth"> 6</span></div>
  </div>
  <div class="reportBox">
    <div class="header">订单状态 </div>
    <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?selected_box=customers&status=2">处理中</a>:</span><span class="rigth"> 0</span> </div>
    <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?selected_box=customers&status=3">已发货</a>:</span><span class="rigth"> 0</span> </div>
    <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?selected_box=customers&status=4">已更新</a>:</span><span class="rigth"> 0</span> </div>
    <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?selected_box=customers&status=1">等待中</a>:</span><span class="rigth"> 6</span> </div>
  </div>
</div>
<div id="coltwo">
  <div class="reportBox">
    <div class="header">新客户: </div>
    <div class="row"><span class="left"><a href="http://localhost/admin/customers.jsp?search=chen&origin=index" class="contentlink">donglin chen</a></span><span class="rigth"> 2009/11/27 </span></div>
    <div class="row"><span class="left"><a href="http://localhost/admin/customers.jsp?search=chen&origin=index" class="contentlink">donglin chen</a></span><span class="rigth"> 2009/11/27 </span></div>
  </div>
  <div class="reportBox">
    <div class="header">最近2天的统计<span class="rigth"> &nbsp;&nbsp;&nbsp;Session - 总计</span></div>
    <div class="row"><span class="left">2009/11/28</span><span class="rigth"> 2 - 3</span> </div>
    <div class="row"><span class="left">2009/11/27</span><span class="rigth"> 2 - 72</span> </div>
  </div>
</div>
<div id="colthree">
  <div class="reportBox">
    <div class="header">新订单: </div>
    <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?oID=6&origin=index" class="contentlink"> donglin chen</a></span><span class="center">499.99元</span><span class="rigth"> 2009/11/28 </span></div>
    <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?oID=5&origin=index" class="contentlink"> donglin chen</a></span><span class="center">499.99元</span><span class="rigth"> 2009/11/28 </span></div>
    <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?oID=4&origin=index" class="contentlink"> donglin chen</a></span><span class="center">499.99元</span><span class="rigth"> 2009/11/28 </span></div>
    <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?oID=3&origin=index" class="contentlink"> donglin chen</a></span><span class="center">499.99元</span><span class="rigth"> 2009/11/28 </span></div>
    <div class="row"><span class="left"><a href="http://localhost/admin/orders.jsp?oID=2&origin=index" class="contentlink"> donglin chen</a></span><span class="center">499.99元</span><span class="rigth"> 2009/11/28 </span></div>
  </div>
</div>
</body>
</html>
