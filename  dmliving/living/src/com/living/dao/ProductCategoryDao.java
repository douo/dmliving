package com.living.dao;

import java.io.Serializable;
import java.util.List;

import com.framework.dao.BaseHibernateDao;
import com.living.model.ProductCategory;

@SuppressWarnings("unchecked")
public interface ProductCategoryDao extends BaseHibernateDao {
	String LEVEL = "level";
	String PARENT_ID = "parentCategoryId";
	
	List<ProductCategory> findByLevel(Serializable level);
	List<ProductCategory> findByParentId(Serializable pid);
}
