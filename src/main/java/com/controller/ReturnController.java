package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.register_GS;
import com.service.SearchUser;

/**
 * Servlet implementation class ReturnController
 */
public class ReturnController{
	@RequestMapping("/searchUser")

	public ModelAndView search(HttpServletRequest request,HttpServletResponse respond) throws ClassNotFoundException, SQLException
	{
		String username = request.getParameter("userName");
		
		register_GS reg = new register_GS();
		
		reg.setName(username);
		
		SearchUser se = new SearchUser();
		 
		System.out.println(username);
		
		 
		
		 
	}

}
