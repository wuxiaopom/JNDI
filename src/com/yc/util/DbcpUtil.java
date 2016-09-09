package com.yc.util;

import java.sql.Connection;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
/**
 * @ClassName:     Dbcp.java
 * @author          POM
 * @version         V1.0  
 * @Date           2016年9月2日 下午2:18:03 
 */
public class DbcpUtil {
	public void getConnection(){
		try {
			Context ctx = new InitialContext();
			//获取数据连接
			Connection conn = null;
			
			// 获取与逻辑名相关联的数据源对象
			DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/test");
		    conn = ds.getConnection();
			Statement sm = conn.createStatement();
			sm.executeQuery("select * from emp");
			
			// 关闭打开的资源
			sm.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
