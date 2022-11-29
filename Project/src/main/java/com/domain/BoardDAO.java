package com.domain;

import java.util.List;

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
		}
		return date;
	}
	
	// Mem_no 가져오기
	public String getmemNo(String mem_id) {
		String mem_no="";
		try {

			mem_no = sqlSession.selectOne("getmemNo",mem_id);

			if (mem_no!=null) {

				System.out.println("DAO : Get Mem_no 성공");
				sqlSession.commit();

			} else {

				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
		}
		
		return mem_no;
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
	
	// 게시판 전체 검색
	public List<Board> getList(){
		List<Board> boardList = null;
	      
	      try {
	         //               mapper.xml의 id값
	    	  boardList = sqlSession.selectList("getList");
	         
	         // 만약에 내가 원하는 일을 했으면 DB에 반영
	         if(boardList != null) {
	            System.out.println("DAO : 게시판전체검색 성공!!");
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
	      
	      
	      return boardList;
	}
	// Mem_id 가져오기
		public String getmemId(String mem_no) {
			String mem_id="";
			try {

				mem_id = sqlSession.selectOne("getmemId",mem_no);

				if (mem_id!=null) {

					System.out.println("DAO : Get Mem_id 성공");
					sqlSession.commit();

				} else {

					sqlSession.rollback();
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				// 빌렸던 Connection 객체를 반납
			}
			
			return mem_id;
		}
		
		// 게시글 가져오기
		public Board view(int bd_num){
			Board getboard = null;
		      
		      try {
		         //               mapper.xml의 id값
		    	  getboard = sqlSession.selectOne("view", bd_num);
		         
		         // 만약에 내가 원하는 일을 했으면 DB에 반영
		         if(getboard != null) {
		            System.out.println("DAO : 게시판view 성공!!");
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
		      
		      
		      return getboard;
		}
	
	
}
