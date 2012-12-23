<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>springMVCSecurityDemo</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>

<body>
	<h1>Message:${message}</h1>
	<sec:authorize ifAllGranted="ROLE_ADMIN,ROLE_USER">  
  		admin and user  
	</sec:authorize> 
	<br/> 
	<sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_USER">  
  		admin or user  
	</sec:authorize> 
	<br/> 
	<sec:authorize ifNotGranted="ROLE_ADMIN">  
  		not admin  
	</sec:authorize> 
	<br/> 
	<a href="j_spring_security_logout">注销</a>
</body>
</html>

<!-- ifAllGranted，只有当前用户同时拥有ROLE_ADMIN和ROLE_USER两个权限时，才能显示标签内部内容。   -->
<!-- ifAnyGranted，如果当前用户拥有ROLE_ADMIN或ROLE_USER其中一个权限时，就能显示标签内部内容。   -->
<!-- ifNotGranted，如果当前用户没有ROLE_ADMIN时，才能显示标签内部内容。 -->
