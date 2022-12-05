package com.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

public class Job_Search {
				
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
				
	// 게시글 검색
		
	public List<Job> select(String search) {
		List<Job> select = null;
		
		 try {
	         //               mapper.xml의 id값
	    	  select = sqlSession.selectOne("search_x", search);
	         
	         // 만약에 내가 원하는 일을 했으면 DB에 반영
	         if(select != null) {
	            System.out.println("DAO : 검색 성공!!");
	            sqlSession.commit();
	         }else {
	            // 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
	            sqlSession.rollback();
	         }
	         
	         
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	      } finally {
	         
	      }
		return select; 
	}


}
