package com.framework.dao;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

public interface BaseHibernateDao<T> {
	void changeHibernateTemplate(HibernateTemplate hibernateTemplate);

	@Transactional(propagation = Propagation.REQUIRED)
	boolean delete(Object object);
	
	List<T> findByProperty(String[] propertyNames, Object[] values,
			Integer firstResult, Integer size);
	
	public List<T> findByProperty(String propertyName, Object value);
	
}
