package com.living.dao.impl;

import org.springframework.stereotype.Repository;

import com.framework.dao.impl.BaseHibernateDaoImpl;
import com.living.dao.ManufecturerDao;
import com.living.model.Manufacturer;

@Repository
public class ManufecturerDaoImpl extends BaseHibernateDaoImpl<Manufacturer> implements ManufecturerDao {

	@Override
	public void initHibernateTemplate() {
	}

}