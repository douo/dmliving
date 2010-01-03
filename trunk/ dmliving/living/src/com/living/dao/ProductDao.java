package com.living.dao;

import java.io.Serializable;
import java.util.List;

import com.framework.dao.BaseHibernateDao;
import com.living.model.Product;

@SuppressWarnings("unchecked")
public interface ProductDao extends BaseHibernateDao {
	public static String CATEGORY_ID = "productCategory.productCategoryId"; 
	public static final String KEYWORD = "name";
	List<Product> findByCategory(Serializable cid);
	
	/**
	 * 根据关键字搜索产品
	 * @author C.donglin
	 * @since 2010-1-2
	 * @param keyword
	 * @return
	 */
	List<Product> findByKeyword(Serializable keyword);
}
