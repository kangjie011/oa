<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>展示所有员工</title>
<link href="${pageContext.request.contextPath }/OA_System/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/OA_System/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/OA_System/js/jquery-2.1.0.js"></script>
</head>
<body>
	<table class="table">
		<caption>员工展示表</caption>
		<thead>
			<tr>
				<td>员工编号</td>
				<td>昵称</td>
				<td>性别</td>
				<td>电话</td>
				<td>职位</td>
				<td>操作</td>
			</tr>
			
		</thead>
		<tbody>
			<c:forEach items="${employees }" var="employees">
				<tr>
				<td>${employees.employeeId }</td>
				<td>${employees.employeeNickname }</td>
				<td>${employees.employeeSex }</td>
				<td>${employees.employeePhone }</td>
				<td>
					<c:if test="${employees.employeeJobId ==1}">人事助理 </c:if>
					<c:if test="${employees.employeeJobId ==2}">前台</c:if>
					<c:if test="${employees.employeeJobId ==3}">人事 </c:if>
					<c:if test="${employees.employeeJobId ==4}">经理</c:if>
				</td>
				<td>
				<a href="${pageContext.request.contextPath }/selectoTo?id=${employees.employeeId }">修改</a>
				<a href="${pageContext.request.contextPath }/delete?id=${employees.employeeId }">删除</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>