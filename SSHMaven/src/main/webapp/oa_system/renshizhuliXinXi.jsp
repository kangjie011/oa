<%@ page language="java" contentType="text/html; charset=utf8"
    pageEncoding="utf8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8">
<title>人事助理信息</title>
<link href="${pageContext.request.contextPath }/oa_system/bootstrap-3.3.7-dist/css/bootstrap.min.css" rel="stylesheet"/>
<script type="text/javascript" src="${pageContext.request.contextPath }/oa_system/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script language="javascript" type="text/javascript" src="My97DatePicker/WdatePicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/oa_system/js/jquery-2.1.0.js"></script>
</head>
<body>
	<form class="bs-example bs-example-form" role="form">
		 <div class="input-group input-group-lg">
            <span class="input-group-addon">姓名 ：</span>
            <input type="text" class="form-control" placeholder="请输入姓名。。。">
        </div>
        <br>
		
                <div class="input-group input-group-lg">
                    <span class="input-group-addon">
                        男：<input type="radio"></span>
                     <span class="input-group-addon">
                        女：<input type="radio"></span>    
                    <input type="text" disabled="disabled" class="form-control" hidden="hidden">
                </div>
            
         <br>
		 <div class="input-group input-group-lg">
            <span class="input-group-addon">电话：</span>
            <input type="text" class="form-control" placeholder="请输入电话。。。">
        </div>
        <br>
		 <div class="input-group input-group-lg">
            <span class="input-group-addon">预约时间：</span>
            <input type="text" class="form-control" placeholder="请选择预约时间。。。">
        </div>
        <br>
		 <div class="input-group input-group-lg">
            <span class="input-group-addon">备注：</span>
            <input type="text" class="form-control" placeholder="请输入备注信息。。。">
        </div>
        <br>
		<div>
			<input type="submit" value="提交">
		</div>
	</form>
</body>
</html>