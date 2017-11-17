<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

	<head>

		<meta charset="utf-8">
		<title>依森科技——登陆</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">

		<!-- CSS -->
		<link rel='stylesheet' href='http://fonts.googleapis.com/css?family=PT+Sans:400,700'>
		<link rel="stylesheet" href="oa_system/css/reset.css">
		<link rel="stylesheet" href="oa_system/css/supersized.css">
		<link rel="stylesheet" href="oa_system/css/style1.css">

		<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
		<!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

	</head>

	<body>

		<div class="page-container">
			<h1>依森科技</h1>
			<form action="login" method="post">
				<input type="text" name="uname" id="uname"class="username" placeholder="账号">
				<input type="password" name="upwd" id="upwd"class="password" placeholder="密码">
				<input type="checkbox" style="width:15px;height: 15px;"id="remFlag" name="aaa"onclick="remember()" />记住密码
				<button type="submit" >登陆</button>
				<div class="error"><span>+</span></div>
			</form>
			<!--<div class="connect">
                <p>Or connect with:</p>
                <p>
                    <a class="facebook" href=""></a>
                    <a class="twitter" href=""></a>
                </p>
            </div>-->
		</div>
		<!-- Javascript -->
		<script src="oa_system/js/jquery-1.8.2.min.js"></script>
		<script src="oa_system/js/supersized.3.2.7.min.js"></script>
		<script src="oa_system/js/supersized-init.js"></script>
		<script src="oa_system/js/scripts.js"></script>
<script>
$(document).ready(function(){
    //记住密码功能
    var str = getCookie("loginInfo");
    str = str.substring(1,str.length-1);
    var username = str.split(",")[0];
    var password = str.split(",")[1]; 

    //自动填充用户名和密码
    $("#uname").val(username);
    $("#upwd").val(password);
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
	</body>

</html>