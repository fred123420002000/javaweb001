package com.action;

import com.dao.resdao;
import com.model.res;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class updateaction extends ActionSupport{

	private int id;
	private String manager="";
	private res res=new res();
	
	public String execute() throws Exception {
		if(id==0||res.getName().equals("")&&manager.equals("login"))return "merror";
		if(id==0||res.getName().equals(""))return ERROR;
		ActionContext.getContext().getSession().put("id",id);
		ActionContext.getContext().getSession().put("res",res);
		ActionContext.getContext().getSession().put("resdao",new resdao());
		if(manager.equals("login")) {
			resdao.update(id,res);
			return "mupdate";
		}
		return SUCCESS;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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
