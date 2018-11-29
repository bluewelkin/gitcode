<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<div id="navbar" class="navbar navbar-default ace-save-state  navbar-fixed-top"
    >
    <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">Toggle sidebar</span> <span class="icon-bar"></span> <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <div class="navbar-header pull-left">
            <!-- #section:basics/navbar.layout.brand -->
            <a href="${dynamicServer }/index.htm" class="navbar-brand">
                <small><i class="fa fa-wec"></i>电话管理系统</small>
            </a>
        </div>
        <div class="navbar-header pull-left">
            <!-- #section:basics/navbar.layout.brand -->
            <%--<a href="${dynamicServer }/index.htm" class="navbar-brand" style=""> <small>--%>
            <%--<img src="<c:url value="/assets/images/haijun.png"/>" width="70px" style="margin-right: 10px;"/>--%>
            <%--${webTitle } </small>--%>
            <%--</a>--%>
        </div>

        <!-- #section:basics/navbar.dropdown -->
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="purple dropdown-modal">
                    <%-- ${bln:createWarn(pageContext.request) } --%>
                </li>


                <!-- #section:basics/navbar.user_menu -->
                <li class="light-blue dropdown-modal"><a data-toggle="dropdown" href="#" class="dropdown-toggle">
                    <img class="nav-user-photo"
                            src="${staticServer }/assets/avatars/user.jpg" alt="Jason's Photo"/>
                    <span class="user-info" style="height: 54px;line-height: 22px;"> <small>
								${sessionScope.userSession.user_name }</small> ${sessionScope.userSession.realname }
					</span> <i class="ace-icon fa fa-caret-down"></i>
                </a>
                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li><a href="${dynamicServer }/toUpdatePass.htm?backUrl=${backUrl}"> <i
                                class="ace-icon fa fa-cog"></i> 修改密码
                        </a></li>
                        <li class="divider"></li>
                        <li><a href="${dynamicServer }/logout.htm"> <i class="ace-icon fa fa-power-off"></i> 退出
                        </a></li>
                    </ul>
                </li>

                <!-- /section:basics/navbar.user_menu -->
            </ul>
        </div>

        <!-- /section:basics/navbar.dropdown -->
    </div>
    <!-- /.navbar-container -->
</div>