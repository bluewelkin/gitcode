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
                    <li class="active">归档客户管理</li>
                </ul>
                <!-- /.breadcrumb -->
            </div>

            <!-- /section:basics/content.breadcrumbs -->
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="widget-box widget-color-blue">
                            <!-- #section:custom/widget-box.options -->
                            <div class="widget-header">
                                <h5 class="widget-title bigger lighter">
                                    <i class="ace-icon fa fa-table"></i> 操作面板
                                </h5>
                            </div>

                            <!-- /section:custom/widget-box.options -->
                            <div class="widget-body">
                                <div class="widget-main">
                                    <table class="searchField" style="margin: 4px; padding: 4px;">
                                        <tr >
                                            <td>姓名：</td>
                                            <td><input type="text" id="txtName" maxlength="15"
                                                       class="form-control input-small"
                                                       placeholder=""
                                                       value="${customerInfoSearchVO.name }"></td>
                                            <td>手机号：</td>
                                            <td><input type="text" id="mobile" maxlength="13"
                                                       class="form-control input-small"
                                                       style="width:100px;"
                                                       placeholder=""
                                                       value="${customerInfoSearchVO.mobile }"></td>
                                            <td>分配状态：</td>
                                            <td>
                                                <select id="status" value="${customerInfoSearchVO.status}" class="width-100">
                                                    <option value=" ">全部</option>
                                                    <option value="1"
                                                            <c:if test="${customerInfoSearchVO.status==1}">selected</c:if>>
                                                        已分配
                                                    </option>
                                                    <option value="0"
                                                            <c:if test="${customerInfoSearchVO.status==0}">selected</c:if>>
                                                        未分配
                                                    </option>
                                                </select>
                                            </td>
                                            <td>业务员：</td>
                                            <td>
                                                <select id="user_id" name="user_id" class="width-100">
                                                    <option value="">请选择</option>
                                                    <c:forEach items="${userList}" var="user">
                                                        <option value="${user.id}"
                                                                <c:if test="${user.id==customerInfoSearchVO.user_id}">selected</c:if>>${user.realname}</option>
                                                    </c:forEach>
                                                </select>
                                            </td>
                                            <td>
                                                <button class="btn btn-primary btn-sm" id="btnSearch">
                                                    <i class="ace-icon fa fa-search"></i> 查询
                                                </button>
                                            </td>

                                            <td>

                                                <button class="btn btn-primary btn-sm" id="btnExport">
                                                    <i class="ace-icon fa fa-file-excel-o"></i> 导出归档客户
                                                </button>
                                            </td>
                                            <td>
                                                <button class="btn btn-primary btn-sm" id="btnRelieve">
                                                    <i class="glyphicon glyphicon-trash"></i> 解除归档
                                                </button>
                                            </td>
                                            <%-- <c:if test="${bln:isP('CustomerInfoAdd')}">
                                                 <button type="button" class="btn btn-success btn-sm" id="btnAdd">
                                                     <i class="ace-icon fa fa-plus bigger-110"></i>新增
                                                 </button>
                                             </c:if>--%>
                                            <td>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>客户编号：</td>
                                            <td><input type="text" id="customer_id_start"
                                                       class="form-control input-small"
                                                       placeholder="" maxlength="8"
                                                       value="${customerInfoSearchVO.customer_id_start }"></td>
                                            <td> &nbsp&nbsp&nbsp&nbsp;至</td>
                                            <td><input type="text" id="customer_id_end" class="form-control input-small"
                                                       style="width:100px;"
                                                       placeholder="" maxlength="8"
                                                       value="${customerInfoSearchVO.customer_id_end }"></td>
                                            <td>名单来源：</td>
                                            <td><input type="text" id="resources_search"
                                                       class="form-control input-small"
                                                       placeholder="" maxlength="8"
                                                       value="${customerInfoSearchVO.resources }"></td>
                                            <td>客户状态：</td>
                                            <td>
                                                <select id="customer_status" name="customer_status" class="width-100">
                                                    <option value=" "> 全部</option>
                                                    <option value="0" <c:if test="${customerInfoSearchVO.customer_status==0}">selected</c:if>>为空</option>
                                                    <option value="1" <c:if test="${customerInfoSearchVO.customer_status==1}">selected</c:if>>空号</option>
                                                    <option value="2" <c:if test="${customerInfoSearchVO.customer_status==2}">selected</c:if>>拒接</option>
                                                    <option value="3" <c:if test="${customerInfoSearchVO.customer_status==3}">selected</c:if>>无人接听</option>
                                                    <option value="4" <c:if test="${customerInfoSearchVO.customer_status==4}">selected</c:if>>尝试加微信</option>
                                                    <option value="5" <c:if test="${customerInfoSearchVO.customer_status==5}">selected</c:if>>加微信通过</option>
                                                    <option value="6" <c:if test="${customerInfoSearchVO.customer_status==6}">selected</c:if>>已经邀约</option>
                                                    <option value="7" <c:if test="${customerInfoSearchVO.customer_status==7}">selected</c:if>>不需要</option>
                                                </select>
                                            </td>



                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- PAGE CONTENT BEGINS -->
                <div class="row">
                    <div class="col-xs-12">
                        <table id="treeTable" class="table table-striped table-bordered table-hover">
                            <thead>
                            <tr>

                                <th width=60>序号</th>
                                <th width=60>客户编号</th>
                                <th width=80>姓名</th>
                                <th width=180>电话号码</th>
                                <th width=180>备注</th>
                                <th width=180>客户状态</th>
                                <th width=180>名单来源</th>
                                <th width=160>所属业务员编号</th>
                                <th width=160>所属业务员姓名</th>
                                <th width="241">归档时间</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${customerInfoList }" var="customer" varStatus="st">
                                <tr>
                                    <td width=40>${st.index+1}</td>
                                    <td>${customer.id}</td>
                                    <td>${customer.name}</td>
                                    <td>${customer.mobile}</td>
                                    <td>${customer.remark}</td>
                                    <td>
                                        <c:if test="${customer.customer_status==0}">为空</c:if>
                                        <c:if test="${customer.customer_status==1}">空号</c:if>
                                        <c:if test="${customer.customer_status==2}">拒接</c:if>
                                        <c:if test="${customer.customer_status==3}">无人接听</c:if>
                                        <c:if test="${customer.customer_status==4}">尝试加微信</c:if>
                                        <c:if test="${customer.customer_status==5}">加微信通过</c:if>
                                        <c:if test="${customer.customer_status==6}">已经邀约</c:if>
                                        <c:if test="${customer.customer_status==7}">不需要</c:if>
                                    </td>
                                    <td>${customer.resources}</td>
                                    <td>${customer.user_id}</td>
                                    <td>${customer.user_name}</td>
                                    <td><fmt:formatDate value="${customer.archive_time}"
                                                        pattern="yyyy-MM-dd HH:mm:ss"/></td>
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
            $(function () {
                $("#btnSearch").bind('click', searchModule);
                $("#btnExport").bind('click', exportModule);
                $("#btnRelieve").bind('click',relieveModule);
            })



            // 查询方法
            var searchModule = function () {
                var url = "index.htm?___=_";

                if ($("#txtName").val() != '')
                    url += "&name=" + $("#txtName").val();

                if ($("#mobile").val() != '')
                    url += "&mobile=" + $("#mobile").val();
                if ($("#status").val() != '')
                    url += "&status=" + $("#status").val();
                if ($("#user_id").val() != '') {
                    url += "&user_id=" + $("#user_id").val();
                }
                if ($("#customer_id_start").val() != '') {
                    url += "&customer_id_start=" + $("#customer_id_start").val();
                }
                if ($("#customer_id_end").val() != '') {
                    url += "&customer_id_end=" + $("#customer_id_end").val();
                }
                if ($("#resources_search").val() != '') {
                    url += "&resources=" + $("#resources_search").val();
                }
                if($("#customer_status").val()!=''){
                    url+="&customer_status="+$("#customer_status").val();
                }
                window.location = encodeURI(url);
            }
            //导出
            var exportModule = function () {
                var url = "export.htm?___=_";

                if ($("#txtName").val() != '')
                    url += "&name=" + $("#txtName").val();

                if ($("#mobile").val() != '')
                    url += "&mobile=" + $("#mobile").val();
                if ($("#status").val() != '')
                    url += "&status=" + $("#status").val();
                if ($("#user_id").val() != '') {
                    url += "&user_id=" + $("#user_id").val();
                }
                if ($("#customer_id_start").val() != '') {
                    url += "&customer_id_start=" + $("#customer_id_start").val();
                }
                if ($("#customer_id_end").val() != '') {
                    url += "&customer_id_end=" + $("#customer_id_end").val();
                }
                if ($("#resources_search").val() != '') {
                    url += "&resources=" + $("#resources_search").val();
                }
                if($("#customer_status").val()!=''){
                    url+="&customer_status="+$("#customer_status").val();
                }
                window.location = encodeURI(url);
            }
            // 解除归档
            var relieveModule = function () {
                var url = "relieve.htm?backUrl=${dynamicServer}/customer/archive/index.htm";

                if ($("#txtName").val() != '')
                    url += "&name=" + $("#txtName").val();

                if ($("#mobile").val() != '')
                    url += "&mobile=" + $("#mobile").val();
                if ($("#status").val() != '')
                    url += "&status=" + $("#status").val();
                if ($("#user_id").val() != '') {
                    url += "&user_id=" + $("#user_id").val();
                }
                if ($("#customer_id_start").val() != '') {
                    url += "&customer_id_start=" + $("#customer_id_start").val();
                }
                if ($("#customer_id_end").val() != '') {
                    url += "&customer_id_end=" + $("#customer_id_end").val();
                }
                if ($("#resources_search").val() != '') {
                    url += "&resources=" + $("#resources_search").val();
                }
                if($("#customer_status").val()!=''){
                    url+="&customer_status="+$("#customer_status").val();
                }
                bootbox.confirm("<h4 class='red'>你确定要解除归档吗？</h4>", function (result) {
                    if (result) {
                        window.location = encodeURI(url);
                    }
                })
            }

        </script>
</body>
</html>
