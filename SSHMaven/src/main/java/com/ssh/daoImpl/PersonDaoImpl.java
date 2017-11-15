package com.ssh.daoImpl;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;
import com.ssh.dao.PersonDao;
/**
 * 
 * 创建时间：2017年11月13日
 * 项目名称：SSHMaven
   @author 亢杰
   @version 1.0
 *
 */
@Repository
public class PersonDaoImpl extends HibernateTemplate implements PersonDao {
	
	@Resource(name="sessionFactory")
	@Override
	public void setSessionFactory(SessionFactory sessionFactory) {
		super.setSessionFactory(sessionFactory);
	}

	@Override
	public List selectPersonAllByDate() {
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String time = sdf.format(calendar.getTime());
		List list = this.getSessionFactory().getCurrentSession().createSQLQuery("SELECT COUNT(*) FROM person p where p.pvisittime='"+time+"';").list();
		return list;
	}
	

}
