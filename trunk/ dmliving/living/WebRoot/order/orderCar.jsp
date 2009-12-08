<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: BATH ACCESSORIES</title>
</head>
<body id="shoppingcartBody">
<div id="layout-content">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
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
        <form name="cart_quantity" action="./index.jsp?main_page=shopping_cart&amp;action=update_product" method="post">
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
            <tr class="rowEven">
              <td colspan="2" style="padding-top: 5px;"><input type="checkbox" name="cart_delete[]" value="98" />
                <!-- <a href="./index.jsp?main_page=shopping_cart&amp;action=remove_product&amp;product_id=98"><img src="includes/templates/template_default/images/icons/small_delete.gif" alt="Delete this item from the cart by clicking this icon." title=" Delete this item from the cart by clicking this icon. " width="24" height="32" /></a> --></td>
              <td colspan="2" style="padding-top: 5px; padding-right: 8px;"><table cellpadding="5" cellspacing="0" border="0">
                  <tr>
                    <td valign="top" width="118"><a href="./index.jsp?main_page=product_info&amp;products_id=98">
                      <div id="cartImage" class="back"><img src="images/products/216148a7103acb2dbff9a743407e2783.image.116x116.jpg" alt="BLUE BATH ENSEMBLE" title=" BLUE BATH ENSEMBLE " width="116" height="116" /></div>
                      </a></td>
                    <td valign="top"><a href="./index.jsp?main_page=product_info&amp;products_id=98">
                      <div class="cart-prod">BLUE BATH ENSEMBLE<span class="alert bold"></span></div>
                      </a></td>
                  </tr>
                </table></td>
              <td colspan="2" style="padding-top: 5px;"><input type="text" name="cart_quantity[]" value="2" size="4" />
                <br />
                <span class="alert bold"></span><br />
                <input type="hidden" name="products_id[]" value="98" /></td>
              <td class="cartUnitDisplay" colspan="2">$170.00</td>
              <td class="cartTotalDisplay" >$340.00</td>
            </tr>
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
            <tr class="rowOdd">
              <td colspan="2" style="padding-top: 5px;"><input type="checkbox" name="cart_delete[]" value="176" />
                <!-- <a href="./index.jsp?main_page=shopping_cart&amp;action=remove_product&amp;product_id=176"><img src="includes/templates/template_default/images/icons/small_delete.gif" alt="Delete this item from the cart by clicking this icon." title=" Delete this item from the cart by clicking this icon. " width="24" height="32" /></a> --></td>
              <td colspan="2" style="padding-top: 5px; padding-right: 8px;"><table cellpadding="5" cellspacing="0" border="0">
                  <tr>
                    <td valign="top" width="118"><a href="./index.jsp?main_page=product_info&amp;products_id=176">
                      <div id="cartImage" class="back"><img src="images/products/cf3477604e12669a0278fde92ad7f0f9.image.116x116.jpg" alt="SILVER GEO JUG" title=" SILVER GEO JUG " width="116" height="116" /></div>
                      </a></td>
                    <td valign="top"><a href="./index.jsp?main_page=product_info&amp;products_id=176">
                      <div class="cart-prod">SILVER GEO JUG<span class="alert bold"></span></div>
                      </a></td>
                  </tr>
                </table></td>
              <td colspan="2" style="padding-top: 5px;"><input type="text" name="cart_quantity[]" value="1" size="4" />
                <br />
                <span class="alert bold"></span><br />
                <input type="hidden" name="products_id[]" value="176" /></td>
              <td class="cartUnitDisplay" colspan="2">$30.00</td>
              <td class="cartTotalDisplay" >$30.00</td>
            </tr>
            <tr>
              <td colspan="10">&nbsp;</td>
            </tr>
            <!-- Finished loop through all products /-->
          </table>
          <div id="cartSubTotal">Subtotal: $370.00</div>
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
