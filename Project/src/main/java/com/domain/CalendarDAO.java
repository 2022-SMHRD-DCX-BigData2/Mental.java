package com.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

public class CalendarDAO {
	
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	public List<Calendar> select_reg(){
			
			System.out.println("[CalendarDAO : select_reg()]");
			
			List<Calendar> calendarList = null;
			
			try {
				
				calendarList = sqlSession.selectList("select_reg");
				
				if(calendarList != null) {
					System.out.println("CalendarDAO : 일정전체검색 성공");
					sqlSession.commit();
				} else {
					
					sqlSession.rollback();
				}
				
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			} finally {
				sqlSession.close();
			}
		
			return calendarList;
	
		} // 전체일정검색 끝
}
