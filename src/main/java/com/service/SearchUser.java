package com.service;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.register_GS;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;
import com.util.dbConnect;

public class SearchUser{
	Connection conn = null;
	
	public void searchuser(register_GS reg) throws ClassNotFoundException, SQLException 
	{
		//Connect database
		conn = (Connection) dbConnect.conn();
		
		String username = reg.getName();
		
		String queryUser = "select address,username from users where username = "+username+"";
		
		Statement st = (Statement) conn.createStatement();
		
		ResultSet  rs1 = st.executeQuery(queryUser);
			
		conn.close();
		System.out.println("Disconnected from database");
		
		//return search_list;
		
		
	}

}



 