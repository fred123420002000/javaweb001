package com.action;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.dao.resdao;
import com.model.login;
import com.model.res;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tack.tack;

public class orderaction extends ActionSupport{
	private res res=new res();
	private String manager="";
	
	

	public String execute() throws Exception {

		ApplicationContext c=new ClassPathXmlApplicationContext("spring.xml");	
		int[] tack=new int[3];
		String[] tackstring={"room","seat","out"};
		for(int i=0;i<3;i++) {
			tack[i]=((tack)c.getBean(tackstring[i])).tack(res);
		}
		if (res.getName().equals("")&&manager.equals("login"))return "merror";
		if (res.getName().equals(""))return ERROR;
		ActionContext.getContext().getSession().put("res", res);
		ActionContext.getContext().getSession().put("resdao",new resdao());
		ActionContext.getContext().getSession().put("tack",tack);
		if(manager.equals("login")) {
			resdao.add(res);
			return "madd";
		}
		return SUCCESS;
	}

	public res getRes() {
		return res;
	}

	public void setRes(res res) {
		this.res = res;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}
	
}
