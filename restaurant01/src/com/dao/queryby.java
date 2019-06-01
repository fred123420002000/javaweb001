package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class queryby {
	public static ResultSet queryby(Integer id,String name,String memory,Integer sum) {		
		ResultSet rs=null;
		String url="jdbc:mysql://localhost:3306/restaurant";
		String user="root";
		String password="1234";
		String sql="select * from res where id>=1";
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection(url, user, password);		
			Statement st=conn.createStatement();
			
			if(!(id==null||id.equals(0)))sql=sql+" and id="+id;
			if(!(name==null||name.equals("")))sql=sql+" and name='"+name+"'";
			if(!(memory==null||memory.equals("")))sql=sql+" and memory='"+memory+"'";
			if(!(sum==null||sum.equals(0)))sql=sql+" and sum>="+sum;

			System.out.println(sql);
			rs=st.executeQuery((sql));			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}		
		return rs;
	}	
	public static void main(String[] args) throws Throwable {
		ResultSet rs=queryby(0,null,"",2);
		
		while(rs.next()){
			for(int i=1;i<=8;i++) {
				System.out.print(rs.getObject(i)+"\t");
			}
			System.out.println();
		}
	}

}
