package com.ssh.controller;

import java.math.BigInteger;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.ssh.model.User;
import com.ssh.service.LoginService;
import com.ssh.service.PersonService;
import com.ssh.until.Comment;
/**
 * 
 * 创建时间：2017年11月10日
 * 项目名称：SSHMaven
   @author 亢杰
   @version 1.0
 *
 */
@Controller
public class LoginAction extends ActionSupport implements ModelDriven<User> {
	
	private User u = new User();
	@Override
	public User getModel() {
		return u;
	}
	@Resource
	LoginService loginService;
	@Autowired
	PersonService personService;
	//转登录页
	public String change(){
		return "success";
	}
	//登录
	public String login(){
		System.out.println(33);
		List nums = personService.selectPersonAllByDate();
		BigInteger o = (BigInteger) nums.get(0);
		Comment.getSession().setAttribute("num", o);
		List list = loginService.login(u);
		Object[] obj = (Object[]) list.get(0);
//		System.out.println("id="+obj[0]+"name="+obj[1]+"jobName="+obj[2]);
		if(list.size()==1){
			Comment.getSession().setAttribute("id", obj[0]);
			Comment.getSession().setAttribute("name", obj[1]);
			Comment.getSession().setAttribute("jobName", obj[2]);
			return "success";
		}else{
			return "error";
		}
	}
	

}
