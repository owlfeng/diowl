<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	pageContext.setAttribute("path", path);
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
<title>crm首页</title>
<jsp:include page="/WEB-INF/jsp/config/baseConfig.jsp" />
</head>

<body>
	<div class="wrapper preload">

		<jsp:include page="/WEB-INF/jsp/config/baseTop.jsp" />
		<jsp:include page="/WEB-INF/jsp/config/baseMenu.jsp" />

		<br>
		<div class="main-container" style="position: fixed; right: 0;bottom: 0;top:50px;height: auto;padding: 5px;">
				<iframe name="myFrameName" src="${path }/content" frameborder="0" height="100%" width="100%">
				</iframe>
			</div><!-- /main-container -->
		
		<!-- /main-container -->
		<footer class="footer">
			<span class="footer-brand"> <strong class="text-danger">CRM</strong>
				后台管理系统
			</span>
			<p class="no-margin">
				&copy; 2014 <strong>CRM后台管理系统</strong>.@CRM后台管理系统
			</p>
		</footer>
	</div>
	<!--wrapper-->

	<script>
		$("#startTime ").datetimepicker({
			language : "cn",
			format : 'yyyy-mm-dd hh:ii',
			todayBtn : true,
			clearBtn : true,// 自定义属性,true 显示 清空按钮 false 隐藏 默认:true
			startView : 2,
			minView : 2,
			weekStart : 1,
			todayHighlight : 1,
			autoclose : 1,
			forceParse : 0
		});

		$("#submitNewForm").click(function() {

			$('#editForm').ajaxSubmit({
				dateType : 'json',
				success : function(respText) {
					respText = $.parseJSON(respText);
					if (respText.msg == "fail") {
						alert("添加客户失败！");
					} else {
						alert("成功添加客户！");
					}
					//                 window.location.href = "${pageContext.request.contextPath}" + respText.page_url;
				}
			});
		});
	</script>


</body>
</html>
