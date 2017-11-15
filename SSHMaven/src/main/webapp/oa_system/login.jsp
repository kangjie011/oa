<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录EASY后台管理系统</title>
<link href="${pageContext.request.contextPath }/oa_system/css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="${pageContext.request.contextPath }/oa_system/js/jquery.js"></script>
<script src="${pageContext.request.contextPath }/oa_system/js/cloud.js" type="text/javascript"></script>
<%@ taglib prefix="s" uri="/struts-tags" %>
<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 
<script>
$(document).ready(function(){
    //记住密码功能
    var str = getCookie("loginInfo");
    str = str.substring(1,str.length-1);
    var username = str.split(",")[0];
    var password = str.split(",")[1];
    //自动填充用户名和密码
    $("#username").val(username);
    $("#password").val(password);
});

//获取cookie
function getCookie(cname) {
var name = cname + "=";
var ca = document.cookie.split(';');
for(var i=0; i<ca.length; i++) {
    var c = ca[i];
    while (c.charAt(0)==' ') c = c.substring(1);
    if (c.indexOf(name) != -1) return c.substring(name.length, c.length);
}
return "";
}
	function remember() {
		alert("进入方法");
		var remFlag = $("input[type='checkbox']").is(':checked');
	    if(remFlag==true){
	        var conFlag = confirm("记录密码功能不宜在公共场所(如网吧等)使用,以防密码泄露.您确定要使用此功能吗?");
	        if(conFlag){ 
	            $("#remFlag").val("1");
	        }else{
	            $("input[type='checkbox']").removeAttr('checked');
	            $("#remFlag").val("");
	        }
	    }else{
	        $("#remFlag").val("");
	    }
	}
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
	    <li><input id="username" name="employeeName" type="text" value="${employeeName }"  class="loginuser" placeholder="admin"/></li>
	    <li><input id="password" name="employeePassword" type="password" value="${employeePassword }" class="loginpwd" placeholder="123"/></li>
	    <li><input name="" type="submit" class="loginbtn" value="登录"/>
	    <label><input id="remFlag" name="aaa" type="checkbox" onclick="remember()" />记住密码</label>
	    <label><a href="#">忘记密码？</a></label></li>
	    </ul>
	    
	    
	    </div>
     </form>  
   
    
    </div>
    
    
    
    <div class="loginbm">版权所有  2017-2035&nbsp;&nbsp;&nbsp;<a href="http://www.easyltd.cn" target="blank">技术支持：沈阳依森信息技术有限公司</a>  </div>
	
    
</body>

</html>
