package com.living.view;

import java.util.List;

import com.living.model.ProductCategory;

/**
 * 类别视图类
 * @author C.donglin
 * @since 2010-1-3
 */
public class ProductCategoryPreview {
	private ProductCategory productCategory;
	private List<ProductCategory> subProductCategorys;

	
	public ProductCategory getProductCategory() {
		return productCategory;
	}

	public void setProductCategory(ProductCategory productCategory) {
		this.productCategory = productCategory;
	}

	public List<ProductCategory> getSubProductCategorys() {
		return subProductCategorys;
	}

	public void setSubProductCategorys(List<ProductCategory> subProductCategorys) {
		this.subProductCategorys = subProductCategorys;
	}

}
