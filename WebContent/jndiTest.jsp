<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="javax.naming.*" %>
<%@ page import="java.sql.*,javax.sql.DataSource;" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JNDI数据源测试</title>
</head>
<body>
	<%
	//javax.naming.Context提供了查找JNDI 的接口
	Context ctx = new InitialContext();	
	//java:comp/env/为前缀
	String testJndi = (String)ctx.lookup("java:comp/env/tjndi");
	out.println("JNDI: "+testJndi+"<br/>"); 

	//获取数据连接
	Connection conn = null;
	
	// 获取与逻辑名相关联的数据源对象
	DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/test");
    conn = ds.getConnection();
    out.print("获取数据源:"+conn); 

	%>
</body>
</html>