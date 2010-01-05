package com.living.action;

import java.util.List;

import com.living.model.Manufacturer;
import com.living.model.Product;
import com.living.model.ProductCategory;
import com.living.util.upload.FileUploadAction;

public class ProductAction extends FileUploadAction {
	private static final long serialVersionUID = -4768924096021147055L;
	
	private Product product;
	private List<Product> products;
	private List<Manufacturer> manufacturers;
	private ProductCategory category;
	
	/**
	 * 新建产品
	 * @author C.donglin
	 * @since 2009-12-28
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String newProduct() {
		if (category != null) {
			List<ProductCategory> list = categoryService.findByTree(category.getProductCategoryId());
			getRequest().setAttribute("categoryTree", list);
			category = (ProductCategory) categoryService.findById(category.getProductCategoryId());
			manufacturers = manufecturerService.findAll();
		}
		return SUCCESS;
	}
	
	/**
	 * 搜索产品
	 * @author C.donglin
	 * @since 2010-1-2
	 * @return
	 */
	public String searchProduct() {
		String keyword = (String) getRequest().getParameter("keyword");
		products = productService.findByKeyword(keyword);
		getRequest().setAttribute("keyword", keyword);
		int count = 0;
		if (products != null) {
			count = products.size();
		}
		getRequest().setAttribute("count", count);
		return SUCCESS;
	}
	
	/**
	 * 產品展示
	 * @author C.donglin
	 * @since 2010-1-2
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String showProduct() {
		if (product != null) {
			product = (Product) productService.findById(product.getProductId());
			products = productService.findByKeyword(product.getName());
			List<ProductCategory> list = categoryService.findByTree(product.getProductCategory().getProductCategoryId());
			getRequest().setAttribute("categoryTree", list);
			category = (ProductCategory) categoryService.findById(product.getProductCategory().getProductCategoryId());
			manufacturers = manufecturerService.findAll();
			return SUCCESS;
		}
		return INPUT;
	}
	
	/**
	 * 产品列表
	 * @author C.donglin
	 * @since 2010-1-3
	 * @return
	 */
	public String listProduct() {
		if (category != null) {
			category = (ProductCategory) categoryService.findById(category.getProductCategoryId());
			products = productService.findByCategory(category.getProductCategoryId());
			int count = 0;
			if (products != null) {
				count = products.size();
			}
			getRequest().setAttribute("count", count);
			return SUCCESS;
		}
		return SUCCESS;
	}
	
	/**
	 * 删除产品
	 * @author C.donglin
	 * @since 2010-1-4
	 * @return
	 */
	public String deleteProduct() {
		if (product != null) {
			if (productService.delete(product)) {
				return SUCCESS;
			}
		}
		return ERROR;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public ProductCategory getCategory() {
		return category;
	}

	public void setCategory(ProductCategory category) {
		this.category = category;
	}

	public List<Manufacturer> getManufacturers() {
		return manufacturers;
	}

	public void setManufacturers(List<Manufacturer> manufacturers) {
		this.manufacturers = manufacturers;
	}

	public Product getProduct() {
		return product;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

}
