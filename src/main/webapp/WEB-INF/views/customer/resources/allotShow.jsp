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
                    <li class="active">名单显示</li>
                </ul>
                <!-- /.breadcrumb -->
            </div>

            <!-- /section:basics/content.breadcrumbs -->
            <div class="page-content">
                <!-- PAGE CONTENT BEGINS -->
                <div class="row">
                    <!-- 业务员统计显示-->
                    <div class="col-xs-12 " id="userStatistics">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>
                                <th width=10>序号</th>
                                <th width=100>名单来源</th>
                                <th width=60>分配业务员</th>
                                <th width=60>分配时间</th>
                                <th width=60>分配号段</th>
                                <th width="60">操作</th>
                            </tr>
                            </thead>
                            <tbody id="tbody1">
                            <c:forEach items="${list }" var="userSection" varStatus="st">
                                <tr>
                                    <td width=40>${st.index+1}</td>
                                    <td>${userSection.resources}</td>
                                    <td>${userSection.user_name}</td>
                                    <td>${userSection.allot_at}</td>
                                    <td>${userSection.id_min}-${userSection.id_max}</td>
                                    <td>
                                        <div class="col-md-3">
                                            <button class="btn btn-primary btn-sm" id="btnCancel" onclick="relieve(this)">
                                                 解除分配
                                            </button>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
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

            /**
             * 解除分配该号段
             * @param btn
             */
            var relieve=function(btn){
                var idSection=$(btn).parent().parent().prev().html();
                var backurl='${dynamicServer}/customer/resources/allotShow.htm?create_at=${create_at}&resources=${resources}';
                var url="relieves.htm";
                bootbox.confirm("您确定要解除分配吗？", function (result) {
                    if (result) {
                        $.ajax({
                            url:url,
                            data:{"idSection":idSection},
                            method:"post",
                            datatype:"json",
                            success:function(){
                                window.location = encodeURI(backurl);
                            }
                        });
                    }
                })
            }
        </script>
</body>
</html>
