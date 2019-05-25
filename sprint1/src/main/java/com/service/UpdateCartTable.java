package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.Addbook;
import com.util.dbConnect;

public class UpdateCartTable {

	Connection conn = null;
	
	public void updateCart(int id) throws SQLException {
		
		conn = (Connection)dbConnect.conn();
		
		
		
			try {
				
			
			
			String query = "select * from add_to_cart where cartitemid ='"+id+"'";
			PreparedStatement ps1 = (PreparedStatement) conn.prepareStatement(query);
		
			
			ResultSet rs1 = ps1.executeQuery();
			
			while (rs1.next()) {
				String query1 = "insert into borrowbook(username,bookno) values('"+rs1.getString(2)+"','"+rs1.getString(3)+"')";
				PreparedStatement ps2 = (PreparedStatement) conn.prepareStatement(query1);
				
				ps2.execute();
				
				String query2 = "delete from add_to_cart where cartitemid = ?";
				PreparedStatement ps3 = (PreparedStatement) conn.prepareStatement(query2);
				
				ps3.setInt(1, id);
				
				ps3.executeUpdate();
				
			}
					
			
			conn.close();
			System.out.println("Disconnected from database");
			
			}catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
}
