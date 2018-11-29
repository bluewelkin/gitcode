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
                                <h4 class="widget-title lighter">已备注电话查询</h4>
                            </div>

                            <div class="widget-body">
                                <div class="widget-main">
                                    <!-- #section:plugins/fuelux.wizard -->
                                    <div id="fuelux-wizard-container">
                                        <!-- #section:plugins/fuelux.wizard.container -->
                                        <div class="step-content pos-rel">
                                            <div class="step-pane active" data-step="1">
                                                <h3 class="lighter block green">修改备注信息</h3>
                                                <form class="form-horizontal" id="sample-form">
                                                    <!-- #section:elements.form.input-state -->
                                                    <div id="mobileDiv" class="form-group has-success">
                                                        <label for="mobile"
                                                               class="col-xs-12 col-sm-3 control-label no-padding-right">随机号码</label>
                                                        <div class="col-xs-12 col-sm-5">
																	<span class="block input-icon input-icon-right">
																		<input type="text" id="mobile" name="mobile"
                                                                               maxlength="11" onkeyup="addCss();"
                                                                               onclick="removeCss();" class="width-100"
                                                                               <c:if test="${flag==0}">value="${mobile}"</c:if>
                                                                               <c:if test="${flag==1}">disabled
                                                                               value="${customerInfo.mobile}"</c:if>/>
																		<i id="mobileTip" class=""></i>
																	</span>
                                                            <input name="id" id="id" style="display: none;"
                                                                   value="${customerInfo.id}">
                                                        </div>
                                                    </div>
                                                    <div id="remarkDiv" class="form-group has-success">
                                                        <label for="remark"
                                                               class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">备注</label>
                                                        <div class="col-xs-12 col-sm-5">
																	<span class="block input-icon input-icon-right">
																		<input type="text" id="remark" name="remark"
                                                                               value="${customerInfo.remark}"
                                                                               maxlength="80" class="width-100"/>
																		<i id="remarkTip" class=""></i>
																	</span>
                                                        </div>
                                                    </div>
                                                    <div id="statusDiv" class="form-group has-success">
                                                        <label for="remark"
                                                               class="col-xs-12 col-sm-3 col-md-3 control-label no-padding-right">客户状态</label>
                                                        <div class="col-xs-12 col-sm-5">
																	<span class="block input-icon input-icon-right">
																		<select id="customer_status" name="customer_status" class="width-100">
                                                                            <option value="0" <c:if test="${customerInfo.customer_status==0}">selected</c:if>>为空</option>
                                                                            <option value="1" <c:if test="${customerInfo.customer_status==1}">selected</c:if>>空号</option>
                                                                            <option value="2" <c:if test="${customerInfo.customer_status==2}">selected</c:if>>拒接</option>
                                                                            <option value="3" <c:if test="${customerInfo.customer_status==3}">selected</c:if>>无人接听</option>
                                                                            <option value="4" <c:if test="${customerInfo.customer_status==4}">selected</c:if>>尝试加微信</option>
                                                                            <option value="5" <c:if test="${customerInfo.customer_status==5}">selected</c:if>>加微信通过</option>
                                                                            <option value="6" <c:if test="${customerInfo.customer_status==6}">selected</c:if>>已经邀约</option>
                                                                            <option value="7" <c:if test="${customerInfo.customer_status==7}">selected</c:if>>不需要</option>
                                                                        </select>
																	</span>
                                                        </div>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                        <hr/>
                                        <div class="clearfix">
                                            <div class="col-md-offset-3 col-md-9">
                                            <button type="button" class="btn btn-primary" onclick="searchRemark();">
                                                <span class="bigger-110">查询</span>
                                            </button>
                                            <button class="btn btn-prev" id="btnClose" onclick="closeRemark();">

                                                关闭
                                            </button>
                                            </div>
                                        </div>
                                    </div><!-- /.widget-main -->
                                </div><!-- /.widget-body -->
                            </div>
                        </div><!-- /.col -->
                    </div><!-- /.row -->

                </div>

                <!-- /.main-container -->
                <%@ include file="../../common/js.jsp" %>
                <script type="text/javascript">
                    $(document).ready(function () {
                        <c:if test="${flag eq 0}">
                            $("#mobileDiv").removeClass();
                            $("#mobileTip").removeClass();
                            $("#mobileDiv").addClass("form-group has-error");
                            $("#mobileTip").addClass("ace-icon fa fa-times-circle");
                        </c:if>
                    });
                    //查询
                    var searchRemark = function () {
                        var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
                        if (!myreg.test($("#mobile").val())) {
                            $("#mobileDiv").removeClass();
                            $("#mobileTip").removeClass();
                            $("#mobileDiv").addClass("form-group has-error");
                            $("#mobileTip").addClass("ace-icon fa fa-times-circle");
                            return;
                        }else{
                            var url = "searchRemark.htm?mobile=" + $("#mobile").val();
                            window.location = decodeURI(url);
                        }
                    }
                    //关闭
                    function closeRemark() {
                        var id = $("#id").val();
                        var url = "";
                        if (id == "") {
                            url = "index.htm";
                        } else {
                            var remark = $("#remark").val();
                            var customer_status=$("#customer_status").val();
                            url = "updateRemark.htm?id=" + id + "&remark=" + remark;
                            if(customer_status!=""){
                                url  +="&customer_status="+customer_status
                            }
                        }
                        window.location = decodeURI(url);
                    }

                    var removeCss = function () {
                        $("#mobileDiv").removeClass();
                        $("#mobileTip").removeClass();
                        $("#mobileDiv").addClass("form-group has-success")
                    }
                    var addCss = function () {
                        $("#mobileDiv").removeClass();
                        $("#mobileTip").removeClass();
                        $("#mobileDiv").addClass("form-group has-success")
                        var myreg = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})$/;
                        if (myreg.test($("#mobile").val())) {
                            $("#mobileTip").addClass("ace-icon fa fa-check-circle");
                        } else {
                            $("#mobileTip").removeClass();
                        }
                    }
                </script>
</body>
</html>
