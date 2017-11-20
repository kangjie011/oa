package com.ssh.service;

import java.util.List;

import com.ssh.model.User;

public interface ManagerService {
	// 添加用户
	public void addUser(User u);
	
	public List orderSuccessPercent(int id) ;

}
