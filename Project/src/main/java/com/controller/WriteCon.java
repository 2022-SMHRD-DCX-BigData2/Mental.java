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


public class WriteCon extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[WriteCon]");
		BoardDAO dao = new BoardDAO();
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Member loginMember = (Member)session.getAttribute("loginMember");
		System.out.println(loginMember.toString());
		String mem_no = loginMember.getmem_no();
		String bd_title = request.getParameter("title");
		String bd_contents = request.getParameter("contents");
		String bd_date = dao.getDate();
		int bd_num = dao.getNum();
		System.out.println(bd_date);
		
		Board newBoard = new Board(bd_num,mem_no,bd_title,bd_contents,bd_date);
		System.out.println(newBoard.toString());
		int cnt =  dao.insertBoard(newBoard);
		if(cnt > 0 ) {
			System.out.println("WriteCon : 글쓰기 성공!! ");
			response.sendRedirect("board.jsp"); // 게시판 기능 만든 후 추후 작성 
			
		}else {
			System.out.println("WriteCon : 글쓰기 실패!! ");
			response.sendRedirect("board.jsp"); // 여기도 ~~
		}

		
		
		
		
	
	}

}
