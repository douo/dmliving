package com.living.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.framework.dao.impl.BaseHibernateDaoImpl;
import com.living.dao.ProductCategoryDao;
import com.living.model.ProductCategory;

@Repository
public class ProductCategoryDaoImpl extends BaseHibernateDaoImpl<ProductCategory> implements ProductCategoryDao {

	@Override
	public void initHibernateTemplate() {
	}

	/**
	 * 通过级别显示类别列表
	 */
	@Override
	public List<ProductCategory> findByLevel(Serializable level) {
		return findByProperty(LEVEL, level);
	}

	@Override
	public List<ProductCategory> findByParentId(Serializable pid) {
		return findByProperty(PARENT_ID, pid);
	}
	
	@Override
	public List<ProductCategory> findAll() {
		orderPropertyName = LEVEL;
		return super.findAll();
	}

}