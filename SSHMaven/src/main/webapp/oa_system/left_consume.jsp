<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/oa_system/css/style.css"
	rel="stylesheet" type="text/css" />
<script language="JavaScript"
	src="${pageContext.request.contextPath}/oa_system/js/jquery.js"></script>

<script type="text/javascript">
	$(function() {
		//导航切换
		$(".menuson li").click(function() {
			$(".menuson li.active").removeClass("active")
			$(this).addClass("active");
		});

		$('.title').click(function() {
			var $ul = $(this).next('ul');
			$('dd').find('ul').slideUp();
			if ($ul.is(':visible')) {
				$(this).next('ul').slideUp();
			} else {
				$(this).next('ul').slideDown();
			}
		});
	})
</script>


</head>

<body style="background: #f0f9fd;">
	<div class="lefttop">
		<span></span>
	</div>


	<c:if test="${sessionScope.jobName == '人事助理'}">
		<dl class="leftmenu">
			<!--人事guan'li  -->
			<dd>
				<div class="title">
					<span><img
						src="${pageContext.request.contextPath}/oa_system/images/leftico01.png" /></span>人事管理

				</div>
				<!--        人事助理用 -->

				<ul class="menuson">
					<li class="active"><cite></cite><a
						href="renshizhuli/renshizhuli.jsp" target="rightFrame">人事助理录入信息</a><i></i></li>
					<li><cite></cite><a
						href="${pageContext.request.contextPath }/person-renshichaxun"
						target="rightFrame">人事助理查询信息</a><i></i></li>
	</c:if>
	<c:if test="${sessionScope.jobName =='前台'}">
		<dl class="leftmenu">
			<!--人事guan'li  -->
			<dd>
				<div class="title">
					<span><img
						src="${pageContext.request.contextPath}/oa_system/images/leftico01.png" /></span>人事管理

				</div>
				<!--        人事助理用 -->

				<ul class="menuson">
					<li class="active"><cite></cite><a
						href="${pageContext.request.contextPath }/person-selecToDayEmp"
						target="rightFrame">候选人姓名预约时间</a><i></i></li>
				</ul>
			</dd>
	</c:if>
	<!-- 人事权限 -->
	<c:if test="${sessionScope.jobName=='人事' }">
		<dl class="leftmenu">
			<!--人事guan'li  -->
			<dd>
				<div class="title">
					<span><img
						src="${pageContext.request.contextPath}/oa_system/images/leftico01.png" /></span>人事管理

				</div>
				<!--        人事助理用 -->

				<ul class="menuson">
					<li class="active"><cite></cite><a
						href="${pageContext.request.contextPath }/person-renshiselecToDayEmp"
						target="rightFrame">候选人姓名预约时间</a><i></i></li>
				</ul>
			</dd>
	</c:if>
	<!--  经理权限-->
	<c:if test="${sessionScope.jobName == '经理'}">
		<dd>
			<div class="title">
				<span><img
					src="${pageContext.request.contextPath}/oa_system/images/leftico01.png" /></span>人事管理

			</div>
			<!--        人事助理用 -->

			<ul class="menuson">
				<!--  人事助理-->
				<li class="active"><cite></cite><a
					href="renshizhuli/renshizhuli.jsp" target="rightFrame">人事助理录入信息</a><i></i></li>
				<li><cite></cite><a
					href="${pageContext.request.contextPath }/person-renshichaxun"
					target="rightFrame">人事助理查询信息</a><i></i></li>

				<!-- 前台 -->
				<li><cite></cite><a
					href="${pageContext.request.contextPath }/person-selecToDayEmp"
					target="rightFrame">候选人姓名预约时间</a><i></i></li>



			</ul>

			<div class="title">
				<span><img
					src="${pageContext.request.contextPath}/oa_system/images/leftico01.png" /></span>员工管理
			</div>
			<ul class="menuson">
				<li><cite></cite><a
					href="${pageContext.request.contextPath}/emp-selectAllEmployee"
					target="rightFrame">查看所有员工</a><i></i></li>
				<li><cite></cite><a
					href="${pageContext.request.contextPath}/emp-addemployee"
					target="rightFrame">添加员工</a><i></i></li>
			</ul>
		</dd>
	</c:if>
	<!-- 统计信息 -->
	<dd>
		<div class="title">
			<span><img
				src="${pageContext.request.contextPath}/oa_system/images/leftico03.png" /></span><a
				href="goods.html" target="rightFrame">统计信息</a>
		</div>
		<ul class="menuson">
			<li><cite></cite><a href="imglist_room.html" target="rightFrame">预约信息</a><i></i></li>
			<li><cite></cite><a href="imglist_room_state.html"
				target="rightFrame">上门信息</a><i></i></li>
			<li><cite></cite><a href="#">录入简历信息</a><i></i></li>
			<li><cite></cite><a href="#">签约信息</a><i></i></li>
		</ul>
	</dd>

	<!-- 表单管理 -->
	<dd>
		<div class="title">
			<span><img
				src="${pageContext.request.contextPath}/oa_system/images/leftico04.png" /></span>表单管理
		</div>
		<ul class="menuson">
			<li><cite></cite><a href="#">导入Excel</a><i></i></li>
			<li><cite></cite><a href="#">导出Excel</a><i></i></li>
		</ul>

	</dd>

	</dl>

</body>
</html>
