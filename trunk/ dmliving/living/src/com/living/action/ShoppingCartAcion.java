package com.living.action;

import java.util.Date;
import java.util.List;

import com.framework.model.JsonModel;
import com.living.model.Product;
import com.living.model.ShopingCar;
import com.living.webapp.action.BaseAction;

public class ShoppingCartAcion extends BaseAction {
	private static final long serialVersionUID = -1130803104292737909L;

	private ShopingCar shoppingCart;
	private List<ShopingCar> shoppingCars;
	private Product product;

	/**
	 * 查看购物车
	 * @author C.donglin
	 * @since 2010-1-3
	 * @return
	 */
	public String viewCar() {
		shoppingCars = carService.findByUserId(getLoginUser().getUserId());
		return SUCCESS;
	}

	/**
	 * 增加商品到购物车
	 * @author C.donglin
	 * @since 2010-1-3
	 * @return
	 */
	public String addToCar() {
		if (product != null) {
			product = (Product) productService.findById(product.getProductId());
			shoppingCart.setProduct(product);
			shoppingCart.setUser(getLoginUser());
			shoppingCart.setCreated(new Date());
			if (carService.save(shoppingCart) != null) {
				return SUCCESS;
			}
		}
		return INPUT;
	}

	/**
	 * 从购物车删除商品
	 * @author C.donglin
	 * @since 2010-1-5
	 * @return
	 */
	public String removeFromCar() {
		if (shoppingCart != null) {
			if (carService.delete(shoppingCart)) {
				return SUCCESS;
			}
		}
		return ERROR;
	}

	/**
	 * 基于 Json Ajax 更新购物车
	 * @author C.donglin
	 * @since 2010-1-5
	 * @return
	 */
	public void updateCar() {
		JsonModel jsonModel = new JsonModel();
		if (shoppingCart != null) {
			Long quantity = shoppingCart.getProductNumber();
			shoppingCart = (ShopingCar) carService.findById(shoppingCart.getShopingCarId());
			shoppingCart.setProductNumber(quantity);
			if (carService.update(shoppingCart) != null) {
				jsonModel.setSuccess(true);
			} else {
				jsonModel.setSuccess(false);
			}
		}
		jsonModel.out(getResponse());
		System.out.println("json: " + jsonModel.isSuccess());
	}

	public ShopingCar getShoppingCart() {
		return shoppingCart;
	}

	public void setShoppingCart(ShopingCar shoppingCart) {
		this.shoppingCart = shoppingCart;
	}

	public List<ShopingCar> getShoppingCars() {
		return shoppingCars;
	}

	public void setShoppingCars(List<ShopingCar> shoppingCars) {
		this.shoppingCars = shoppingCars;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}
}
