package com.model;

import java.util.Date;

public class res {
	private int id;//對應mysql中res表內的各項欄位
	private String name="";
	private int product1;
	private int product2;
	private int product3;
	private String memory;
	private int sum;
	private String orderdate=new Date().toString();
	public res() {		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getProduct1() {
		return product1;
	}
	public void setProduct1(int product1) {
		this.product1 = product1;
	}
	public int getProduct2() {
		return product2;
	}
	public void setProduct2(int product2) {
		this.product2 = product2;
	}
	public int getProduct3() {
		return product3;
	}
	public void setProduct3(int product3) {
		this.product3 = product3;
	}
	public String getMemory() {
		return memory;
	}
	public void setMemory(String memory) {
		this.memory = memory;
	}
	public int getSum() {
		sum=product1*100+product2*120+product3*150;
		if(memory.equals("y"))sum=(int)(0.95*sum);
		//如果有會員會有95折的折扣
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}	
	
	public String getOrderdate() {
		return orderdate;
	}
	public void setOrderdate(String orderdate) {
		this.orderdate = orderdate;
	}
	public static void main(String[] arg) {
		
	}
	

}
