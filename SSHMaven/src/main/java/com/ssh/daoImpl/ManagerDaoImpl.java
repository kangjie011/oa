package com.ssh.daoImpl;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SQLQuery;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.ssh.dao.ManagerDao;
import com.ssh.model.Person;
import com.ssh.model.User;

@Repository
public class ManagerDaoImpl extends HibernateTemplate implements ManagerDao {

	@Resource(name = "sessionFactory")
	@Override
	public void setSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	@Override
	public List selectOrderByWeek() {

		List list = this.getSessionFactory().getCurrentSession()
				.createSQLQuery("SELECT COUNT(*) FROM person p,time t WHERE p.pid=t.pid \r\n"
						+ "and	 YEARWEEK(date_format(t.pordertime,'%Y-%m-%d')) = YEARWEEK(now())-1;")
				.list();
		if (list != null && list.size() > 0 && list.get(0) != null) {
			return list;
		}
		return null;
	}

	@Override
	public List selectVisitByWeek() {
		List list = this.getSessionFactory().getCurrentSession()
				.createSQLQuery(" SELECT COUNT(*) FROM person p,time t WHERE p.pid=t.pid\r\n"
						+ "	and  YEARWEEK(date_format(t.pvisittime,'%Y-%m-%d')) = YEARWEEK(now())-1;")
				.list();
		if (list != null && list.size() > 0 && list.get(0) != null) {
			return list;
		}
		return null;
	}

	@Override
	public List selectSignByWeek() {
		List list = this.getSessionFactory().getCurrentSession().createSQLQuery(
				" SELECT COUNT(*) FROM person p,time t WHERE p.pid=t.pid and YEARWEEK(date_format(t.psigntime,'%Y-%m-%d'))\r\n"
						+ "	  = YEARWEEK(now())-1;")
				.list();
		if (list != null && list.size() > 0 && list.get(0) != null) {
			return list;
		}
		return null;
	}

	// 按月查来访总人数
	@Override
	public List selectVisitByMonth(int month) {
		List list = this.getSessionFactory().getCurrentSession()
				.createSQLQuery(
						" select count(*) from person p,time t where p.pid=t.pid and date_format(t.pvisittime,'%m') ="
								+ month + ";")
				.list();
		if (list != null && list.size() > 0 && list.get(0) != null) {
			return list;
		}
		return null;
	}

	// 按月查签订总人数
	@Override
	public List selectSignByMonth(int month) {
		List list = this.getSessionFactory().getCurrentSession()
				.createSQLQuery(
						" select count(*) from person p,time t where p.pid=t.pid and date_format(t.psigntime,'%m') ="
								+ month + ";")
				.list();
		if (list != null && list.size() > 0 && list.get(0) != null) {
			return list;
		}
		return null;
	}

	// 职员
	@Override
	public void addUser(User u) {

		this.getSessionFactory().getCurrentSession()
				.createSQLQuery(" insert into User(unickname,uname,upwd,uphone,ujob,udel)  VALUES ('" + u.getUnickname()
						+ "','" + u.getUname() + "','" + u.getUpwd() + "', '" + u.getUphone() + "','" + u.getUjob()
						+ "',1);")
				.executeUpdate();

	}

	@Override
	public void updateUser(User u) {
		this.getSessionFactory().getCurrentSession()
				.createSQLQuery("update user set unickname='" + u.getUnickname() + "',uname='" + u.getUname()
						+ "',upwd='" + u.getUpwd() + "',uphone='" + u.getUphone() + "',ujob=" + u.getUjob()
						+ " where uid=" + u.getUid() + ";")
				.executeUpdate();
	}

	@Override
	public void delUser(int id) {
		this.getSessionFactory().getCurrentSession().createSQLQuery("update user set udel=0 where uid=" + id + "")
				.executeUpdate();
	}

	@Override
	public List selectAllUser() {
		List list = this.getSessionFactory().getCurrentSession().createSQLQuery("select * from user where udel=1")
				.list();

		if (list != null && list.size() > 0 && list.get(0) != null) {
			return list;
		}
		return null;
	}

	@Override
	public List selectOneUser(int id) {

		List list = this.getSessionFactory().getCurrentSession()
				.createSQLQuery("		select * from user  where uid=" + id + " " + "").list();
		if (list != null && list.size() > 0 && list.get(0) != null) {
			return list;
		}
		return null;

	}

	// 候选人 增删改总经理线下与人事沟通
	@Override
	public List selectAllPerson(Person p, String minDate, String maxDate) {
		List list = this.getSessionFactory().getCurrentSession()
				.createSQLQuery("select * from person p,time t where p.pid=t.pid").list();
		if (list != null && list.size() > 0 && list.get(0) != null) {
			return list;
		}
		return null;
	}

	// 当月来访总人数/当月预定总人数
	@Override
	public List orderSuccessPercent(int id) {
		List list = this.getSessionFactory().getCurrentSession().createSQLQuery(
				" select (SELECT count(*) FROM person p,time t where t.pid=p.pid and t.pvisittime is not null)/(SELECT count(*) FROM person p,time t where t.pid=p.pid and t.pordertime is not null)"
						+ "")
				.list();
		if (list != null && list.size() > 0 && list.get(0) != null) {
			return list;
		}
		return null;
	}

	// 当月签订总人数/当月来访总人数
	@Override
	public List interviewSuccessPercent(int id) {
		List list = this.getSessionFactory().getCurrentSession().createSQLQuery(
				" select (SELECT count(*) FROM person p,time t where t.pid=p.pid and t.psigntime is not null)/(SELECT count(*) FROM person p,time t where t.pid=p.pid and t.pvisittime is not null)"
						+ "")
				.list();
		if (list != null && list.size() > 0 && list.get(0) != null) {
			return list;
		}
		return null;
	}

	@Override
	public String excel(String str) {
 		return null;
	}

}
