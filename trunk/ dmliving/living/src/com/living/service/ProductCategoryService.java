package com.living.service;

import java.io.Serializable;
import java.util.List;

import com.framework.service.BaseService;
import com.living.model.ProductCategory;
import com.living.view.ProductCategoryPreview;

public interface ProductCategoryService extends BaseService {
	List<ProductCategory> findByLevel(Serializable level);
	List<ProductCategory> findByParentId(Serializable pid);
	List<ProductCategory> findByTree(Serializable pid);
	List<ProductCategoryPreview> findBySub();
}
