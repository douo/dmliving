package com.living.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.ProductCategoryDao;
import com.living.model.ProductCategory;
import com.living.service.ProductCategoryService;
import com.living.view.ProductCategoryPreview;

@Service
public class ProductCategoryServiceImpl extends BaseServiceImpl implements ProductCategoryService {

	@Autowired
	public ProductCategoryServiceImpl(ProductCategoryDao defaultDao) {
		super(defaultDao);
	}

	@Autowired
	ProductCategoryDao categoryDao;
	
	@Override
	public List<ProductCategory> findByLevel(Serializable level) {
		return categoryDao.findByLevel(level);
	}

	@Override
	public List<ProductCategory> findByParentId(Serializable pid) {
		return categoryDao.findByParentId(pid);
	}

	/**
	 * 查找该分类的树
	 */
	@Override
	public List<ProductCategory> findByTree(Serializable pid) {
		List<ProductCategory> categoryList = new ArrayList<ProductCategory>();
		while(pid != null) {
				ProductCategory productCategory = (ProductCategory) findById(pid);
				if (productCategory == null) {
//					productCategory = new ProductCategory();
//					productCategory.setName("Home");
					pid = null;
				} else {
					pid = productCategory.getParentCategoryId();
					categoryList.add(productCategory);
				}
				
		}
		Collections.reverse(categoryList);
		return categoryList;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductCategoryPreview> findBySub() {
		List<ProductCategoryPreview> pList = new ArrayList<ProductCategoryPreview>();
		ProductCategoryPreview categoryPreview = new ProductCategoryPreview();
		List<ProductCategory> list = findAll();
		for (ProductCategory category : list) {
			categoryPreview.setProductCategory(category);
			List<ProductCategory> subList = findByParentId(category.getParentCategoryId());
			categoryPreview.setSubProductCategorys(subList);
		}
		return pList;
	}
}
