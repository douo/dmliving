<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: Shopping Cart</title>
<script type="text/javascript" src="js/jquery/jquery.js"></script>
<script>
function updateCar(carId, obj) {
	if(obj.value == "") {
		alert("请输入购买数量！");
		return;
	}
	$.ajax({
		url: "car/updateCar.action?shoppingCart.shopingCarId="+carId+"&shoppingCart.productNumber="+obj.value,
   		dataType: 'json',
  		success:function(data) {
   			if(data.success==true){
   				alert("更新成功");
   			}
   			window.location.reload();
		}
	});
}
</script>
</head>
<body id="shoppingcartBody">
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
  <c:if test="${shoppingCars == '[]'}">
   <tbody><tr>
    <td valign="top">
	<!-- bof  breadcrumb -->
	<!-- eof breadcrumb -->
	<!-- bof upload alerts -->
	<!-- eof upload alerts -->
	<div id="shoppingCartDefault" class="centerColumn">
	<br/><br/>
	<h2 id="cartEmptyText">Your Shopping Cart is empty.</h2>
	<br/><br/>
	<!-- bof: featured products  -->
	<!-- eof: featured products  -->
	<!-- ** BEGIN PAYPAL EXPRESS CHECKOUT ** -->
	<!-- ** END PAYPAL EXPRESS CHECKOUT ** -->
	</div>
	</td>
  </tr>
</tbody>
   </c:if>
   <c:if test="${shoppingCars != '[]'}">
    <tr>
      <td valign="top"><!-- bof  breadcrumb -->
        <!-- eof breadcrumb -->
        <!-- bof upload alerts -->
        <!-- eof upload alerts -->
        <div class="centerColumn" id="shoppingCartDefault">
        <!-- <div class="forward"><a href="javascript:session_win();">[help (?)]</a></div> -->
        <table width="100%" border="0">
          <tr>
            <td><h1>Shopping Cart</h1></td>
            <td><div style="z-index: 1; float: left;" id="anim">Movie</div>
              <script type="text/javascript">
				var so = new SWFObject("flash/graphic_shoppingcart.swf", "movie", "650", "48", "8", "#000000");
				so.addParam("menu", "false");
				so.addParam("wmode", "opaque");
				so.write("anim");
			  </script></td>
          </tr>
        </table>
        <br />
        <form name="cart_quantity" action="" method="post">
          <div id="cartInstructionsDisplay" class="content"></div>
            <table  border="0" width="100%" cellspacing="0" cellpadding="0" id="cartContentsDisplay">
            <tr class="tableHeading">
              <td class="cart-header" width="100">Remove</td>
              <td width="5">&nbsp;</td>
              <td class="cart-header" width="400">Product(s)</td>
              <td width="5">&nbsp;</td>
              <td class="cart-header" width="100">Quantity</td>
              <td width="5">&nbsp;</td>
              <td class="cart-header" width="100">Unit</td>
              <td width="5">&nbsp;</td>
              <td class="cart-header" width="100">Total</td>
            </tr>
            <!-- Loop through all products /-->
            <c:set value="0.00" var="totalPrice"/>
            <c:forEach items="${shoppingCars }" var="shoppingCar" varStatus="counter">
            <c:if test="${!counter.first}">
            <tr class="tableHeading">
              <td class="cart-subheader" width="100">&nbsp;</td>
              <td width="5" class="cart-subheader-gap">&nbsp;</td>
              <td class="cart-subheader" width="400">&nbsp;</td>
              <td width="5" class="cart-subheader-gap">&nbsp;</td>
              <td class="cart-subheader" width="100">&nbsp;</td>
              <td width="5" class="cart-subheader-gap">&nbsp;</td>
              <td class="cart-subheader" width="100">&nbsp;</td>
              <td width="5" class="cart-subheader-gap">&nbsp;</td>
              <td class="cart-subheader" width="100">&nbsp;</td>
            </tr>
            </c:if>
            <c:if test="counter.count%2==0">
            	<tr class="rowEven">
            </c:if>
            <c:if test="counter.count%2==1">
            	<tr class="rowOdd">
            </c:if>
              <td colspan="2" style="padding-top: 5px;">
              <%--<input type="checkbox" name="cart_delete[]" value="98" /> --%>
              <a href="car/removeFromCar.action?shoppingCart.shopingCarId=${shoppingCar.shopingCarId }"><img src="images/icons/small_delete.gif" alt="Delete this item from the cart by clicking this icon." title=" Delete this item from the cart by clicking this icon. " width="24" height="32" /></a></td>
              <td colspan="2" style="padding-top: 5px; padding-right: 8px;"><table cellpadding="5" cellspacing="0" border="0">
                  <tr>
                    <td valign="top" width="118"><a href="product/showProduct.action?product.productId=${shoppingCar.product.productId}">
                      <div id="cartImage" class="back"><img src="${shoppingCar.product.imageUrl }" alt="${shoppingCar.product.name }" title=" ${shoppingCar.product.name } " width="116" height="116" /></div>
                      </a></td>
                    <td valign="top"><a href="product/showProduct.action?product.productId=${shoppingCar.product.productId}">
                      <div class="cart-prod">${shoppingCar.product.name }<span class="alert bold"></span></div>
                      </a></td>
                  </tr>
                </table></td>
              <td colspan="2" style="padding-top: 5px;"><input type="text" id="productNumber" name="shoppingCar.productNumber" value="${shoppingCar.productNumber }" size="4" onblur="updateCar(${shoppingCar.shopingCarId }, this);" />
                <br />
                <span class="alert bold"></span><br />
                <input type="hidden" name="shoppingCar.product.productId " value="98" /></td>
              <td class="cartUnitDisplay" colspan="2">$${shoppingCar.product.memberPrice }</td>
              <td class="cartTotalDisplay" >$${shoppingCar.product.memberPrice * shoppingCar.productNumber}</td>
              <c:set var="totalPrice" value="${totalPrice + shoppingCar.product.memberPrice * shoppingCar.productNumber}"/>
            </tr>
            </c:forEach>
            <tr>
              <td colspan="10">&nbsp;</td>
            </tr>
            <!-- Finished loop through all products /-->
          </table>
          <div id="cartSubTotal">Subtotal: $<c:out value="${totalPrice}"></c:out></div>
          <br class="clearBoth" />
          <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="20%"><!--bof shopping cart buttons-->
              <input type="image" src="images/button_update_cart.gif" alt="Update Cart" title=" Update Cart " />
              <!--eof shopping cart buttons-->
            </td>
      <!--  <td width="30%" align="center"><a href="./index.jsp?main_page=product_info&amp;cPath=3_43&amp;products_id=176"><img src="images/button_continue_shopping.gif" alt="Continue Shopping" title=" Continue Shopping " width="190" height="29" /></a> -->
      <td width="30%" align="center"><a href="/"><img src="images/button_continue_shopping.gif" alt="Continue Shopping" title=" Continue Shopping " width="190" height="29" /></a></td>
      <td align="center"><a href="javascript:popupWindow('./index.jsp?main_page=popup_shipping_estimator')"><img src="images/button_shipping_estimator.gif" alt="Estimate Shipping" title=" Estimate Shipping " width="190" height="29" /></a></td>
      <td width="20%" align="right"><a href="https://www.deeplymadlyliving.com/index.jsp?main_page=checkout_shipping"><img src="images/button_checkout.gif" alt="Checkout" title=" Checkout " width="150" height="29" /></a></td>
    </c:if> 
    </tr>
  </table>
  </form>
  <!-- THIS IS THE CASE WHERE THERE ARE NO CONTENTS -->
  <!-- ** BEGIN PAYPAL EXPRESS CHECKOUT ** -->
  <!-- ** END PAYPAL EXPRESS CHECKOUT ** -->
</div>
</td>
</tr>
</table>
</div>
</body>
</html>
