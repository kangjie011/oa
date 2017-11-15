<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>前台获取信息表</title>
<link href="${pageContext.request.contextPath }/OA_System/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/OA_System/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/OA_System/js/jquery-2.1.0.js"></script>
<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<style type="text/css">
	
table thead {
	font-style:oblique;
}
table caption{
	text-align: center;
}
</style>
</head>

<body>

		<table class="table">
		<caption>昨日上门情况</caption>
			<thead>
				<tr>
			<td>姓名</td>
			<td>一次预约时间</td>
			<td>二次预约时间</td>
			<td>上门情况</td>
			<td>详情</td>
			</tr>
			</thead>
			
				<tbody>
					<c:forEach items="${personList }" var="l">
				<tr>
					<td>
					${l.person_name }
					</td>
					<td>
					${l.person_yuyuetime1 }
<!-- 				<input onclick="WdatePicker()" type="text" class=""/> -->
					</td>	
					<td>
					${l.person_yuyuetime2 }
<!-- 				<input onclick="WdatePicker()" type="text" class=""/> -->
					</td>
					<c:if test="${l.person_stateid ==1 }">
					<td>
					上门
					</td>
					</c:if>
					<c:if test="${l.person_stateid ==0}">
					<td>
					未上门
					</td>
					</c:if>
					<td><a href="${pageContext.request.contextPath }/person-chakanxinxibiao?id=${l.person_id }">查看信息</a></td>
				</tr>
				</c:forEach>
				</tbody>
			
		</table>	
    
</body>

</html>
