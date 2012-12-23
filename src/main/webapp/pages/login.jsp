<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
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

<style type="text/css">
div.error {
	width: 260px;
	border: 2px solid red;
	background-color: yellow;
	text-align: center;
}

div.hide {
	display: none;
}
</style>

</head>

<body onload='document.f.j_username.focus();'>
	<!-- 注意这个form的每个参数 -->
	<form name="f" action="<%=path%>/j_spring_security_check" method='POST'>
		<fieldset>
			<legend>登录</legend>
			用户：<input type="text" name="j_username"
				value="${sessionScope['SPRING_SECURITY_LAST_USERNAME']}" /><br />
			密码：<input type="password" name="j_password" /><br /> <input
				type="checkbox" name="_spring_security_remember_me" />两周之内不必登陆<br />
			<input type="submit" value="登录" /> <input type="reset" value="重置" />
		</fieldset>
	</form>
	
	<!-- 如果登录失败 -->
	<div class="error ${param.error == true ? '' : 'hide'}">
		登陆失败<br>
		${sessionScope['SPRING_SECURITY_LAST_EXCEPTION'].message}
	</div>
</body>
</html>
