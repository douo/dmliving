package com.living.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.ProductDao;
import com.living.model.Product;
import com.living.service.ProductService;

@Service
public class ProductServiceImpl extends BaseServiceImpl implements ProductService {

	@Autowired
	public ProductServiceImpl(ProductDao defaultDao) {
		super(defaultDao);
	}
	
	@Autowired
	private ProductDao productDao;

	@Override
	public List<Product> findByCategory(Serializable cid) {
		return productDao.findByCategory(cid);
	}

	@Override
	public List<Product> findByKeyword(Serializable keyword) {
		if (keyword == null || keyword.equals("")) {
			keyword = "%";
		} else {
			keyword = "%" + keyword +"%";
		}
		// String[] keywords = {keyword.toString(), keyword.toString()};
		return productDao.findByKeyword(keyword);
	}

}
