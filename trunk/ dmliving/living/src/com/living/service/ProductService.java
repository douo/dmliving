package com.living.service;

import java.io.Serializable;
import java.util.List;

import com.framework.service.BaseService;
import com.living.model.Product;


/**
 * @author C.donglin
 * @since 2009-12-19
 */
public interface ProductService extends BaseService{
	List<Product> findByCategory(Serializable cid);
	List<Product> findByKeyword(Serializable keyword);
}
