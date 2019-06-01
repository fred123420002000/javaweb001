package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.res;

public class resdao {	

	private static void conn(){
		//�s�u����
		
		//�_�l��,Ū���պA��hibernate.cfg.xml
		Configuration config=new Configuration().configure();
		//Ū���øѪR�M�g�ɮ�(???.hbm.xml)�A�إ�sessionFactory
		SessionFactory sessionFactory=config.buildSessionFactory();
		//�}��session
		Session session=sessionFactory.openSession();
		
		System.out.println("connection test");
	}

	public static void add(res res)
	{
		if(res==null)return;
		//�s�W�q��
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		Transaction ts=session.beginTransaction();//�}�l���
		session.save(res);//���[�ưʧ@
		ts.commit();//�ǰe���
	}
	
	public static void update(int id,res newres){
		//�ק�q�椺�e
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		
		Transaction ts=session.beginTransaction();
		//���J�n�ק諸���
		res oldres=(res)session.get(res.class, new Integer(id));
		//�ק���		
		oldres.setName(newres.getName());
		oldres.setProduct1(newres.getProduct1());
		oldres.setProduct2(newres.getProduct2());
		oldres.setProduct3(newres.getProduct3());
		oldres.setMemory(newres.getMemory());
		oldres.setOrderdate(newres.getOrderdate());
		
		session.update(oldres);//�����s
		ts.commit();//�ǰe���		
	}
	

	public static res query(int id){//�H�q��s���d�߭q�椺�e
		
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();

		Transaction ts=session.beginTransaction();//�}�l�@�ӥ��
		res res=new res();
		res=(res)session.get(res.class, new Integer(id));//���J�n�d�ߪ����
		
		//�b�D���x��Xres�Ӹ`
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
		//�H�q��s���R���q�椺�e
		Configuration config=new Configuration().configure();
		SessionFactory sessionFactory=config.buildSessionFactory();
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();//�}�l�@�ӥ��
		res res=(res)session.get(res.class, new Integer(id));//���J�n���������
		session.delete(res);//�������
		ts.commit();//�ǰe���
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
