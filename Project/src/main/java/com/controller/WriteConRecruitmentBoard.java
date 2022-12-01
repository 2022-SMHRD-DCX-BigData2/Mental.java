package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.domain.Board;
import com.domain.BoardDAO;
import com.domain.Member;
import com.domain.RecruitmentBoard;
import com.domain.RecruitmentBoardDAO;


public class WriteConRecruitmentBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("[WriteConRecruitmentBoard]");
		RecruitmentBoardDAO dao = new RecruitmentBoardDAO();
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		System.out.println(loginMember.toString());
		String mem_id = loginMember.getmem_id();
		String mem_no = dao.getmemNo(mem_id);
		System.out.println(mem_no);
		String bd_title = request.getParameter("title");
		String bd_contents = request.getParameter("contents");
		String bd_date = dao.getDate();
		System.out.println(bd_date);
		
		RecruitmentBoard newBoard = new RecruitmentBoard(mem_no,bd_title,bd_contents,bd_date);
		int cnt =  dao.insertBoard(newBoard);
		if(cnt > 0 ) {
			System.out.println("WriteConRecruitmentBoard : 채용정보 글쓰기 성공!! ");
			response.sendRedirect("recruitment.jsp"); // 게시판 기능 만든 후 추후 작성 
			
		}else {
			System.out.println("WriteConRecruitmentBoard : 채용정보 글쓰기 실패!! ");
			response.sendRedirect("recruitment.jsp"); // 여기도 ~~
		}
	}

}
