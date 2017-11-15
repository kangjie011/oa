<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录EASY后台管理系统</title>
<link href="${pageContext.request.contextPath }/OA_System/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath }/OA_System/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/OA_System/js/cloud.js" type="text/javascript"></script>
<%@ taglib prefix="s" uri="/struts-tags" %>
<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录EASY后台管理界面平台</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
      <form action="${pageContext.request.contextPath}/login" method="post">
	     <div class="loginbox">
	    
	    <ul>
	    <li><input name="employeeName" type="text"  class="loginuser" placeholder="admin"/></li>
	    <li><input name="employeePassword" type="text" class="loginpwd" placeholder="123"/></li>
	    <li><input name="" type="submit" class="loginbtn" value="登录"/>
	    <label><input name="checkbox" type="checkbox" value="" checked="checked" />记住密码</label>
	    <label><a href="#">忘记密码？</a></label></li>
	    </ul>
	    
	    
	    </div>
     </form>  
   
    
    </div>
    
    
    
    <div class="loginbm">版权所有  2017-2035&nbsp;&nbsp;&nbsp;<a href="http://www.easyltd.cn" target="blank">技术支持：沈阳依森信息技术有限公司</a>  </div>
	
    
</body>

</html>
