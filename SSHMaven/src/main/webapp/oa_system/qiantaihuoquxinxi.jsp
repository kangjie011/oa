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
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/OA_System/js/jquery-2.1.0.js"></script>
<style type="text/css">
	ul{
	list-style:none;
	margin:0;
	}
	li{
	display:inline;
	float: right;
	
	}
	thead {
	font-style: italic;
}
table caption{
	text-align: center;
}
</style>
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
		<caption >今日上门人员</caption>
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
		</tr>
		</thead>
		<tbody>
		<c:forEach items="${list }" var="person">
			<tr>
				<td>${person.person_id }</td>
				<td><a href="${pageContext.request.contextPath }/person-selectPersonById?id=${person.person_id }">${person.person_name }</a></td>
				<td>${person.person_sex }</td>
				<td>${person.person_postion }</td>
				<td>${person.person_exceptesalary }</td>
				<td>${person.person_yuyuetime1 }</td>
				<td>${person.person_yuyuetime2 }</td>
				<td>${person.person_renshizhuli }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>

</html>
