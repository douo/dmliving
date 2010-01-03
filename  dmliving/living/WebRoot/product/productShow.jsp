<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/includes/jsp-tags.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
<head>
<title>Deeply Madly Living: ${category.name }</title>
<script type="text/javascript" src="js/modalbox/prototype.js"></script>
<script type="text/javascript" src="js/modalbox/scriptaculous.js?load=builder,effects"></script>
<script type="text/javascript" src="js/modalbox/modalbox.js"></script>
</head>
<body id="indexBody">
<div style="padding-bottom: 12px;"><a href="#"><img src="${category.imageUrl }" alt="${category.name }"/></a></div>
<div id="layout-content">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="contentMainWrapper">
  <tr>
    <td valign="top"><!-- bof  breadcrumb -->
      <!-- eof breadcrumb -->
      <!-- bof upload alerts -->
      <!-- eof upload alerts -->
      <div class="centerColumn" id="productGeneral">
        <!--bof Form start-->
        <form name="cart_quantity" action="/index.jsp?main_page=product_info&amp;cPath=1_32&amp;products_id=98&amp;action=add_product" method="post" enctype="multipart/form-data">
          <!--eof Form start-->
          <!--bof Category Icon -->
          <!--eof Category Icon -->
          <!--bof Product Name-->
          <div id="navBreadCrumb"> <a href="/">Home</a>&nbsp;&gt; 
          <c:forEach items="${categoryTree}" var="categoryTree">
          <a href="/index.jsp?main_page=index&amp;cPath=1">${categoryTree.name }</a>&nbsp;&gt; 
          </c:forEach>
          </div>
          <!-- <h1 id="productName" class="productGeneral">BLUE BATH ENSEMBLE</h1> -->
          <div class="productName">${product.name }</div>
          <!--eof Product Name-->
          <div style="width: 320px; float:left;">
            <!--bof Main Product Image -->
            <%--<div id="productMainImage" class="centeredContent"  style="width: 300px; display: block;">
            <span class="centeredContent" style="width: 300px; display: block;">
            <a href="#" onclick="Modalbox.show('<div align='center'><img src=\'${product.imageUrl }\' /></div>', {title: ' ', width: 550, height: 550}); return false;"><img src="${product.imageUrl }" alt="${product.name }" title=" ${product.name } " width="300" height="300" /></a></span></a></div>
            <div class="imgLink back"><a href="#" onclick="Modalbox.show('<div align='center'><img src=\'images/blue-lunar-set-5-500.jpg\' /></div>', {title: ' ', width: 550, height: 550}); return false;"><img src="images/btn_zoom_icon.gif" alt="Click to enlarge" title=" Click to enlarge " width="14" height="14" border="0" /></a></div>
            <br />
            <br />
            --%>
            <div id="productMainImage" class="centeredContent"  style="width: 300px; display: block;">
			<a href="#" onclick="Modalbox.show('<div align=\'center\'><img src=\'${product.imageUrl }\' /></div>', {title: ' ', width: 550, height: 550}); return false;"><img src="${product.imageUrl }" alt="${product.name }" title=" ${product.name } " width="300" height="300" /></a></div>
			<div class="imgLink back"><a href="#" onclick="Modalbox.show('<div align=\'center\'><img src=\'${product.imageUrl }\' /></div>', {title: ' ', width: 550, height: 550}); return false;"><img src="images/btn_zoom_icon.gif" alt="Click to enlarge" title=" Click to enlarge " width="14" height="14" border=0 /></a></div>
			<br /><br />
            <!--eof Main Product Image-->
            <!-- bof extra images -->
            <!-- LARGE IMAGE images/large/blue-lunar-set-5-500_01_LRG.jpg -->
            <div id="productAdditionalImages"> <strong>Other Views</strong> <br />
              <div class="additionalImages centeredContent back" style="width: 78px; text-align: left; float: left; padding: 0px 0px 10px 0px;"> <a href="#" onclick="document.location = '/index.jsp?main_page=product_info&cPath=1_32&products_id=98#very_top'; Modalbox.show('<div align='center'><img src='${product.imageUrl }' /></div>', {title: ' ', width: 300, height: 300 }); return false;"><img src="${product.imageUrl }" alt="${product.name }" title=" ${product.name } " width="63" height="63" /></a></div>
              <!-- <br class="clearBoth" /> -->
            </div>
            <!--eof extra image -->
          </div>
          <!--bof middle column-->
          <div style="padding: 3px 10px 3px 3px; float: left; width: 430px; ">
          <!--bof free ship icon  -->
          <!--eof free ship icon  -->
          <!--bof Prev/Next top position -->
          <div class="navNextPrevWrapper forward">
            <!-- <p class="navNextPrevCounter">Product 1/4</p>-->
            <div class="navNextPrevList"><a href="product/showProduct.action?productId=${product.productId-1 }">&lt; prev. item</a></div>
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <div class="navNextPrevList"><a href="/index.jsp?main_page=index&amp;cPath=1_32">back to list</a></div>
            
            &nbsp;&nbsp;|&nbsp;&nbsp;
            <div class="navNextPrevList"><a href="product/showProduct.action?productId=${product.productId+1 }">next item ></a></div>
          </div>
          <!--eof Prev/Next top position-->
          <div style="clear: both;"></div>
          <!--bof Product description -->
          ${product.description }
          <!--eof Product description -->
          <br class="clearBoth" />
          <!--bof Product Price block xxx -->
          Item #: ${product.ptype }
          <div class="product-price"> $${product.normalPrice }</div>
          <br />
          <br />
          <!--eof Product Price block -->
          <strong>Options:</strong><br />
          <!--bof Attributes Module -->
          <!--eof Attributes Module -->
          <!--bof Add to Cart Box -->
          <!--eof Add to Cart Box-->
          <div class="back" style="width: 110px;">Quantity: </div>
          <input type="text" name="cart_quantity" value="1" maxlength="6" size="4" />
          <br />
          <br />
          <input type="hidden" name="product.productId" value="${product.productId }" />
          <input type="image" src="images/button_in_cart.gif" alt="Add to Cart" title=" Add to Cart " />
          <!--bof Product details list  -->
          <ul id="productDetailsList" class="floatingBox back">
          </ul>
          <!--eof Product details list -->
          <!--bof Attributes Module -->
          <!--eof Attributes Module -->
          <!--bof Quantity Discounts table -->
          <!--eof Quantity Discounts table -->
          <!--bof Additional Product Images -->
          <!--eof Additional Product Images -->
          <!--bof Prev/Next bottom position -->
          <!--eof Prev/Next bottom position -->
          <!--bof Tell a Friend button -->
          <!--eof Tell a Friend button -->
          <!--bof Reviews button and count-->
          <!--eof Reviews button and count -->
          <!--bof Product date added/available-->
          <!--eof Product date added/available -->
          <!--bof Product URL -->
          <!--eof Product URL -->
          <!--bof also purchased products module-->
          <!--eof also purchased products module-->
          <!--bof Form close-->
          </div>
        </form>
        <!--bof Form close-->
      </div>
  <!--eof middle column -->
  <!--bof right column -->
  <!-- xsell_products //-->
  <!-- bof: tpl_modules_xsell_products -->
  <div style="width: 130px; color: #fff; border-left: 1px solid #666; padding-left: 20px; margin-top: -7px; float:left;"><strong>You might also like:</strong>
    <p />
    <div class="centerBoxWrapper" id="crossSell">
      <!-- <h2 class="centerBoxHeading">TEXT_XSELL_PRODUCTS</h2> -->
      <div class="centerBoxContentsCrossSell back" style="width:100%;"><a href="/index.jsp?main_page=product_info&amp;products_id=126"><img src="bmz_cache/2/24d3565d8a57eaf15c97664c72f59481.image.115x115.jpg" alt="OULA-LA VASE" title=" OULA-LA VASE " width="115" height="115" /></a><br />
        <a class="categoryListBoxContents4" href="/index.jsp?main_page=product_info&amp;products_id=126">OULA-LA VASE</a> - $79</div>
      <div class="centerBoxContentsCrossSell back" style="width:100%;"><a href="/index.jsp?main_page=product_info&amp;products_id=186"><img src="bmz_cache/1/14996d4c91aa31b3b8fff7f51f8d69ee.image.115x115.jpg" alt="LIGHTAIR IONFLOW 50 STYLE" title=" LIGHTAIR IONFLOW 50 STYLE " width="115" height="115" /></a><br />
        <a class="categoryListBoxContents4" href="/index.jsp?main_page=product_info&amp;products_id=186">LIGHTAIR IONFLOW 50 STYLE</a> - $495</div>
      <br class="clearBoth" />
    </div>
  </div>
  <!-- eof: tpl_modules_xsell_products -->
  <div style="clear: both;" />
  
  </td>
  
  </tr>
  
</table>
</div>
</body>
</html>
