package com.ssh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ssh.model.User;
import com.ssh.service.ManagerService;

@Controller
public class ManagerAction extends ActionSupport implements ModelDriven<User> {

	private static final long serialVersionUID = 1L;

	private User u = new User();

	// public User getU() {
	// return u;
	// }
	//
	// public void setU(User u) {
	// this.u = u;
	// }

	@Override
	public User getModel() {
		return u;
	}

	@Autowired
	ManagerService managerServiceImpl;

	// unickname="asd"&uname="asd"&upwd="asd"&uphone="2313211321"&ujob=1
	public String addUser() {
		System.out.println(u);

		managerServiceImpl.addUser(u);
		return null;
	}

	public String orderSuccessPercent() {

		List orderSuccessPercent = managerServiceImpl.orderSuccessPercent(u.getUid());
		System.out.println(orderSuccessPercent);
		return null;
	}

}
