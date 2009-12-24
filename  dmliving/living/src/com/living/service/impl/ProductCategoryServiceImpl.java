package com.living.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.ProductCategoryDao;
import com.living.model.ProductCategory;
import com.living.service.ProductCategoryService;

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
}
