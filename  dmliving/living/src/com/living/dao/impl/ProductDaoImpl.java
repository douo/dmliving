package com.living.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.framework.dao.impl.BaseHibernateDaoImpl;
import com.living.dao.ProductDao;
import com.living.model.Product;

@Repository
public class ProductDaoImpl extends BaseHibernateDaoImpl<Product> implements ProductDao {

	@Override
	public void initHibernateTemplate() {
	}

	@Override
	public List<Product> findByCategory(Serializable cid) {
		return findByProperty(CATEGORY_ID, cid);
	}

	@Override
	public List<Product> findByKeyword(Serializable keyword) {
		return findByKeyword(KEYWORD, keyword);
	}

}