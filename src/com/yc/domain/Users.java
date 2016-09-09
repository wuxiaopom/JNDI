package com.yc.domain;
/**
 * @ClassName:     Users.java
 * @Description:   Users类
 * @author          POM
 * @version         V1.0  
 * @Date           2016年9月2日 上午9:11:32 
 */
public class Users {
	private String userName;
	private String password;
	
	//保留此默认的构造方法
	public Users(){
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
