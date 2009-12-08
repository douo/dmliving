package com.framework.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

public interface BaseHibernateDao<T> {
	void changeHibernateTemplate(HibernateTemplate hibernateTemplate);

	@Transactional(propagation = Propagation.REQUIRED)
	boolean delete(Object object);
	
	@Transactional(propagation = Propagation.REQUIRED)
	List<T> findByProperty(String[] propertyNames, Object[] values,
			Integer firstResult, Integer size);
	
	@Transactional(propagation = Propagation.REQUIRED)
	List<T> findByProperty(String propertyName, Object value);
	
	@Transactional(propagation = Propagation.REQUIRED)
	T save(Object domai);
}
