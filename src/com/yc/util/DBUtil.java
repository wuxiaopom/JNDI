package com.yc.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * @ClassName:     DBUtil.java
 * @Description:   
 * @author          POM
 * @version         V1.0  
 * @Date           2016年9月2日 下午2:18:03 
 */
public class DBUtil {


	public void getConnection(){
		Connection conn = null;
		try {
			// 1.加载驱动
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// 2.得到连接
			conn = DriverManager.getConnection("jdbc:oracle:thin:@127.0.0.1:1521:orcl", "SCOTT", "tiger");

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
