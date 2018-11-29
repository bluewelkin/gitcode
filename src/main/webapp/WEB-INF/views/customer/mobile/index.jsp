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
    <%@ include file="../../common/menu.jsp" %>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="page-content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="hr hr-18 hr-double dotted"></div>
                        <div class="widget-box">
                            <div class="widget-header widget-header-blue widget-header-flat">
                                <h4 class="widget-title lighter">电话查询</h4>
                            </div>
                            <div class="widget-body">
                                <div class="widget-main">
                                    <!-- #section:plugins/fuelux.wizard -->
                                    <div id="fuelux-wizard-container">
                                        <!-- #section:plugins/fuelux.wizard.container -->
                                        <div class="step-content pos-rel">
                                            <div class="step-pane active" data-step="1">
                                                <h3 class="lighter block green">添加备注信息</h3>
                                                <form class="form-horizontal" id="sample-form">
                                                    <!-- #section:elements.form.input-state -->
                                                    <div class="form-group has-success">
                                                        <label
                                                                class="col-xs-12 col-sm-3 control-label no-padding-right">随机号码</label>

                                                        <div class="col-xs-12 col-sm-5">
																	<span class="block input-icon input-icon-right">
                                                                        <button id="btn_mobile" type="text"
                                                                                class="width-100 "
                                                                                style="height: 35px;">
                                                                        <c:if test="${customerInfo.mobile!=null}">
                                                                            <a href="tel:${customerInfo.mobile}">${customerInfo.mobile}</a>
                                                                        </c:if>
                                                                        </button>
																	</span>
                                                            <input name="id" id="id" style="display: none;"
                                                                   value="${customerInfo.id}">
                                                            <input name="last_id" id="last_id" style="display: none;"
                                                                   value="">
                                                        </div>
                                                    </div>
                                                    <div id="remarkDiv" class="form-group has-success">
                                                        <label for="remark"
                                                               class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">备注</label>
                                                        <div class="col-xs-12 col-sm-5">
																	<span class="block input-icon input-icon-right">
																		<input type="text" id="remark" name="remark"
                                                                               onclick="removeCss();"
                                                                               onkeyup="addCss();"
                                                                               maxlength="80" class="width-100"/>
																		<i id="remarkTip" class=""></i>
																	</span>
                                                        </div>
                                                    </div>
                                                    <div id="statusDiv" class="form-group has-success">
                                                        <label for="customer_status"
                                                               class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">客户状态</label>
                                                        <div class="col-xs-12 col-sm-5">
																	<span class="block input-icon input-icon-right">
																		<select id="customer_status"
                                                                                name="customer_status"
                                                                                class="width-100">
                                                                            <option value="0">为空</option>
                                                                            <option value="1">空号</option>
                                                                            <option value="2">拒接</option>
                                                                            <option value="3">无人接听</option>
                                                                            <option value="4">尝试加微信</option>
                                                                            <option value="5">加微信通过</option>
                                                                            <option value="6">已经邀约</option>
                                                                            <option value="7">不需要</option>
                                                                        </select>
																	</span>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <hr/>
                                        <div class="clearfix">
                                            <div class="">
                                                <button type="button" class="btn btn-primary" id="btnSearch"
                                                        style="padding: 3px;">
                                                    <span class="bigger-110">已备注</span>
                                                </button>

                                                <button class="btn btn-success btn-next" onclick="saveRemark();"
                                                        data-last="Finish" style="padding: 3px;">
                                                    下一条
                                                </button>
                                                <button class="btn btn-success btn-next" onclick="searchLast();"
                                                        data-last="Finish" style="padding: 3px;">
                                                    上一条
                                                </button>
                                                <button class="btn btn-prev" id="btnClose" style="padding: 3px;">
                                                    退出
                                                </button>
                                            </div>
                                        </div>
                                    </div><!-- /.widget-main -->
                                </div><!-- /.widget-body -->
                            </div>
                        </div><!-- /.col -->
                    </div><!-- /.row -->

                </div>
            </div>

            <!-- /.main-container -->
            <%@ include file="../../common/js.jsp" %>
            <script src="<c:url value="/assets/js/jquery.form.js"/>"></script>
            <script type="text/javascript">

                //查看上一条
                var searchLast = function () {
                    var last_id = $("#last_id").val();
                    if (last_id == "") {
                        return;
                    }
                    $.ajax({
                        cache: true,
                        type: "POST",
                        url: "searchLast.htm",
                        dataType: "json",
                        data: {
                            "id": last_id
                        },
                        async: false,
                        success: function (data) {
                            var last_id = $("#id").val();
                            $("#last_id").val(last_id);
                            var mobile_a = '<a href="tel:"' + data.mobile + '>' + data.mobile + '</a>';
                            $("#btn_mobile").html(mobile_a);
                            $("#id").val(data.id);
                            $("#remark").val(data.remark);
                            $("#customer_status").val(data.customer_status);
                        }
                    });
                }


                //点击下一条
                var saveRemark = function () {
                    var customer_status = $("#customer_status").val();
                    if (customer_status == 0) {
                        bootbox.alert("请选择客户状态");
                        return;
                    }
                    $.ajax({
                        cache: true,
                        type: "POST",
                        url: "saveRemark.htm",
                        dataType: "json",
                        data: {
                            "backUrl": "${backUrl}",
                            "remark": $("#remark").val(),
                            "customer_status": $("#customer_status").val(),
                            "id": $("#id").val()
                        },
                        async: false,
                        success: function (data) {
                            if (data.success) {
                                var last_id = $("#id").val();
                                $("#last_id").val(last_id);
                                var mobile_a = '<a href="tel:"' + data.mobile + '>' + data.mobile + '</a>';
                                $("#btn_mobile").html(mobile_a);
                                $("#id").val(data.id);
                                $("#remark").val("");
                                $("#customer_status").val("0");
                            } else {
                                bootbox.alert("还没有分配新客户");
                            }
                        }
                    });
                }

                var removeCss = function () {
                    $("#remarkDiv").removeClass();
                    $("#remarkTip").removeClass();
                    $("#remarkDiv").addClass("form-group has-success")
                }
                var addCss = function () {
                    $("#remarkDiv").removeClass();
                    $("#remarkTip").removeClass();
                    $("#remarkDiv").addClass("form-group has-success")
                    if ($("#remark").val() != "") {
                        $("#remarkTip").addClass("ace-icon fa fa-check-circle");
                    }

                }
                $(function () {
                    if (${flag eq 0}) {
                        bootbox.alert("还没有分配客户");
                    }

                    $("#btnSearch").click(function () {
                        window.location = "toRemark.htm"
                    });
                    $("#btnClose").click(function () {
                        window.location = "${dynamicServer}/logout.htm"
                    });
                });

            </script>
</body>
</html>
