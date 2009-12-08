package com.framework.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.apache.log4j.Logger;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.framework.dao.BaseHibernateDao;
import com.framework.dao.util.DaoUtil;

public abstract class BaseHibernateDaoImpl<T> extends HibernateDaoSupport implements
		BaseHibernateDao<T> {
	protected final Logger logger=Logger.getLogger(getClass());
	
	boolean desc=false; // 默认升序排列
	String orderPropertyName=""; // 排序的属性名
	
	@Autowired
	DaoUtil daoUtil;
	
	public abstract void initHibernateTemplate();
	
	/**
	 * This method has a constructor name
	 * @param hibernateTemplate
	 */
	@Autowired
	public void BaseHibernateDaoImpl(@Qualifier("default-hibernateTemplate") HibernateTemplate hibernateTemplate) {
		super.setHibernateTemplate(hibernateTemplate);
	}
	
	public void changeHibernateTemplate(HibernateTemplate hibernateTemplate) {
		super.setHibernateTemplate(hibernateTemplate);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public T save(Object domain) {
		try {
			initHibernateTemplate();
			getHibernateTemplate().save(domain);
			return (T)domain;
		} catch (DataAccessException e) {
			logger.error(e);
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 增加事务支持的删除方法
	 */
	@Transactional(propagation = Propagation.REQUIRED)
	public boolean delete(Object object) {
		try {
			initHibernateTemplate();
			getHibernateTemplate().delete(object);
			return true;
		} catch (Exception e) {
			logger.error(e);
			e.printStackTrace();
			return false;
		}
	}
	
	/**
	 * 通过一个属性和值对查找
	 * @param propertyName
	 * @param value
	 * @return
	 */
	public List<T> findByProperty(String propertyName, Object value) {
		String[] propertyNames = {propertyName};
		Object[] values = {value};
		return findByProperty(propertyNames, values);
	}
	
	/**
	 * 通过多个属性和值对查找
	 * @param propertyNames
	 * @param values
	 * @return
	 */
	public List<T> findByProperty(String[] propertyNames, Object[] values) {
		return findByProperty(propertyNames, values, null, null);
	}

	/**
	 * 通过多个属性和值对来查找, 支持分页显示
	 * @param propertyNames
	 * @param values
	 * @param firstResult
	 * @param size
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<T> findByProperty(String[] propertyNames, Object[] values, Integer firstResult, Integer size) {
		initHibernateTemplate();
		DetachedCriteria deta = DetachedCriteria.forClass(typeClass());
		for (int i=0; i<propertyNames.length; i++) {
			String propertyName = propertyNames[i];
			Object value = values[i];
			deta.add(Restrictions.like(propertyName, String.valueOf(value), MatchMode.ANYWHERE));
		}
		deta = addOrderBy(deta);
		if (firstResult != null && size != null) {
			return getHibernateTemplate().findByCriteria(deta, firstResult, size);
		} else {
			return getHibernateTemplate().findByCriteria(deta);
		}
	}
	
	/**
	 * 取得泛型类型
	 * @return 泛型类型
	 */
	@SuppressWarnings("unchecked")
	protected Class<T> typeClass() {
		return (Class<T>) ((ParameterizedType) getClass().getGenericSuperclass()).getActualTypeArguments()[0];
	}
	
	private DetachedCriteria addOrderBy(DetachedCriteria deta) {
		if (!orderPropertyName.equals("")) {
			if (isDesc()) {
				deta.addOrder(Order.desc(orderPropertyName));
			} else {
				deta.addOrder(Order.asc(orderPropertyName));
			}
		} else {
			try {
				orderPropertyName = daoUtil.getPrimaryKeyProperty(Class.forName(typeClass().getName()));
			} catch (Exception e) {
				logger.error(e);
				e.printStackTrace();
			}
			if (!orderPropertyName.equals("")) {
				if (isDesc()) {
					deta.addOrder(Order.desc(orderPropertyName));
				} else {
					deta.addOrder(Order.asc(orderPropertyName));
				}
			}
		}
		return deta;
	}

	public boolean isDesc() {
		return desc;
	}

	public void setDesc(boolean desc) {
		this.desc = desc;
	}

	public String getOrderPropertyName() {
		return orderPropertyName;
	}

	public void setOrderPropertyName(String orderPropertyName) {
		this.orderPropertyName = orderPropertyName;
	}
}
