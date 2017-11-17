package com.ssh.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
 * 创建时间：2017年11月10日 项目名称：SSHMaven
 * 
 * @author 亢杰
 * @version 1.0
 *
 */
@Controller
public class LoginAction extends ActionSupport implements ModelDriven<User> {

	private User u = new User();

	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}

	@Override
	public User getModel() {
		return u;
	}

	@Resource
	LoginService loginService;
	@Autowired
	PersonService personService;

	// 转登录页
	public String change() {
		return "success";
	}

	// 登录
	public String login() {
		HttpServletRequest request = Comment.getRequest();
		HttpServletResponse response = Comment.getResponse();
		List list = loginService.login(u);
		if (list.size() == 1) {
			Object[] obj = (Object[]) list.get(0);
			Comment.getSession().setAttribute("uid", obj[0]);
			Comment.getSession().setAttribute("unickname", obj[1]);
			Comment.getSession().setAttribute("ujob", obj[2]);
//	        //记住用户名、密码功能(注意：cookie存放密码会存在安全隐患)
//	        String remFlag = request.getParameter("remFlag");
//	        if("1".equals(remFlag)){ //"1"表示用户勾选记住密码
//	            /*String cookieUserName = Utils.encrypt(name);
//	            String cookiePwd = Utils.encrypt(passWord);
//	            String loginInfo = cookieUserName+","+cookiePwd;*/
//	            String loginInfo =u.getUname()+","+u.getUpwd();
//	            Cookie userCookie=new Cookie("loginInfo",loginInfo); 
//
//	            userCookie.setMaxAge(30*24*60*60);   //存活期为一个月 30*24*60*60
//	            userCookie.setPath("/");
//	            System.out.println("记住密码");
//	            response.addCookie(userCookie); 
//	        }
			return "success";
		} else {
			return "error";
		}
	}

}
