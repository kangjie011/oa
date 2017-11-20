package com.ssh.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssh.dao.ManagerDao;
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
}
