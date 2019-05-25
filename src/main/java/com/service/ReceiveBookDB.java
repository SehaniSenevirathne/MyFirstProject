package com.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Addbook;
import com.util.dbConnect;

/**
 * Servlet implementation class ReceiveBookDB
 */
public class ReceiveBookDB  {
Connection conn = null;
	
	public void Deletebookdb(Addbook addbook) {
		
		conn = (Connection) dbConnect.conn();
		
		try {
			String query2 = "delete from receiveBook where bookno = ?";
			PreparedStatement ps3 = (PreparedStatement) conn.prepareStatement(query2);
			
			ps3.setString(1, addbook.getBookId());
			
			ps3.executeUpdate();
			ResultSet rs2 = ps3.executeQuery();
			System.out.println("Successfuly receive book");
			conn.close();
			System.out.println("Disconnected from database");
		
	}catch (SQLException e) {
		e.printStackTrace();
	}
		
		}

}
