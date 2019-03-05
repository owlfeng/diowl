<%@page language="java" contentType="text/html; charset=utf-8"
        pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    String path = request.getContextPath();
    pageContext.setAttribute("path", path);
%>
<body>
${path}
<a href="http://localhost:8080/crm/dist/css/crm.css"> 312312</a>
<h1>lianfeng:${msg}</h1>
</body>