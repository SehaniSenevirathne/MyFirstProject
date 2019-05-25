package com.service;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.itextpdf.text.List;
import com.model.Addbook;
import com.model.register_GS;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.util.dbConnect;

public class ReturnBook {
	Connection conn = (Connection)dbConnect.conn();

//	register_GS  register_GSObj = new register_GS();
	
	public List returnBookToLib(register_GS reg) {
		List result =new List();
		try {
			String username = reg.getUsername();
			//search the user Books By id
			String queryBook = "select bookTitle,bookId from receivebook where username = "+username+"";
			String queryUser = "select address,username from users where username = "+username+"";
			Statement st = (Statement) conn.createStatement();
			ResultSet  rs1 = st.executeQuery(queryBook);
			ResultSet  rs2 = st.executeQuery(queryUser);
			
			while (rs1.next()) {
				ArrayList resultBook = new ArrayList();
				  resultBook.add(rs1.getString(1));
				  resultBook.add(rs1.getString(2));
				  resultBook.add(rs1.getString(2));
				  result.add(result);
				}
			/*while (rs2.next()) {
				ArrayList resultUser = new ArrayList();
				resultUser.add(rs2.getString(1));
				resultUser.add(rs2.getString(2));
				  result.add(result);
				}*/
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
