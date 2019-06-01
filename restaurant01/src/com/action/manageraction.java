package com.action;

import com.dao.resdao;
import com.model.res;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class manageraction extends ActionSupport{
	private String tonextpage="";

	public String execute() throws Exception {
		
		if (tonextpage.equals("add")||tonextpage.equals("query")||tonextpage.equals("update")) {
			return tonextpage;
		}
		return ERROR;
	}

	public String getTonextpage() {
		return tonextpage;
	}

	public void setTonextpage(String tonextpage) {
		this.tonextpage = tonextpage;
	}
	
}
