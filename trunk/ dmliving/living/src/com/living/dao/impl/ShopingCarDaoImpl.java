package com.living.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.framework.dao.impl.BaseHibernateDaoImpl;
import com.living.dao.ShopingCarDao;
import com.living.model.ShopingCar;

@Repository
public class ShopingCarDaoImpl extends BaseHibernateDaoImpl<ShopingCar> implements ShopingCarDao {

	
	@Override
	public void initHibernateTemplate() {
	}

	@Override
	public List<ShopingCar> findByUserId(Serializable uid) {
		return findByProperty(USER_ID, uid);
	}

}