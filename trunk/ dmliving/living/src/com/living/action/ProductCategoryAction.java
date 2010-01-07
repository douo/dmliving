package com.living.action;

import java.util.Date;
import java.util.List;

import com.living.model.Manufacturer;
import com.living.model.Product;
import com.living.model.ProductCategory;
import com.living.model.ShopingCar;
import com.living.util.Constants;
import com.living.util.TreeNode;
import com.living.util.upload.FileUploadAction;

public class ProductCategoryAction extends FileUploadAction {
	private static final long serialVersionUID = 741479505733303793L;
	
	private ProductCategory category;
	private List<ProductCategory> categories;
	private Product product;
	private List<Product> products;
	private Manufacturer manufacturer;
	private List<Manufacturer> manufacturers;
	
	/**
	 * 保存产品类别
	 * @author C.donglin
	 * @since 2009-12-22
	 * @return
	 */
	public String saveCategory() {
		if (category != null) {
			if (category.getParentCategoryId() == null) {
				category.setParentCategoryId(Constants.TOP_LEVEL);
			}
			if (category.getLevel() == null) {
				category.setLevel(0L); // 根类别为0
			} else {
				category.setLevel(category.getLevel()+1);
			}
			try {
				List<String> imgUrls = upload();
				
				if (imgUrls != null) {
					if (imgUrls.size() ==2) {
						category.setBannerUrl(imgUrls.get(0));
						category.setImageUrl(imgUrls.get(1));
					} else {
						category.setImageUrl(imgUrls.get(0));
					}
					
				}
			} catch (Exception e) {
				e.printStackTrace();
				return ERROR;
			}
			categoryService.save(category);
			if (category != null) {
				return SUCCESS;
			}
		}
		return INPUT;
	}
	
	/**
	 * 更新类别
	 * @author C.donglin
	 * @since 2010-1-2
	 * @return
	 */
	public String updateCategory() {
		if (category != null) {
			List<String> imgUrls;
			try {
				imgUrls = upload();
				if (imgUrls != null) {
					category.setBannerUrl(imgUrls.get(0));
					if (imgUrls.size() > 1)
						category.setImageUrl(imgUrls.get(1));
				}
				if (categoryService.update(category) != null) {
					return SUCCESS;
				}
			} catch (Exception e) {
				e.printStackTrace();
				return ERROR;
			}
		}
		return ERROR;
	}
	
	/**
	 * 显示某一类别
	 * @author C.donglin
	 * @since 2010-1-2
	 * @return
	 */
	public String listSubCategory() {
		if (category != null) {
			category = (ProductCategory) categoryService.findById(category.getProductCategoryId());
			getRequest().setAttribute("pcategory", category);
			categories = categoryService.findByParentId(category.getProductCategoryId());
			return SUCCESS;
		}
		return ERROR;
	}
	
	/**
	 * 删除类别
	 * @author C.donglin
	 * @since 2010-1-3
	 * @return
	 */
	public String deleteCategory() {
		if (category != null) {
			if (categoryService.delete(category)) {
				return SUCCESS;
			}
		}
		return ERROR;
	}
	
	/**
	 * 产品类别列表
	 * @author C.donglin
	 * @since 2009-12-23
	 * @deprecated
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
	 * 主类别列表
	 * @author C.donglin
	 * @since 2009-12-23
	 * @return
	 */
	public String listCategory() {
		if (category == null) {
			category = new ProductCategory();
			category.setProductCategoryId(Constants.TOP_LEVEL);
		}
		categories = categoryService.findByParentId(category.getProductCategoryId());
		List<ProductCategory> list = categoryService.findByTree(category.getProductCategoryId());
		getRequest().setAttribute("categoryTree", list);
		products = productService.findByCategory(category.getProductCategoryId());
		category = (ProductCategory) categoryService.findById(category.getProductCategoryId());
		int count = 0;
		if (categories != null) {
			count = categories.size();
		}
		getRequest().setAttribute("count", count);
		return SUCCESS;
	}
	
	/**
	 * 增加新类别
	 * @author C.donglin
	 * @since 2009-12-23
	 * @return
	 */
	public String newCategory() {
		return SUCCESS;
	}
	
	/**
	 * 保存产品
	 * @author C.donglin
	 * @since 2010-1-1
	 * @return
	 */
	public String saveProduct() {
		if (product != null) {
			try {
				//String availableDate = (String) getRequest().getAttribute("products_date_available");
				//DateFormat myDateFormat = new SimpleDateFormat();
				List<String> imgUrls = upload();
				if (imgUrls != null)
					product.setImageUrl(imgUrls.get(0));
				if (product.getProductId() == null) {
					product.setAddDate(new Date());
				}
				//product.setDateAvailable(myDateFormat.parse(availableDate));
				product.setManufacturer(manufacturer);
				product.setProductCategory(category);
				if (productService.saveOrUpdate(product) != null) {
					return SUCCESS;
				}
			} catch (Exception e) {
				e.printStackTrace();
				return ERROR;
			}
		}
		return INPUT;
	}
	
	/**
	 * 列出所有类别，包括其子类别，用于首页显示等
	 * @author C.donglin, L.Cao
	 * @since 2010-1-3
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String listCategories() {
		categories = categoryService.findAll();
		boolean hasProduct = false;
		if (getLoginUser() != null) {
			List<ShopingCar> shopingCars = carService.findByUserId(getLoginUser().getUserId());
			if (shopingCars != null && shopingCars.size() > 0) {
				hasProduct = true;
			}
		}
		getRequest().setAttribute("hasProduct", hasProduct);
		TreeNode node =TreeNode.createCategoryTree(categories);
		StringBuffer out =new StringBuffer();
		TreeNode.treeToString(node, out);
//		System.out.println("out:");
//		System.out.println(out);
		getRequest().setAttribute("treeNode", out);
		return SUCCESS;
	}
	
	/**
	 * 展示类别
	 * @author C.donglin
	 * @since 2010-1-4
	 * @return
	 */
	public String showCategory() {
		if (category != null) {
			category = (ProductCategory) categoryService.findById(category.getProductCategoryId());
			return SUCCESS;
		}
		return INPUT;
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

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}

	public List<Manufacturer> getManufacturers() {
		return manufacturers;
	}

	public void setManufacturers(List<Manufacturer> manufacturers) {
		this.manufacturers = manufacturers;
	}

	public Manufacturer getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(Manufacturer manufacturer) {
		this.manufacturer = manufacturer;
	}

}
