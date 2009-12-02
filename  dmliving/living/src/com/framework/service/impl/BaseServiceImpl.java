package com.framework.service.impl;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.framework.dao.BaseHibernateDao;

@Service
public class BaseServiceImpl {
	protected final Logger logger = Logger.getLogger(getClass());
	@SuppressWarnings("unchecked")
	protected BaseHibernateDao defaultDao;

	public void changeHibernateTemplate(HibernateTemplate hibernateTemplate){
		defaultDao.changeHibernateTemplate(hibernateTemplate);
	}
	
	public boolean delete(Object object) {
		return defaultDao.delete(object);
	}
	
	public List<?> findByProperty(String propertyName, Object value) {
		return defaultDao.findByProperty(propertyName, value);
	}
	
	public List<?> findByProperty(String[] propertyNames, Object[] values, Integer firstResult, Integer size) {
		return defaultDao.findByProperty(propertyNames, values, firstResult, size);
	}
}
