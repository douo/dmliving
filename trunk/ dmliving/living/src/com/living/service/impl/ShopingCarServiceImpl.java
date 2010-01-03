package com.living.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.ShopingCarDao;
import com.living.service.ShopingCarService;

@Service
public class ShopingCarServiceImpl extends BaseServiceImpl implements ShopingCarService {

	@Autowired
	public ShopingCarServiceImpl(ShopingCarDao defaultDao) {
		super(defaultDao);
	}

}
