<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>电话管理系统</title>
<%@ include file="common/header.jsp"%>
</head>

<body class="no-skin">
	<%@ include file="common/top.jsp"%>

	<div class="main-container ace-save-state" id="main-container">
		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
				ace.settings.loadState('main-container')
			} catch (e) { 
			}
		</script>
		<%@ include file="common/menu.jsp"%>
		<div class="main-content">
			<div class="main-content-inner">
				<!-- #section:basics/content.breadcrumbs -->
				<div class="breadcrumbs" id="breadcrumbs">
					<script type="text/javascript">
						try {
							ace.settings.check('breadcrumbs', 'fixed')
						} catch (e) {
						}
					</script>

					<ul class="breadcrumb">
						<li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">首页</a></li>
					</ul>
					<!-- /.breadcrumb -->


					<!-- /section:basics/content.searchbox -->
				</div>

				<!-- /section:basics/content.breadcrumbs -->
				<div class="page-content">


					<!-- /section:settings.box -->
					<div class="page-header">
						<h1>
							信息管理
						</h1>
					</div>
					<!-- /.page-header -->

				</div>
				<!-- /.page-content -->
			</div>
		</div>
		<!-- /.main-content -->
	</div>
	<!-- /.main-container -->
	<%@ include file="common/js.jsp"%>

</body>
</html>
