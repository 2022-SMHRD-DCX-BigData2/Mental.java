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
	
	// 게시글 번호 얻기
	public int getNum() {
		int num = 0;
		try {

			System.out.println("게시글번호얻기 성공");
			num = sqlSession.selectOne("getNext");

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		if (num!=0) {
			
			return num+1;
		} else {
			
			return num;
		}
	}
	
	// 게시글 쓰기
	public int insertBoard(Board newBoard) {
		int cnt = 0;
		try {

			// sqlSession.insert ( " Mapper.xml의 id값 " , " " )
			// insert할 때 써먹을 값을 joinMember 야 ~~~
			// 매개변수가 없다고 하면 id만 적어주면 된다.
			cnt = sqlSession.insert("insertBoard", newBoard);

			// DB연결은 되던지 안 되던지
			// 만약에 내가 원하는 일을 했으면
			if (cnt > 0) {

				System.out.println("DAO : 게시판등록 성공!");
				sqlSession.commit();

			} else {

				// 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 빌렸던 Connection 객체를 반납
			sqlSession.close();
		}
		return cnt;
	} // 게시판 등록 끝!
	
	
	
}
