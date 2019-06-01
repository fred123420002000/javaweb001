package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.res;

public class resdao {	

	private static void conn(){
		//連線測試
		
		//起始化,讀取組態檔hibernate.cfg.xml
		Configuration config=new Configuration().configure();
		//讀取並解析映射檔案(???.hbm.xml)，建立sessionFactory
		SessionFactory sessionFactory=config.buildSessionFactory();
		//開啟session
		Session session=sessionFactory.openSession();
		
		System.out.println("connection test");
	}

	public static void add(res res)
	{
		if(res==null)return;
		//新增訂單
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		Transaction ts=session.beginTransaction();//開始交易
		session.save(res);//持久化動作
		ts.commit();//傳送交易
	}
	
	public static void update(int id,res newres){
		//修改訂單內容
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		Transaction ts=session.beginTransaction();
		//載入要修改的資料
		res oldres=(res)session.get(res.class, new Integer(id));
		//修改資料		
		oldres.setName(newres.getName());
		oldres.setProduct1(newres.getProduct1());
		oldres.setProduct2(newres.getProduct2());
		oldres.setProduct3(newres.getProduct3());
		oldres.setMemory(newres.getMemory());
		oldres.setOrderdate(newres.getOrderdate());
		
		session.update(oldres);//執行更新
		ts.commit();//傳送交易		
	}
	

	public static res query(int id){//以訂單編號查詢訂單內容
		
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();

		Transaction ts=session.beginTransaction();//開始一個交易
		res res=new res();
		res=(res)session.get(res.class, new Integer(id));//載入要查詢的資料
		
		//在主控台輸出res細節
		/*
		System.out.println("id:\t"+res.getId()+"\n"
				+"Name\t"+res.getName()+"\n"
				+"Pro1\t"+res.getProduct1()+"\n"
				+"Pro2\t"+res.getProduct2()+"\n"
				+"Pro3\t"+res.getProduct3()+"\n"
				+"Mem\t"+res.getMemory()+"\n"
				+"Sum\t"+res.getSum()+"\n"
				+"Odate\t"+res.getOrderdate()+"\n");*/
		return res;
	}
	

	public static void delete(int id){
		//以訂單編號刪除訂單內容
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();//開始一個交易
		res res=(res)session.get(res.class, new Integer(id));//載入要移除的資料
		session.delete(res);//移除資料
		ts.commit();//傳送交易
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		res test=new res();
		test.setName("Allen");
		test.setProduct1(3);
		test.setProduct2(4);
		test.setProduct3(5);
		test.setMemory("n");
		
		//resdao.add(test);
		//System.out.println("OK");
		resdao.query(0);
		//resdao.update(1,test);
		//resdao.delete(1);
	}

}
