<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
pageContext.setAttribute("path", path);
%>
<link type="text/css" href="${path }/dist/css/crm.css" rel="stylesheet">
<!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/bootstrap-3.3.4.css">
<!-- Font Awesome -->
<link rel="stylesheet" type="text/css"
	href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">
<!-- Simplify -->
<link href="${path }/plugins/simplify/simplify.min.css" rel="stylesheet">
<link href="${path }/plugins/simplify/owl.carousel.min.css"
	rel="stylesheet">
<link href="${path }/plugins/simplify/owl.theme.default.min.css"
	rel="stylesheet">

<script src="${path }/plugins/jquery/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path }/plugins/jquery.dataTables/jquery.dataTables.css">
<script type="text/javascript" language="javascript" src="${path }/plugins/jquery.dataTables/jquery.dataTables.js"></script>
<!--日期-->
<link rel="stylesheet"
	href="${path }/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.min.css" />
<script type="text/javascript"
	src="${path }/plugins/bootstrap-datetimepicker/bootstrap-datetimepicker.js"></script>
<!-- -------------------------------------- -->
<%-- <link rel="stylesheet"
	href="${path }/dist/css/AdminLTE.min.css">
<script src="<%=request.getContextPath()%>/plugins/chartjs/Chart.js"></script> --%>
<!-- -------------------------------------- -->
<!--用户界面交互-->
<script src="${path }/plugins/jquery-ui/jquery-migrate-1.2.1.min.js"></script>
<script src="${path }/plugins/jquery-ui/jquery-ui-1.9.2.custom.min.js"></script>
<script src="${path }/plugins/jquery-ui/modernizr.min.js"></script>

<!-- Bootstrap -->
<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
<!-- Slimscroll（滚动插件） -->
<script src='${path }/plugins/simplify/jquery.slimscroll.min.js'></script>
<!-- Owl Carousel -->
<script src='${path }/plugins/simplify/owl.carousel.min.js'></script>
<!--Owl Carousel2是一个 jQuery 插件，使我们能够迅速地创建响应式传送带滑块。这个插件是触摸友好的，能与几乎任何的 HTML 内容兼容使用。-->
<!-- Simplify -->
<script src="${path }/plugins/simplify/simplify.js"></script>
<script src="${path }/plugins/simplify/jquery.nicescroll.js"></script>
