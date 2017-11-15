<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>信息展示页</title>
<link href="${pageContext.request.contextPath }/OA_System/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/OA_System/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/OA_System/js/jquery-2.1.0.js"></script>
</head>
<body>
<form action="${pageContext.request.contextPath }/person-selectjbxx">
		
		<ul>
	<li><div class="news"><input class="btn btn-primary" type="submit" value="查询"/></div></li>
	<li><div class="news"><label>预约时间:</label><input type="text" class="Wdate" onclick="WdatePicker()" name="person_yuyuetime1"/></div></li>
	<li><div class="news"><label>姓名:</label><input type="text" name="person_name"/></div></li>
		</ul>
		
	</form>
	<hr />
	<br />
	<table class="table">
		<caption>员工展示表</caption>
		<thead>
			<tr>
				<td>编号</td>
				<td>姓名</td>
				<td>性别</td>
				<td>期待岗位</td>
				<td>期待薪资</td>
				<td>一次预约时间</td>
				<td>二次预约时间</td>
				<td>预约人</td>
				<td>面试人</td>
				
			</tr>
			
		</thead>
		<tbody>
			<c:forEach items="${personList }" var="person">
				<tr>
				<td>${person.person_id }</td>
				<td><a href="${pageContext.request.contextPath }/addInfo?id=${person.person_id}">${person.person_name }</a></td>
				<td>${person.person_sex }</td>
				<td>${person.person_postion }</td>
				<td>${person.person_exceptesalary }</td>
				<td>${person.person_yuyuetime1 }</td>
				<td>${person.person_yuyuetime2 }</td>
				<td>${person.person_renshizhuli }</td>
				<td>${person.person_renshi }</td>
				
			</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>