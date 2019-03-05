<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
pageContext.setAttribute("path", path);
%>
<aside class="sidebar-menu fixed">
				<div class="sidebar-inner scrollable-sidebar">
					<div class="main-menu">
						<ul class="accordion">
							<li class="menu-header">
								主要按钮
							</li>
							<c:forEach items="${menus }" var="menu">
							<!-- <li class="openable bg-palette4"> -->
								<c:if test="${!empty menu.menu.url}">
								<li class="bg-palette1">
								<!--添加target 指定跳转框架  -->
								  <a href="${path}/${menu.menu.url}" target="myFrameName">
								  <span class="menu-content block">
										<span class="menu-icon"><i class="${menu.menu.icon }"></i></span><!-- block fa fa-desktop fa-lg -->
										<span class="text m-left-sm">${menu.menu.name }</span>
									</span>
									<span class="menu-content-hover block">
										${menu.menu.name }
									</span>
									</a>
								</c:if>
								
								<c:if test="${empty menu.menu.url}">
								
								<li class="openable bg-palette4">
								  <a href="#">
									<span class="menu-content block">
										<span class="menu-icon"><i class="${menu.menu.icon }"></i></span><!-- block fa fa-desktop fa-lg -->
										<span class="text m-left-sm">${menu.menu.name }</span>
										<span class="submenu-icon"></span>
									</span>
									<span class="menu-content-hover block">
										${menu.menu.name }
									</span>
								</a>
								</c:if>
								<ul class="submenu bg-palette6">
									<c:forEach items="${menu.nodes }" var="option">
									<c:if test="${!empty option.menu.url}">
									<li><a href="${path }/${option.menu.url}" target="myFrameName"><span class="submenu-label">${option.menu.name }</span></a></li>
									</c:if>
									<c:if test="${empty option.menu.url}">
									<li class="openable">
										<a href="#" target="myFrameName">
											<span class="submenu-label">${option.menu.name }</span>
											<span class="submenu-icon"></span>
										</a>
										<%-- <ul class="submenu third-level">
											<c:forEach items="${option }" var="op">
											<li><a href="${op.menu.url}"><span class="submenu-label">${op.menu.name }</span></a></li>
											</c:forEach>
										</ul> --%>
									</li>
									</c:if>
									</c:forEach>
								</ul>
							</li>
							</c:forEach>
						</ul>
					</div>	
					
				</div><!-- sidebar-inner -->
			</aside>