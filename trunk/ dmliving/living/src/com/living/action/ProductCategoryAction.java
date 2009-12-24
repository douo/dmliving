package com.living.action;

import java.util.List;

import com.living.model.ProductCategory;
import com.living.util.Constants;
import com.living.webapp.action.BaseAction;

public class ProductCategoryAction extends BaseAction {
	private static final long serialVersionUID = 741479505733303793L;
	
	private ProductCategory category;
	private List<ProductCategory> categories;

	/**
	 * 保存产品类别
	 * @author C.donglin
	 * @since 2009-12-22
	 * @return
	 */
	public String saveCategory() {
		if (category != null) {
			if (category.getLevel() == null) {
				category.setLevel(0L); // 根类别为0
			} else {
				category.setLevel(category.getLevel()+1);
			}
			categoryService.save(category);
			if (category != null) {
				return SUCCESS;
			}
		}
		return INPUT;
	}
	
	/**
	 * 产品类别列表
	 * @author C.donglin
	 * @since 2009-12-23
	 * @return
	 */
	public String listTopCategory() {
		// categories = categoryService.findByLevel(Constants.TOP_LEVEL);
		categories = categoryService.findByParentId(Constants.TOP_LEVEL);
		int count = 0;
		if (categories != null) {
			count = categories.size();
		}
		getRequest().setAttribute("CategoryName", "首页");
		getRequest().setAttribute("count", count);
		return SUCCESS;
	}
	
	/**
	 * 子类别列表
	 * @author C.donglin
	 * @since 2009-12-23
	 * @return
	 */
	public String listCategory() {
		if (category != null) {
			categories = categoryService.findByParentId(category.getProductCategoryId());
			category = (ProductCategory) categoryService.findById(category.getProductCategoryId());
			int count = 0;
			if (categories != null) {
				count = categories.size();
			}
			getRequest().setAttribute("CategoryName", category.getName());
			getRequest().setAttribute("count", count);
			return SUCCESS;
		}
		
		return ERROR;
	}
	
	/**
	 * 增加新类别
	 * @author C.donglin
	 * @since 2009-12-23
	 * @return
	 */
	public String newCategory() {
		if (category == null) {
			category = new ProductCategory();
			category.setProductCategoryId(0L);
		} else if (category.getProductCategoryId() == null) {
			category.setProductCategoryId(0L);
		}
		return SUCCESS;
	}
	
	// setter and getters
	public ProductCategory getCategory() {
		return category;
	}

	public void setCategory(ProductCategory category) {
		this.category = category;
	}

	/**
	 * @return the categories
	 */
	public List<ProductCategory> getCategories() {
		return categories;
	}

	/**
	 * @param categories the categories to set
	 */
	public void setCategories(List<ProductCategory> categories) {
		this.categories = categories;
	}
}
