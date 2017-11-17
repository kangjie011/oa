package com.ssh.daoImpl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.ssh.dao.AssistantDao;
import com.ssh.model.Person;
import com.ssh.model.User;

public class AssistantDaoImpl  extends HibernateDaoSupport implements AssistantDao{

	@Override
	public List selectOrder(Person p, User u) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String updateLose(Person p) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String addPerson(Person p, int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List selectOrderSuccess(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List selectByCondition(Person p, int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateStateTwoOrder() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateStateLose() {
		// TODO Auto-generated method stub
		
	}

	
}
