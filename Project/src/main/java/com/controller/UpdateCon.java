package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.domain.Member;
import com.domain.MemberDAO;


public class UpdateCon extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[ UPDATE CON ]");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		System.out.println(loginMember.toString());
		String mem_id = loginMember.getmem_id();
		
		
		String mem_pw = request.getParameter("pw");
		String mem_name = request.getParameter("name");
		String mem_tel = request.getParameter("tel");
		String mem_email = request.getParameter("email");
		
		Member update = new Member(mem_id,mem_pw,mem_name,mem_tel,mem_email);
		System.out.println(update.toString());
		MemberDAO dao = new MemberDAO();
		int cnt= dao.updateMember(update);
		if(cnt>0) {
			System.out.println("UpdateCon : 회원정보수정 성공! ");
			// 세션에 저장되어 있는 정보가 수정 이전에 로그인 정보이기 때문에
			// 같은 이름으로 덮어쓰기 해야한다.
			session.setAttribute("loginMember", update);
			
			response.sendRedirect("index.jsp");
		}else {
			System.out.println("UpdateCon : 회원정보수정 실패! ");
			response.sendRedirect("update.jsp");
		}		
				
				
				
				
	}

}
