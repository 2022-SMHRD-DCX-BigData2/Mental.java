<%@page import="java.util.List"%>
<%@page import="com.domain.RecruitmentBoard"%>
<%@page import="com.domain.RecruitmentBoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>채용 정보</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

	<!-- header 불러오기 -->
	<%@ include file="subHerder.jsp" %>

    
</head>

<body>
    
            <div class="container-xxl py-5 bg-primary hero-header">
                <div class="container my-5 py-5 px-lg-5">
                    <div class="row g-5 py-5">
                        <div class="col-12 text-center">
                            <h1 class="text-white animated slideInDown">채용 정보</h1>
                            <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                             
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Service Start -->
        <!-- 게시판 시작 -->
           <input type="text" class="form-control" name="search" placeholder="검색어를 입력해 주세요." >
                <button class="btn btn-primary" >검색</button>
        <div class="container">
            <div class="row table-div">
                <table class="table-setting" >
                    <thead>
                    <tr>
                    <th class ="th-setting" style="width: 10%">번호</th>
                    <th class ="th-setting" style="width: 50%">제목</th>
                    <th class ="th-setting" style="width:15%">작성자</th>
                    <th class ="th-setting" style="width :15%">작성일</th>
<!--                <th class ="th-setting" style="width: 5%">번호</th>
                    <th class ="th-setting" style="width: 10%">회사명</th>
                    <th class ="th-setting" style="width: 50%">공고명</th>
                    <th class ="th-setting" style="width:15%">주소</th>
                    <th class ="th-setting" style="width:10%">작성자</th>
                    <th class ="th-setting" style="width :10%">작성일</th> -->
                    </tr>
                    </thead>
                    <tbody>
<!--                          <tr>
                    		<td>5</td>
                    		<td>스마트인재개발원</td>
                    		<td>📢커뮤니티 이용 시 주의사항(필독!!)</td>
                    		<td>전남 순천시</td>
                    		<td>관리자</td>
                    		<td>2020-07-13</td>
                    	</tr> -->
                        <tr>
                    		<td>4</td>
                    		<td>📢현직자 멘토를 모집합니다.</td>
                    		<td>관리자</td>
                    		<td>2020-07-13</td>
                    	</tr>
                   		 <tr>
                    		<td>3</td>
                    		<td>00기업 신입 및 경력 채용공고</td>
                    		<td>관리자</td>
                    		<td>2020-07-14</td>
                    	</tr>
                         <tr>
                    		<td>2</td>
                    		<td>00기업 신규 채용 공고</td>
                    		<td>관리자</td>
                    		<td>2020-07-15</td>
                    	</tr>
                    	<tr>
                    		<td>1</td>
                    		<td>00기업 신입 및 경력 채용공고</td>
                    		<td>관리자</td>
                    		<td>2020-07-16</td>
                    	</tr>
                    </tbody>
                    </table>
                    </div>
                    <!-- 글쓰기 버튼 생성 -->
                    <div align="right">
                    <button class="btn write_btn" onclick="location.href='recruitmentWrite.jsp'">글쓰기</button>
                    </div>
                    </div>
                <!-- 게시판 메인 페이지 영역 끝 -->
                
        
        
        


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    
</body>
</html>