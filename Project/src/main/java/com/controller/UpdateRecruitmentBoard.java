package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.domain.Board;
import com.domain.BoardDAO;
import com.domain.RecruitmentBoard;
import com.domain.RecruitmentBoardDAO;

public class UpdateRecruitmentBoard extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[ UpdateRecruitmentBoard ]");
		request.setCharacterEncoding("UTF-8");
		String bd_title = request.getParameter("title");
		String bd_contents = request.getParameter("contents");
		int bd_num = Integer.parseInt(request.getParameter("bd_num"));
		RecruitmentBoard update = new RecruitmentBoard(bd_num,bd_title,bd_contents);
		System.out.println(update.toString());
		
		RecruitmentBoardDAO dao = new RecruitmentBoardDAO();
		int cnt = dao.UpdateRecruitmentBoard(update);
		if(cnt>0) {
			System.out.println("UpdateRecruitmentBoard : 채용공고 게시판 수정 성공! ");
			response.sendRedirect("recruitment.jsp");
		}else {
			System.out.println("UpdateRecruitmentBoard : 채용공고 게시판 수정 실패! ");
		}		
	}

}
