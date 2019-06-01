package com.action;

import com.dao.resdao;
import com.model.res;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class deleteaction extends ActionSupport{

	private int id;
	
	public String execute() throws Exception {		
		res res=resdao.query(id);
		ActionContext.getContext().getSession().put("id",id);
		ActionContext.getContext().getSession().put("res",res);
		ActionContext.getContext().getSession().put("resdao",new resdao());
		return SUCCESS;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}
