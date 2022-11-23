package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.domain.Member;
import com.domain.MemberDAO;

public class JoinCon extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[ JoinCon ]");
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String email = request.getParameter("email");
		
		
		Member joinMember = new Member(id,pw,email);
		System.out.println(joinMember.toString());
		MemberDAO dao= new MemberDAO();
		int cnt = dao.insertMember(joinMember);
		
		if(cnt > 0 ) {
			System.out.println("JoinCon : 회원가입 성공!! ");
			response.sendRedirect("login.jsp");
			
		}else {
			System.out.println("JoinCon : 회원가입 실패!! ");
			response.sendRedirect("index.jsp");
		}
		
	}

}
