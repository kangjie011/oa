<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>添加新员工</title>
<link href="${pageContext.request.contextPath }/OA_System/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/OA_System/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/OA_System/js/jquery-2.1.0.js"></script>
<style type="text/css">
 	h4{ 
 		text-align: center; 
 		
	} 
	body {
	    font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
    font-size: 14px;
    line-height: 1.42857143;
    color: #333;
}
 	
</style>
<script type="text/javascript">
	function checkName() {
		var name = $("#name").val();
		alert(name);
		$.ajax({
			type:"GET",
			url:"http://localhost:9999/SSH_Maven/checkName",
			data:"name="+name,
			success:function(msg){
				if(msg=="用户已存在"){
					$("#span").html("<p style='color:red'>用户已存在</p>");
				}else{
					$("#span").html("<p style='color:green'>用户名可以使用</p>");
				}
			}
			
		});
	}
</script>
</head>
<body>
 <div style="padding: 50px 250px 100px 100px">
 	<h4>添加员工</h4>
    <form method="post" action="${pageContext.request.contextPath}/emp-add" class="bs-example bs-example-form" role="form">
        <div class="input-group input-group-lg">
            <span class="input-group-addon">用户名</span>
            <input id="name" onblur="checkName()" name="employeeName" type="text" class="form-control" placeholder="填写用户名">
            
        </div>
        <label><span id="span">
            </span></label>
        <br>
        <div class="input-group input-group-lg">
            <span class="input-group-addon">密码</span>
            <input name="employeePassword" type="text" class="form-control" placeholder="填写密码">
        </div>
        <br>
        <div class="input-group input-group-lg">
            <span class="input-group-addon">昵称</span>
            <input name="employeeNickname" type="text" class="form-control" placeholder="填写昵称">
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
        <br>
        <div class="input-group input-group-lg">
            <span class="input-group-addon">联系电话</span>
            <input name="employeePhone" type="text" class="form-control" placeholder="填写手机号">
        </div>
        <br>
        <div>
        	<select class="form-control" name="employeeJobId"> 
        		<option>请选择</option>
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