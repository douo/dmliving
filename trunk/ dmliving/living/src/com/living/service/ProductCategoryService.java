package com.living.service;

import java.io.Serializable;
import java.util.List;

import com.framework.service.BaseService;
import com.living.model.ProductCategory;

public interface ProductCategoryService extends BaseService {
	List<ProductCategory> findByLevel(Serializable level);
	List<ProductCategory> findByParentId(Serializable pid);
}
