<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>${webTitle }-操作成功</title>
<%@ include file="common/header.jsp"%>
</head>

<body class="no-skin">
<div id="navbar" class="navbar navbar-default ace-save-state  navbar-fixed-top">
	<div class="navbar-container ace-save-state" id="navbar-container">
		<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
			<span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span> <span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		<div class="navbar-header pull-left">
			<a href="#" class="navbar-brand">
				<small><i class="fa fa-wec"></i>电话管理系统</small>
			</a>
		</div>
	</div>
</div>
	<div class="main-container" id="main-container">
		<%@ include file="common/menu.jsp"%>
		<div class="main-content">
			<div class="main-content-inner">

				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">
					<div class="alert alert-success" style="text-align: center;">
						<h4>
							<i class="fa fa-check-circle"></i> ${msg }
						</h4>
						<a href="${backUrl}">如果你的浏览器没有自动跳转，请点击此链接</a>
						<script type="text/javascript">
							setTimeout(function() {
								location.href = "${backUrl}";
							}, 2000);
						</script>
					</div>


					<!-- /.main-content -->
				</div>
				<!-- /.main-container -->
				<%@ include file="common/js.jsp"%>
</body>
</html>
