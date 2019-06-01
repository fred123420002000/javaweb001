package com.action;

import com.dao.resdao;
import com.model.res;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class queryaction extends ActionSupport{

	private int id;
	
	public String execute() throws Exception {		
		res res=resdao.query(id);
		ActionContext.getContext().getSession().put("res",res);
		return SUCCESS;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
