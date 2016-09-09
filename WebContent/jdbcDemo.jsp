<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.yc.util.*,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jdbcDemo</title>
</head>
<body>
	<%
	    long d1= System.currentTimeMillis();
		DbcpUtil db = new DbcpUtil();
		db.getConnection();
		long d2= System.currentTimeMillis();
		
		out.println("数据库连接池："+(d2-d1)+"<br/><hr>");
		
		
		long d3= System.currentTimeMillis();
		DBUtil du = new DBUtil();
		du.getConnection();
		long d4= System.currentTimeMillis();
		out.println("直联方式："+(d4-d3)+"<br/>");
	%>
</body>
</html>