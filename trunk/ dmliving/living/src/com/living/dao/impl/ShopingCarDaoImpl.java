package com.living.dao.impl;

import org.springframework.stereotype.Repository;

import com.framework.dao.impl.BaseHibernateDaoImpl;
import com.living.dao.ShopingCarDao;
import com.living.model.ShopingCar;

@Repository
public class ShopingCarDaoImpl extends BaseHibernateDaoImpl<ShopingCar> implements ShopingCarDao {

	
	@Override
	public void initHibernateTemplate() {
	}

}