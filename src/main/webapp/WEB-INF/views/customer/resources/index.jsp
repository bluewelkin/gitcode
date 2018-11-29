<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="../../common/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>电话管理系统</title>
    <%@ include file="../../common/header.jsp" %>
    <style>
        .overlay-text {
            text-align: center;
            color: white;
        }
    </style>
</head>

<body class="no-skin">
<%@ include file="../../common/top.jsp" %>
<div class="main-container" id="main-container">
    <%@ include file="../../common/menu.jsp" %>
    <div class="main-content">
        <div class="main-content-inner">
            <!-- #section:basics/content.breadcrumbs -->
            <div class="breadcrumbs  breadcrumbs-fixed" id="breadcrumbs">
                <ul class="breadcrumb">
                    <li><i class="ace-icon fa fa-home home-icon"></i> <a href="#">首页</a></li>
                    <li class="active">客户信息管理</li>
                    <li class="active">来源管理</li>
                </ul>
                <!-- /.breadcrumb -->
            </div>

            <!-- /section:basics/content.breadcrumbs -->
            <div class="page-content">

                <!-- PAGE CONTENT BEGINS -->
                <div class="row">
                    <div class="col-xs-12" id="customerInfo">
                        <table id="treeTable" class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th width=20>序号</th>
                                <th width=180>名单来源</th>
                                <th width=100>导入日期</th>
                                <th width=100>总条数</th>
                                <th width=100>操作</th>
                            </tr>
                            </thead>
                            <tbody id="tbody">
                            <c:forEach items="${list }" var="resources" varStatus="st">
                                <tr>
                                    <td width=40>${st.index+1}</td>
                                    <td>${resources.resources}</td>
                                    <td>${resources.import_time}</td>
                                    <td>${resources.total}</td>
                                    <td>
                                        <div class="col-md-4">
                                            <button class="btn btn-primary btn-sm" id="btnCancel"
                                                    onClick="relieve(this)">
                                                全部解除分配
                                            </button>
                                        </div>
                                        <div class="col-md-4" >
                                            <button class="btn btn-primary btn-sm" id="btnAllot" onclick="show(this)">
                                                分配显示
                                            </button>
                                        </div>
                                        <div class="col-md-4">
                                            <button class="btn btn-primary btn-sm" id="btnDel" onclick="delModel(this)">
                                                全部删除
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>

                <!-- /.span -->
            </div>

            <div class="row">
                <div class="col-xs-12">${ pageNavigate.pageModel}</div>
            </div>
        </div>
        <!-- /.main-content -->
    </div>

    <!-- /.main-container -->
    <%@ include file="../../common/js.jsp" %>
    <script src="<c:url value="/assets/js/jquery.form.js"/>"></script>

    <script type="text/javascript">
        //解除该来源的名单
        var relieve = function (btn) {
            var resources = $(btn).parent().parent().prev().prev().prev().html();
            var create_at = $(btn).parent().parent().prev().prev().html();
            var backurl = "${dynamicServer}/customer/resources/index.htm";
            var url = "relieve.htm?&resources=" + resources + "&create_at="+create_at+"&backUrl=" + backurl;
            bootbox.confirm("您确定要解除分配吗？", function (result) {
                if (result) {
                    window.location = encodeURI(url);
                }
            })
        }
        //删除该来源的名单
        var delModel = function (btn) {
            var resources = $(btn).parent().parent().prev().prev().prev().html();
            var create_at = $(btn).parent().parent().prev().prev().html();
            var backurl = "${dynamicServer}/customer/resources/index.htm";
            var url = "deleteAll.htm?&resources=" + resources + "&create_at="+create_at+"&backUrl=" + backurl;
            bootbox.confirm("您确定要全部删除吗？", function (result) {
                if (result) {
                    window.location = encodeURI(url);
                }
            })
        }
        //名单显示
        var show = function (btn) {
            var resources = $(btn).parent().parent().prev().prev().prev().html();
            var create_at = $(btn).parent().parent().prev().prev().html();
            var url = "allotShow.htm?&resources=" + resources + "&create_at="+create_at;
            window.location = encodeURI(url);
        }
    </script>
</body>
</html>
