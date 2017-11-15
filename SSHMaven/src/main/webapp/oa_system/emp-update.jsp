<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>修改员工</title>
<link href="${pageContext.request.contextPath }/OA_System/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/OA_System/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/OA_System/js/jquery-2.1.0.js"></script>
<style type="text/css">
	h4{
		text-align: center;
		font: oblique;
	}
</style>
</head>
<body>
	<div style="padding: 50px 250px 100px 100px">
 	<h4>信息修改</h4>
    <form method="post" action="${pageContext.request.contextPath}/emp-update" class="bs-example bs-example-form" role="form">
        <div class="input-group input-group-lg">
        	<input name="employeeId" type="text" value="${employee.employeeId }" hidden="hidden"> 
            <span class="input-group-addon">用户名</span>
            <input id="name" name="employeeName" type="text" class="form-control" value="${employee.employeeName }">
            <span id="span">
            </span>
        </div>
        <br>
        <div class="input-group input-group-lg">
            <span class="input-group-addon">密码</span>
            <input name="employeePassword" type="text" class="form-control" value="${employee.employeePassword }">
        </div>
        <br>
        <div class="input-group input-group-lg">
            <span class="input-group-addon">昵称</span>
            <input name="employeeNickname" type="text" class="form-control" value="${employee.employeeNickname }">
        </div>
        <br>
        <label class="radio-inline">性别：</label>
        <label class="radio-inline">
  			<input type="radio" name="employeeSex" id="inlineRadio1" value="男"> 男
		</label>
		<label class="radio-inline">
		  	<input type="radio" name="employeeSex" id="inlineRadio2" value="女"> 女
		</label>
        <br>
        <div class="input-group input-group-lg">
            <span class="input-group-addon">联系电话</span>
            <input name="employeePhone" type="text" class="form-control" value="${employee.employeePhone }">
        </div>
        <br>
        <div>
        	<select class="form-control" name="employeeJobId"> 
        		<option value="${employee.employeeJobId }">
        			<c:if test="${employee.employeeJobId ==1}">人事助理</c:if>
        			<c:if test="${employee.employeeJobId ==2}">前台</c:if>
        			<c:if test="${employee.employeeJobId ==3}">人事</c:if>
        			<c:if test="${employee.employeeJobId ==4}">经理</c:if>
        		</option>
        		<c:forEach items="${jobs }" var="jobs">
        			<option value="${jobs.jobId }">${jobs.jobName }</option>
        		</c:forEach>
				
        	</select>
        </div>
        <div class="col-lg-6">
                  
                </div>
                    <span class="input-group-btn">
                        <button class="form-control" type="submit">Go!</button>
                    </span>
                </div><!-- /input-group -->
            </div>
    </form>
</div>
</body>
</html>