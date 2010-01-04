package com.living.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.framework.service.impl.BaseServiceImpl;
import com.living.dao.ShopingCarDao;
import com.living.model.ShopingCar;
import com.living.service.ShopingCarService;

@Service
public class ShopingCarServiceImpl extends BaseServiceImpl implements ShopingCarService {

	@Autowired
	public ShopingCarServiceImpl(ShopingCarDao defaultDao) {
		super(defaultDao);
	}
	
	@Autowired
	ShopingCarDao carDao;

	@Override
	public List<ShopingCar> findByUserId(Serializable uid) {
		return carDao.findByUserId(uid);
	}

}
