package com.living.dao.impl;

import org.springframework.stereotype.Repository;

import com.framework.dao.impl.BaseHibernateDaoImpl;
import com.living.dao.CountryDao;
import com.living.model.Country;

@Repository
public class CountryDaoImpl extends BaseHibernateDaoImpl<Country> implements CountryDao {

	@Override
	public void initHibernateTemplate() {
	}

}
