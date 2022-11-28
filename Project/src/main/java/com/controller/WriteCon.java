package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.domain.BoardDAO;


public class WriteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[WriteCon]");
		request.setCharacterEncoding("UTF-8");
		String mem_id = request.getParameter("id");
		String bd_contents = request.getParameter("contents");
		String bd_title = request.getParameter("title");
		BoardDAO dao = new BoardDAO();
		
		System.out.println(dao.getDate());
		
		
	
	}

}
