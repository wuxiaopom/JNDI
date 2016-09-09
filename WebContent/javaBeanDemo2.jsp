<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javaBeanDemo1</title>
</head>
<body>
	<jsp:useBean id="yc" class="com.yc.domain.Users" scope="page"/>
	<h1>使用userBean动作创建javaBean的实例</h1>
	<hr>
	
	用户名：<%= yc.getUserName() %><br/>
	密码：     <%= yc.getPassword() %><br/>
	
	
</body>
</html>