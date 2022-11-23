package com.domain;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.database.SqlSessionManager;

public class MemberDAO {

	SqlSessionFactory sqlSessionFactory = SqlSessionManager.getSqlSession();
	SqlSession sqlSession = sqlSessionFactory.openSession();

	// 회원가입 기능 구현
	public int insertMember(Member joinMember) {
		int cnt = 0;
		try {

			// sqlSession.insert ( " Mapper.xml의 id값 " , " " )
			// insert할 때 써먹을 값을 joinMember 야 ~~~
			// 매개변수가 없다고 하면 id만 적어주면 된다.
			cnt = sqlSession.insert("insertMember", joinMember);

			// DB연결은 되던지 안 되던지
			// 만약에 내가 원하는 일을 했으면
			if (cnt > 0) {

				System.out.println("DAO : 회원가입 성공!");
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
	} // 회원가입 끝!

	// 로그인기능 구현
	public Member selectMember(Member login) {
		Member loginMember = null;
		try {

			loginMember = sqlSession.selectOne("selectMember",login);

			if (loginMember!=null) {

				System.out.println("DAO : 로그인 성공!");
				sqlSession.commit();

			} else {

				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}

		return loginMember;
	} // 로그인 끝!!
	
	// 회원정보 수정 기능 구현
	public int updateMember(Member update) {
		int cnt = 0;
		try {

			cnt = sqlSession.insert("updateMember", update);

			if (cnt > 0) {

				System.out.println("DAO : 회원정보수정 성공!");
				sqlSession.commit();

			} else {

				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
		
		
	}// 회원정보 수정 끝!!
	
	// 회원 전체 검색기능 구현
	public List<Member> selectAll(){
		List<Member> memberList = null;
	      
	      try {
	         //               mapper.xml의 id값
	    	  memberList = sqlSession.selectList("selectAll");
	         
	         // 만약에 내가 원하는 일을 했으면 DB에 반영
	         if(memberList != null) {
	            System.out.println("DAO : 회원전체검색 성공!!");
	            sqlSession.commit();
	         }else {
	            // 만약에 원하는 일을 못하면 다시 원래대로 돌려주기
	            sqlSession.rollback();
	         }
	         
	         
	      } catch (Exception e) {
	         // TODO: handle exception
	         e.printStackTrace();
	      } finally {
	         // 빌렸던 Connection 객체를 반납
	         sqlSession.close();
	      }
	      
	      
	      return memberList;
	} // 회원 전체검색 끝~
	
	// 관리자가 회원삭제 기능 구현
	public int deleteMember(String email) {
		int cnt = 0;
		try {

			cnt = sqlSession.delete("deleteMember", email);

			if (cnt > 0) {

				System.out.println("DAO : 회원삭제 성공!");
				sqlSession.commit();

			} else {

				sqlSession.rollback();
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			sqlSession.close();
		}
		return cnt;
	}

}
