<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ include file="common/taglib.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>电话管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <%@ include file="common/header.jsp" %>
    <script src="${staticServer }/assets/js/userBrower.js"></script>
    <script src="${staticServer }/assets/js/jCookie.js"></script>
<style>

</style>
</head>

<body class="login-layout ">
<div class="main-container">
    <div class="main-content">
        <div class="row" style="margin-top: 60px;">
            <div class="col-sm-10 col-sm-offset-1">
                <div class="login-container">
                    <div class="center">
                        <h1>
                            <span class="white" id="id-text2">电话管理系统</span>
                        </h1>
                        <h4 class="" id="id-company-text" style="margin-top:12px;color: #c2cad8">System Of Telephone</h4>
                    </div>

                    <div class="space-6"></div>

                    <div class="position-relative">
                        <div id="login-box" style="margin-top: 20px;" class="login-box visible widget-box no-border">
                            <div class="widget-body">
                                <div class="widget-main">
                                    <h4 class="header blue lighter bigger" style="font-size: 20px;">
                                        登录
                                    </h4>
                                    <div class="space-6"></div>

                                    <form id="loginForm" action="checkLogin.htm" method="post" >
                                        <fieldset>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="text" maxlength="20" class="form-control"
                                                           name="username"
                                                           id="username" placeholder="用户名"/>
                                                    <i class="ace-icon fa fa-user"></i>
												</span>
                                            </label>

                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <input type="password" class="form-control" name="password"
                                                           id="password" placeholder="密码"/>
                                                    <i class="ace-icon fa fa-lock"></i>
												</span>
                                            </label>
                                            <label class="block clearfix">
                                                <span class="block input-icon input-icon-right">
                                                    <span id="lblMessage" class="errMsg" style="display: none"> 账号号或密码输入错误！ </span>
												</span>
                                            </label>

                                            <div class="space"></div>

                                            <div class="clearfix">
                                                <label class="inline">
                                                    <input type="checkbox" class="ace"/>
                                                    <span class="lbl"> 记住我</span>
                                                </label>

                                                <button type="submit"
                                                        class="width-35 pull-right btn btn-sm btn-primary">
                                                    <i class="ace-icon fa fa-key"></i>
                                                    <span class="bigger-110">登录</span>
                                                </button>
                                            </div>

                                            <div class="space-4"></div>
                                            <br/>
                                        </fieldset>
                                    </form>

                                </div><!-- /.widget-main -->

                            </div><!-- /.widget-body -->
                        </div><!-- /.login-box -->
                    </div><!-- /.position-relative -->
                </div>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.main-content -->
</div><!-- /.main-container -->
<!-- /.main-container -->


<%@ include file="common/js.jsp" %>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {
        $("#loginForm").validate({
            errorElement: "label",
            errorClass: "valiError",
            errorPlacement: function (error, element) {
            },
            rules: {
                username: {
                    required: true,
                    maxlength: 11
                },
                password: {
                    required: true
                }
            },
            messages: {
                username: {
                    required: ""
                },
                password: {
                    required: ""
                }
            },
            submitHandler: function (form) {
                checkLogin();
            }
        });

        var cookie_chk = jQuery.jCookie('bls_chk');
        if (cookie_chk != '' && cookie_chk != null && cookie_chk == '1') {
            $('#chk').prop("checked", true);
            $('#username').val(jQuery.jCookie('bls_username'));
        }

        //$("#username").val("admin");
        //$("#password").val("123456");
        //$("#loginForm").submit();
    });


    function checkLogin() {
        if ($('#chk').is(':checked')) {
            jQuery.jCookie('bls_chk', '1', 30);
            jQuery.jCookie('bls_username', $('#username').val(), 30);
        } else {
            jQuery.jCookie('bls_chk', '0', 30);
        }

        var username = $("#username").val();
        var password = $("#password").val();
        var verifyCode = $("#verifyCode").val();
        $.ajax({
            type: "post",
            url: "${dynamicServer}/checkLogin.htm",
            data: {
                username: username,
                password: password,
                verifyCode: verifyCode,
                terminal: getUserTerminalType(),
                explorerType: getExplorerInfo().browser,
                explorerVersion: getExplorerInfo().version
            },
            dataType: "json",
            success: function (data) {
                if (data.success) {
                    $("#lblMessage").hide();
                    window.location.href = "${dynamicServer}/index.htm";
                } else {
                    $("#lblMessage").html(data.msgText);
                    $("#lblMessage").show();
                    if (data.isNeedVerifyCode) {
                        $("#divVerifyCode").show();
                        changeCode();
                        isNeedVerifyCode = true;
                    }
                }
            },
            error: function (data) {
                $("#lblMessage").html('登录失败');
                $("#lblMessage").show();
            }
        });
    }
</script>
</body>
</html>