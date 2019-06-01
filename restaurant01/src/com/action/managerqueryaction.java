package com.action;

import com.dao.resdao;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class managerqueryaction extends ActionSupport{
	private String id="",name="",memory="",sum="";

	public String execute() throws Exception {
		ActionContext.getContext().getSession().put("id",id);
		ActionContext.getContext().getSession().put("name",name);
		ActionContext.getContext().getSession().put("memory",memory);
		ActionContext.getContext().getSession().put("sum",sum);
		return SUCCESS;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMemory() {
		return memory;
	}

	public void setMemory(String memory) {
		this.memory = memory;
	}

	public String getSum() {
		return sum;
	}

	public void setSum(String sum) {
		this.sum = sum;
	}
	
}
