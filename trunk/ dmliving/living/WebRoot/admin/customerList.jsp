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
<!-- body //-->
<table border="0" width="100%" cellspacing="2" cellpadding="2">
  <tr>
<!-- body_text //-->
    <td width="100%" valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr><form name="search" action="http://localhost/admin/customers.jsp" method="get"><input type="hidden" name="securityToken" value="6f1bc7277f217942bf2016f2e649abe9" />            <td class="pageHeading">客户资料</td>
            <td class="pageHeading" align="right"><img src="images/pixel_trans.gif" border="0" alt="" width="1" height="40"></td>

            <td class="smallText" align="right">
搜索:  <input type="text" name="search" />            </td>
          </form></tr>
        </table></td>
      </tr>
      <tr>
        <td><table border="0" width="100%" cellspacing="0" cellpadding="0">
          <tr>

             <td valign="top"><table border="0" width="100%" cellspacing="0" cellpadding="2">
              <tr class="dataTableHeadingRow">
                <td class="dataTableHeadingContent" align="center" valign="top">
                  编号                </td>
<!-- modified by zen-cart.cn //-->
                <td class="dataTableHeadingContent" align="left" valign="top">
                  姓氏<br>
                  <a href="http://localhost/admin/customers.jsp?list_order=firstname"><span class="SortOrderHeaderLink">Asc</b></a>&nbsp;

                  <a href="http://localhost/admin/customers.jsp?list_order=firstname-desc"><span class="SortOrderHeaderLink">Desc</span></a>
                </td>
                <td class="dataTableHeadingContent" align="left" valign="top">
                  名字<br>
                  <a href="http://localhost/admin/customers.jsp?list_order=lastname"><span class="SortOrderHeaderLink">Asc</b></a>&nbsp;
                  <a href="http://localhost/admin/customers.jsp?list_order=lastname-desc"><span class="SortOrderHeaderLink">Desc</b></a>
                </td>

<!-- end //-->
                <td class="dataTableHeadingContent" align="left" valign="top">
                  公司<br>
                  <a href="http://localhost/admin/customers.jsp?list_order=company"><span class="SortOrderHeaderLink">Asc</b></a>&nbsp;
                  <a href="http://localhost/admin/customers.jsp?list_order=company-desc"><span class="SortOrderHeaderLink">Desc</b></a>
                </td>
                <td class="dataTableHeadingContent" align="left" valign="top">
                  创建帐号<br>

                  <a href="http://localhost/admin/customers.jsp?list_order=id-asc"><span class="SortOrderHeaderLink">Asc</b></a>&nbsp;
                  <a href="http://localhost/admin/customers.jsp?list_order=id-desc"><span class="SortOrderHeaderLink">Desc</b></a>
                </td>

                <td class="dataTableHeadingContent" align="left" valign="top">
                  最后登录<br>
                  <a href="http://localhost/admin/customers.jsp?list_order=login-asc"><span class="SortOrderHeaderLink">Asc</b></a>&nbsp;

                  <a href="http://localhost/admin/customers.jsp?list_order=login-desc"><span class="SortOrderHeaderLink">Desc</b></a>
                </td>

                <td class="dataTableHeadingContent" align="left" valign="top">
                  团体价格组<br>
                  <a href="http://localhost/admin/customers.jsp?list_order=group-asc"><span class="SortOrderHeaderLink">Asc</b></a>&nbsp;
                  <a href="http://localhost/admin/customers.jsp?list_order=group-desc"><span class="SortOrderHeaderLink">Desc</b></a>

                </td>

                <td class="dataTableHeadingContent" align="left" valign="top" width="75">
                  礼券余额<br>
                  <a href="http://localhost/admin/customers.jsp?list_order=gv_balance-asc"><span class="SortOrderHeaderLink">Asc</b></a>&nbsp;
                  <a href="http://localhost/admin/customers.jsp?list_order=gv_balance-desc"><span class="SortOrderHeaderLink">Desc</b></a>
                </td>

                <td class="dataTableHeadingContent" align="center" valign="top">
                  授权状态<br>
                  <a href="http://localhost/admin/customers.jsp?list_order=approval-asc"><span class="SortOrderHeaderLink">Asc</b></a>&nbsp;
                  <a href="http://localhost/admin/customers.jsp?list_order=approval-desc"><span class="SortOrderHeaderLink">Desc</b></a>
                </td>

                <td class="dataTableHeadingContent" align="right" valign="top">操作&nbsp;</td>

              </tr>
          <tr id="defaultSelected" class="dataTableRowSelected" onmouseover="rowOverEffect(this)" onmouseout="rowOutEffect(this)" onclick="document.location.href='http://localhost/admin/customers.jsp?page=1&cID=2&action=edit'">
                <td class="dataTableContent" align="right">2 | 1 共  1</td>
<!-- modified by zen-cart.cn //-->
                <td class="dataTableContent">donglin</td>
                <td class="dataTableContent">chen</td>
<!-- end //-->
                <td class="dataTableContent"></td>

                <td class="dataTableContent">2009/11/27</td>
                <td class="dataTableContent"></td>
                <td class="dataTableContent">无</td>
                <td class="dataTableContent" align="right">0.00元</td>
                <td class="dataTableContent" align="center"><a href="http://localhost/admin/customers.jsp?action=status&current=0&cID=2&page=1"><img src="images/icon_green_on.gif" border="0" alt="状态 - 开启" title=" 状态 - 开启 "></a></td>
                <td class="dataTableContent" align="right"><img src="images/icon_arrow_right.gif" border="0" alt="">&nbsp;</td>
              </tr>

          <tr class="dataTableRow" onmouseover="rowOverEffect(this)" onmouseout="rowOutEffect(this)" onclick="document.location.href='http://localhost/admin/customers.jsp?page=1&cID=1'">
                <td class="dataTableContent" align="right">1 | 1 共  1</td>
<!-- modified by zen-cart.cn //-->
                <td class="dataTableContent">donglin</td>
                <td class="dataTableContent">chen</td>
<!-- end //-->
                <td class="dataTableContent"></td>
                <td class="dataTableContent">2009/11/27</td>

                <td class="dataTableContent"></td>
                <td class="dataTableContent">无</td>
                <td class="dataTableContent" align="right">0.00元</td>
                <td class="dataTableContent" align="center"><a href="http://localhost/admin/customers.jsp?action=status&current=0&cID=1&page=1"><img src="images/icon_green_on.gif" border="0" alt="状态 - 开启" title=" 状态 - 开启 "></a></td>
                <td class="dataTableContent" align="right"><a href="http://localhost/admin/customers.jsp?page=1&cID=1&page=1"><img src="images/icon_info.gif" border="0" alt="信息" title=" 信息 "></a>&nbsp;</td>
              </tr>
              <tr>
                <td colspan="5"><table border="0" width="100%" cellspacing="0" cellpadding="2">

                  <tr>
                    <td class="smallText" valign="top">显示<b>1</b>到<b>2</b> (共<b>2</b>个客户)</td>
                    <td class="smallText" align="right">第1页，共1页</td>
                  </tr>

                </table></td>
              </tr>
            </table></td>
            <td width="25%" valign="top">
<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr class="infoBoxHeading">
    <td class="infoBoxHeading"><b>编号2 donglin chen</b></td>
  </tr>
</table>

<table border="0" width="100%" cellspacing="0" cellpadding="2">
  <tr>
    <td align="center" class="infoBoxContent"><a href="http://localhost/admin/customers.jsp?page=1&cID=2&action=edit"><img src="images/buttons/schinese/button_edit.gif" border="0" alt="编辑" title=" 编辑 "></a> <a href="http://localhost/admin/customers.jsp?page=1&cID=2&action=confirm"><img src="images/buttons/schinese/button_delete.gif" border="0" alt="删除" title=" 删除 "></a><br /><a href="http://localhost/admin/orders.jsp?cID=2"><img src="images/buttons/schinese/button_orders.gif" border="0" alt="订单" title=" 订单 "></a> <a href="http://localhost/admin/mail.jsp?origin=customers.jsp&mode=NONSSL&selected_box=tools&customer=1032894940@qq.com&cID=2"><img src="images/buttons/schinese/button_email.gif" border="0" alt="电子邮件" title=" 电子邮件 "></a></td>
  </tr>
  <tr>
    <td class="infoBoxContent"><br />创建帐号: 2009/11/27</td>
  </tr>
  <tr>

    <td class="infoBoxContent"><br />最后修改: </td>
  </tr>
  <tr>
    <td class="infoBoxContent"><br />最后登录 </td>
  </tr>
  <tr>
    <td class="infoBoxContent"><br />登录次数: 0</td>

  </tr>
  <tr>
    <td class="infoBoxContent"><br />礼券余额 0.00元</td>
  </tr>
  <tr>
    <td class="infoBoxContent"><br />订单数: 6</td>
  </tr>
  <tr>

    <td class="infoBoxContent">最后订单: 2009/11/28<br />总额: 499.99元</td>
  </tr>
  <tr>
    <td class="infoBoxContent"><br />所在国家或地区: 中国</td>
  </tr>
  <tr>
    <td class="infoBoxContent"><br />评论次数: 0</td>

  </tr>
  <tr>
    <td class="infoBoxContent"><br />客户推荐代码<br />第一张优惠券 </td>
  </tr>
</table>
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
