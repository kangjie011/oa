package com.ssh.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.dao.ManagerDao;
import com.ssh.model.Person;
import com.ssh.model.User;
import com.ssh.service.ManagerService;

@Service
public class ManagerServiceImpl implements ManagerService {
	@Autowired
	ManagerDao ManagerDaoImpl;

	@Override
	public void addUser(User u) {
		ManagerDaoImpl.addUser(u);
	}

	@Override
	public List orderSuccessPercent(int id) {
		List orderSuccessPercent = ManagerDaoImpl.orderSuccessPercent(id);
		return orderSuccessPercent;
	}

	@Override
	public List selectByWeek() {
		List list=new ArrayList();
		
		List selectOrderByWeek = ManagerDaoImpl.selectOrderByWeek();
		List selectVisitByWeek = ManagerDaoImpl.selectVisitByWeek();
		List selectSignByWeek = ManagerDaoImpl.selectSignByWeek();
		list.add(selectOrderByWeek.get(0));
		list.add(selectVisitByWeek.get(0));
		list.add(selectSignByWeek.get(0));
		return list;
	}

	@Override
	public List selectByMonth(int month) {
		List list=new ArrayList();
		for(int i=1;i<=12;i++) {
			List signbyMonth = ManagerDaoImpl.selectSignByMonth(month);
			list.add(signbyMonth);
			System.out.println("第"+i+"个月,"+"有"+signbyMonth+"个人签单");
		} 
		return list;	 
	}

	@Override
	public void updateUser(User u) {
		ManagerDaoImpl.updateUser(u);		
	}

	@Override
	public void delUser(int id) {
		ManagerDaoImpl.delUser(id);		
	}

	@Override
	public List selectAllUser() {
		List selectAllUser = ManagerDaoImpl.selectAllUser();
		return selectAllUser;
	}

	@Override
	public List selectAllPerson(Person p, String minDate, String maxDate) {
		List selectAllPerson = ManagerDaoImpl.selectAllPerson(p, minDate, maxDate);
		return selectAllPerson;
	}

	@Override
	public List interviewSuccessPercent(int id) {
		List interviewSuccessPercent = ManagerDaoImpl.interviewSuccessPercent(id);
		return interviewSuccessPercent;
	}

	@Override
	public String excel(String str) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List selectOneUser(int id) {
		List selectOneUser = ManagerDaoImpl.selectOneUser(id);
		return selectOneUser;
	}
}
