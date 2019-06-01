package com.action;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.model.login;
import com.opensymphony.xwork2.ActionSupport;

public class loginaction extends ActionSupport{

	private ApplicationContext c=new ClassPathXmlApplicationContext("spring.xml");	
	private login login=(login) c.getBean("login");
	
	public String execute() throws Exception {
		if(login.getName().equals("qqq")&&login.getPassword().equals("111")) {
			return SUCCESS;
		}
		return ERROR;
	}

	public login getLogin() {
		return login;
	}

	public void setLogin(login login) {
		this.login = login;
	}

}
