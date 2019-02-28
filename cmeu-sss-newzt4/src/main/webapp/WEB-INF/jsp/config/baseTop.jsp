<%@page import="org.apache.shiro.subject.Subject"%>
<%@page import="com.cmeu.shiro.ShiroUser"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
pageContext.setAttribute("path", path);
%>
<%
Subject subject = (Subject) session.getAttribute("subject");
ShiroUser shiroUser = (ShiroUser) subject.getPrincipal();
session.setAttribute("shiroUser", shiroUser);
%>
<header class="top-nav">
	<div class="top-nav-inner">
		<div class="nav-header">
			<a href="${path }/index" class="brand"> <span>C R M 后台管理系统</span></a>
		</div>
		<button type="button" class="navbar-toggle pull-left sidebar-toggle"
			id="sidebarToggleLG">
			<span class="icon-bar"></span> <span class="icon-bar"></span> <span
				class="icon-bar"></span>
		</button>
		<div class="nav-container">

			<ul class="nav-notification">
				<li class="search-list">
					<div class="search-input-wrapper">
						<div class="search-input">
							<input type="text" class="form-control input-sm inline-block">
							<a href="#" class="input-icon text-normal"><i
								class="ion-ios7-search-strong"></i></a>
						</div>
					</div>
				</li>
			</ul>
			<div class="pull-right m-right-sm">
				<ul class="nav-notification">

					<li><a href="#" data-toggle="dropdown"> <span
							class="tooltips" title="消息" data-placement="left"
							data-toggle="tooltip"><i class="fa fa-bell fa-lg"></i></span>
					</a>
						<ul class="dropdown-menu notification dropdown-2 pull-right">
							<li><a href="#">无消息</a></li>
						</ul></li>

					<li><a href="#" data-toggle="dropdown"> 
						<c:if test="${empty shiroUser}">
						<span class="tooltips" title="登录" data-placement="bottom" data-toggle="tooltip">
							<img src="${path }/img/avtar.png" alt="" class="img-circle">
						</span>
						</c:if>
						<c:if test="${not empty shiroUser }">
						<span class="tooltips" title="${shiroUser.user.username }" data-placement="bottom" data-toggle="tooltip">
							<img src="${path }/img/avtar.png" alt="" class="img-circle">
						</span>
						</c:if>
					</a>
						<ul class="dropdown-menu notification dropdown-2 pull-right">

							<li><a href="#" data-toggle="modal" data-target="#shezhi"><i
									class="fa fa-user"></i>个人设置</a></li>
							<li><a href="#" data-toggle="modal" data-target="#myModal"><i
									class="fa fa-sign-out"></i> 退出登录 </a></li>
						</ul></li>
				</ul>

			</div>
		</div>
	</div>
	<!-- ./top-nav-inner -->



</header>
<!--modal (个人设置)-->
<div class="modal fade" id="shezhi" tabindex="-1" role="dialog"
	aria-labelledby="shezhiLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="shezhiLabel">基本信息</h4>
			</div>
			<div class="modal-body">
				<!--内容表格-->
				<table align="center" border="0" cellpadding="0" cellspacing="0"
					width="100%" class="TableList" style="line-height: 35px">
					<tr class="TableLine3">
						<td>基本信息:</td>

					</tr>

					<tr class="TableLine2">
						<td width="23%" height="30" align="right">用户名：</td>
						<td width="77%" height="30" align="left"><span>${shiroUser.user.username}</span>
						</td>
					</tr>

					<tr class="TableLine2">
						<td height="30" align="right">性别：</td>
						<td width="77%" height="30" align="left"><span>${shiroUser.user.sex }</span>
						</td>
					</tr>
					<tr class="TableLine2">
						<td height="30" align="right">手机号码：</td>
						<td width="77%" height="30" align="left"><span>${shiroUser.user.phone}</span>
						</td>
					</tr>

					<tr class="TableLine2">
						<td height="30" align="right">部门：</td>
						<td width="77%" height="30" align="left"><span>${shiroUser.user.department }</span>
						</td>
					</tr>
					<tr class="TableLine2">
						<td height="30" align="right">职位：</td>
						<td width="77%" height="30" align="left"><span>${shiroUser.user.position }</span>
						</td>
					</tr>

				</table>

			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">确认</button>
				<button type="button" class="btn btn-primary">退出</button>
			</div>
		</div>
		<!-- modal-content -->
	</div>
	<!-- modal-dialog -->
</div>
<!-- modal -->


<!--modal (退出登录)-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h4 class="modal-title" id="myModalLabel">退出系统</h4>
			</div>
			<div class="modal-body">
				<h3>确认退出系统？</h3>
			</div>
			<div class="modal-footer">
				<button class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
				<a class="btn btn-primary" style="line-height: 20px;"
					href="${path }/logout">确定</a>

			</div>
		</div>
	</div>
	<!-- modal-content -->
</div>
<!-- modal-dialog -->