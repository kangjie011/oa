package com.ssh.daoImpl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

import com.ssh.dao.LoginDao; 
import com.ssh.model.User;

@Repository()
public class LoginDaoImpl extends HibernateDaoSupport implements LoginDao {
	@Resource(name = "sessionFactory")
	public void setSessionFactoryOverride(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);

	}

	@Override
	public List login(User u) {

		List<Object> list = (List<Object>) this.getHibernateTemplate().getSessionFactory().getCurrentSession()
				.createSQLQuery("select u.uid,u.unickname , job.jname from User u , Job job where u.ujob=job.jid and u.uname='"
								+ u.getUname() + "' and u.upwd='" + u.getUpwd() + "'").list();

		return list;
	}

}
