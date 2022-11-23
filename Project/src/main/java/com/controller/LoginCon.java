package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.domain.Member;
import com.domain.MemberDAO;


public class LoginCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[ Login Con ]");
		request.setCharacterEncoding("UTF-8");
		String mem_id= request.getParameter("id");
		String mem_pw = request.getParameter("pw");
		
		Member login = new Member(mem_id,mem_pw);
		System.out.println(login);
		
		MemberDAO dao = new MemberDAO();
		Member loginMember = dao.selectMember(login);
		
		if(loginMember!=null) {
			System.out.println("LoginCon : 로그인 성공");
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);
		}else {

			System.out.println("LoginCon : 로그인 실패!!");
		}

		response.sendRedirect("index.jsp");
	
	}

}
