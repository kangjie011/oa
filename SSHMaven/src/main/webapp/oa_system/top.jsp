<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


</head>

<body style="background:url(images/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="main.html" target="_parent"><img src="images/logo.png" title="系统首页" /></a>
    </div>
        
    <ul class="nav">
    <!--<li><a href="left_consume.html" target="leftFrame" class="selected"><img src="images/icon01.png" title="工作台" /><h2>消费管理</h2></a></li>-->
<!--     <li><a href="left_technician.html" target="leftFrame"><img src="images/icon02.png" title="模型管理" /><h2>技师管理</h2></a></li> -->
<!--     <li><a href="left_card.html"  target="leftFrame"><img src="images/icon03.png" title="模块设计" /><h2>储值卡</h2></a></li> -->
<!--     <li><a href="left_member.html"  target="leftFrame"><img src="images/icon04.png" title="常用工具" /><h2>会员管理</h2></a></li> -->
<!--     <li><a href="left_manager_data.html"  target="leftFrame"><img src="images/tu.png" title="常用工具" /><h2>查看数据</h2></a></li> -->
<!--     <li><a href="left_manager_member.html"  target="leftFrame"><img src="images/ren.png" title="常用工具" /><h2>人员管理</h2></a></li> -->
<!--     <li><a href="left_manager_project.html"  target="leftFrame"><img src="images/pro.png" title="常用工具" /><h2>项目管理</h2></a></li> -->
   
    </ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="images/help.png" title="帮助"  class="helpimg"/></span><a href="http://www.easyltd.cn"target="blank">帮助</a></li>
    <li><a href="http://www.easyltd.cn"target="blank">支持</a></li>
    <li><a href="login.jsp"  target="blank">退出</a></li>
    </ul>
     
    <div class="user">
    <span>${jobName }</span>
    <span>${name }</span>
    <i>今日上门人数</i>
    <b>${num }</b>
    </div>    
    
    </div>

</body>

</html>
