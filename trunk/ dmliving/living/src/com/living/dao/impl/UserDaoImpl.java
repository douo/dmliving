package com.living.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.framework.dao.impl.BaseHibernateDaoImpl;
import com.living.dao.UserDao;
import com.living.model.User;

@Repository
public class UserDaoImpl extends BaseHibernateDaoImpl<User> implements UserDao {

	public User findByAccountPwd(String account, String password) {
		String[] propertyNames = {ACCOUNT, PASSWORD};
		Object[] values = {account, password};
		List<User> userList = findByProperty(propertyNames, values);
		if (userList != null && userList.size()>0) {
			return userList.get(0);
		}
		return null;
	}
	
	@Override
	public void initHibernateTemplate() {
	}

	@Override
	public User findByAccount(String account) {
		List<User> userList = findByProperty(ACCOUNT, account);
		if (userList != null && userList.size() > 0) {
			return userList.get(0);
		}
		return null;
	}

	/* (non-Javadoc)
	 * @see com.living.dao.UserDao#adminLogin(com.living.model.User)
	 */
	@SuppressWarnings("unchecked")
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public User adminLogin(User user) {
//		List<User> users = getHibernateTemplate().getSessionFactory().getCurrentSession().createCriteria(User.class)
//		.add(Restrictions.eq("email", Constants.NAMESPACE_ADMIN)).createCriteria("user_role", Criteria.LEFT_JOIN)
//		.createCriteria("role", Criteria.LEFT_JOIN).list();
		String sql = "select u.email, r.role_name from user u join user_role ur " +
				"on u.user_id = ur.user_id join role r on r.role_id = ur.role_id " +
				"where email = 'admin'";
		System.out.println("sql: " + sql);
		List<User> users = getHibernateTemplate().getSessionFactory().getCurrentSession().createSQLQuery(sql).addEntity(User.class).list();
		if (users != null && users.size()>0) {
			return users.get(0);
		}
		return null;
	}
}