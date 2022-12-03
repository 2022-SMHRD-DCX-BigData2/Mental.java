package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.domain.Calendar;
import com.domain.CalendarDAO;
import com.google.gson.Gson;


public class Calendar_Reg_send extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("[CalendarViewCon]");
		
		CalendarDAO dao = new CalendarDAO();
				
		List<Calendar> calendarList = dao.select_reg();
		
		// Gson 객체 생성
		Gson gson = new Gson();
		
		// 자바코드에서 만들어낸 리스트를 json 문자열로 바꿈
		// Gson에 있는 toJson()
		String json = gson.toJson(calendarList);
		
		// 보내기 전에 인코딩
		response.setCharacterEncoding("UTF-8");
		
		// 보내는 통로 출력스트림 PrintWriter 객체 생성
		PrintWriter out = response.getWriter();
		
		// 결과값을 보내는 out.print();
		System.out.println("캘린더로 보내줄 Json객체 확인 : " + json);
		
		// 전송
		out.print(json);
		
	}

}
