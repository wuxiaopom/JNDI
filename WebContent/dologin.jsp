<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录处理页面</title>
</head>
<body>
	<%
	
	%>
	<jsp:useBean id="yc" class="com.yc.domain.Users" scope="page"/>
	<h1>setProperty动作元素</h1>
	<hr>
	<!-- 根据表单自动匹配所有元素 -->
    <%-- 	
    <jsp:setProperty name = "yc"  property = "*"/>   <!-- name 跟实例化的javaBean的id一致 -->
	用户名：<%= yc.getUserName() %><br/>
	密码：     <%= yc.getPassword() %><br/>
	--%>
	 
	<%-- <!-- 根据表单自动匹配所有元素 -->
	<jsp:setProperty name = "yc" property = "userName" />  <!-- name 跟实例化的javaBean的id一致 -->
	用户名：<%= yc.getUserName() %><br/>
	密码：     <%= yc.getPassword() %><br/> --%>
	
	
	<%-- <!-- 跟表单无关手工设置值 -->
	<jsp:setProperty name = "yc" property = "userName" value = "lili"/>  <!-- name 跟实例化的javaBean的id一致 -->
	用户名：<%= yc.getUserName() %><br/>
	密码：     <%= yc.getPassword() %><br/> --%>
	
	
	
	<!-- 跟表单无关手工设置值 --><!-- param 通过url地址传参过来的 -->
	<%-- <jsp:setProperty name = "yc" property = "userName" param = "uname"/>  <!-- name 跟实例化的javaBean的id一致 -->
	<!-- 使用表达式获取值 -->
	用户名：<%= yc.getUserName() %><br/>
	密码：     <%= yc.getPassword() %><br/> --%>
	<hr>
	<!-- 使用getProperty获取值 -->
	<jsp:setProperty name = "yc" property = "userName" />
	用户名：<jsp:getProperty name="yc" property="userName"/><br/>
	密码：  <jsp:getProperty name="yc" property="password"/><br/>
	
</body>
</html>