package com.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.util.dbConnect;

public class ViewUserBorrowTable {

Connection conn = null;
	
	public ArrayList searchBorrow(String user) throws ClassNotFoundException, SQLException 
	{
		//Connect database
		conn = (Connection) dbConnect.conn();
		
		System.out.println(user);

		
		ArrayList c_array=null;
		ArrayList search_list =new ArrayList();
		
		String query1 = "select * from borrowbook where username='"+user+"'";
		
		
		Statement st = (Statement) conn.createStatement();
		ResultSet  rs = st.executeQuery(query1);
		
			while (rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				c_array = new ArrayList();


				
				c_array.add(rs.getString(1)); 
				c_array.add(rs.getString(2)); 
				c_array.add(rs.getString(3));
            

				search_list.add(c_array);
			}
			
		conn.close();
		System.out.println("Disconnected from database");
		
		return search_list;
		
		
	}
}
