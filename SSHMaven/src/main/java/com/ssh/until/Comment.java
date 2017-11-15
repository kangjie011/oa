package com.ssh.until;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

public class Comment {
	//获取request
	public static HttpServletRequest getRequest(){
		return ServletActionContext.getRequest();
	}
	//获取response
	public static HttpServletResponse getResponse(){
		return ServletActionContext.getResponse();
	}
	//获取session
	public static HttpSession getSession(){
		return getRequest().getSession();
	}
}
