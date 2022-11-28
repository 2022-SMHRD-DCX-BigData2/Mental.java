package com.domain;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.database.SqlSessionManager;

public class BoardDAO {
	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();
	
	// 날짜 얻기
	public String getDate() {
		String date =null;
		try {

			date = sqlSession.selectOne("getDate");

			if (date!=null) {

				System.out.println("DAO : Get Date 성공");
				sqlSession.commit();

			} else {

				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return date;
	}
	
	
}
