package com.framework.dao.util;

import org.hibernate.SessionFactory;
import org.hibernate.persister.entity.AbstractEntityPersister;
import org.hibernate.persister.entity.SingleTableEntityPersister;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Service;

@Service
public class DaoUtil extends HibernateDaoSupport {
	@Autowired
	public DaoUtil(@Qualifier("default-hibernateTemplate") HibernateTemplate hibernateTemplate) {
		super.setHibernateTemplate(hibernateTemplate);
	}
	
	/**
	 * 取得主键属性
	 * @param objClass
	 * @return
	 */
	public String getPrimaryKeyProperty(Class<?> objClass) {
		SessionFactory factory = getHibernateTemplate().getSessionFactory();
		AbstractEntityPersister classMetadata = (SingleTableEntityPersister) factory.getClassMetadata(objClass);
		return classMetadata.getIdentifierPropertyName();
	}
}
