package com.living.dao;

import java.io.Serializable;
import java.util.List;

import com.framework.dao.BaseHibernateDao;
import com.living.model.ShopingCar;

@SuppressWarnings("unchecked")
public interface ShopingCarDao extends BaseHibernateDao {
	public static final String USER_ID = "user.userId";
	
	List<ShopingCar> findByUserId(Serializable uid);
}
