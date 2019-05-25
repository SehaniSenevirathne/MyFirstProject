package com.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.register_GS;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.util.dbConnect;

public class ViewCartTable {

	Connection conn = null;
	
	public ArrayList searchCart(String user) throws ClassNotFoundException, SQLException 
	{
		//Connect database
		conn = (Connection) dbConnect.conn();
		
		System.out.println(user);

		
		ArrayList c_array=null;
		ArrayList search_list =new ArrayList();
		String query = "select * from add_to_cart where username = '"+user+"'";
		
		Statement st = (Statement) conn.createStatement();
		ResultSet  rs = st.executeQuery(query);
		
			while (rs.next()) {
				c_array = new ArrayList();

				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				System.out.println(rs.getString(3));
				
				
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
