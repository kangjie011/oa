package com.ssh.Interceptor;

import javax.servlet.http.Cookie;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import com.ssh.until.Comment;

public class LoginInterceptor implements Interceptor{

	@Override
	public void destroy() {
		
	}

	@Override
	public void init() {
		
	}

	@Override
	public String intercept(ActionInvocation actionInvocation) throws Exception {
		System.out.println("begin check login interceptor!");
		
      String name = Comment.getRequest().getParameter("employeeName");
  
      String passWord = Comment.getRequest().getParameter("employeePassword");
     
      //记住用户名、密码功能(注意：cookie存放密码会存在安全隐患)
      String remFlag = Comment.getRequest().getParameter("aaa");
      System.out.println(remFlag);
      if("1".equals(remFlag)){ //"1"表示用户勾选记住密码
          String loginInfo = name+","+passWord;
          Cookie userCookie=new Cookie("loginInfo",loginInfo); 

          userCookie.setMaxAge(30*24*60*60);   //存活期为一个月 30*24*60*60
          userCookie.setPath("/");
          Comment.getResponse().addCookie(userCookie); 
          return "success";
      }else{
        return actionInvocation.invoke();
      }

	}

}
