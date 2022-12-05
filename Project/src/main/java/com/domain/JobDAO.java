package com.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

public class JobDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	public List<Job> getList(){
		List<Job> Job_List = null;
	      
	      try {
	         //               mapper.xml의 id값
	    	  Job_List = sqlSession.selectList("get_Job");
	         
	         // 만약에 내가 원하는 일을 했으면 DB에 반영
	         if(Job_List != null) {
	            System.out.println("DAO : 채용정보 전체검색 성공!!");
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
	      
	      
	      return Job_List;
	}
}
