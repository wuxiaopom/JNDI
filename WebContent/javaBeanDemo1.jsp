<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yc.domain.Users" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>javaBeanDemo1</title>
</head>
<body>
	<% 
		Users user = new Users();
		user.setUserName("zhangsan");  //设置用户名
		user.setPassword("111111");		//设置密码
	%>

	<h1>使用普通方式创建javaBean的实例</h1>
	<hr>
	
	用户名：<%= user.getUserName() %><br/>
	密码：<%= user.getPassword() %><br/>
	
	
</body>
</html>