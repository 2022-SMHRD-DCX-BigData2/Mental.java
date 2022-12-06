<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="com.domain.BoardDAO"%>
<%@page import="com.domain.Job"%>
<%@page import="com.domain.JobDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>채용정보</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500&family=Jost:wght@500;600;700&display=swap" rel="stylesheet"> 

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/lightbox/;css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    
    <style type="text/css">
    	thead{
    		font-size: 20px;
    		font-style: bold;
    	}
    	tr{
    		height: 50px;
    	}
    
    </style>   
</head>

<body>
  <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->

        <!-- Navbar & Hero Start -->
          <div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="index.jsp" class="navbar-brand p-0">
                    <img src="/Project/img/그림1.png">
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav mx-auto py-0">
                        <a href="index.jsp" class="nav-item nav-link active">Home</a>
                        <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">채용/자격증</a>
                            <div class="dropdown-menu m-0">
                     		    <a href="recruitment.jsp" class="dropdown-item">채용정보</a>
                                <a href="board2.jsp" class="dropdown-item">추천 자격증 리스트</a>
                                <a href="board3.jsp" class="dropdown-item">시험 합격률 조회</a>
                            </div>
                        </div>
                        <a href="./Calendar/Calendar.jsp" class="nav-item nav-link">자격증 캘린더</a>
                        <a href="academy.jsp" class="nav-item nav-link">주변학원찾기</a>
                        <a href="board.jsp" class="nav-item nav-link">커뮤니티</a>
                        
                        <c:choose>
                        <c:when test="${not empty loginMember}">
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">마이페이지</a>
                            <div class="dropdown-menu m-0">
                                <a href="/Project/Calendar/mypageCalendar.jsp" class="dropdown-item">캘린더</a>
                                <a href="mypage.jsp" class="dropdown-item">관심 자격증</a>
                                <a href="update.jsp" class="dropdown-item">회원정보 수정</a>
                            </div>
                        </div>
                        </c:when>
						</c:choose>     
                    </div>
                                  
              </div>
                  <c:choose>
                  <c:when test="${empty loginMember}">
                     <a href="login.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그인 </a>
                     <a href="register.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">회원가입</a>
                  </c:when>
                  <c:otherwise>
                     <!-- 문자열 비교는 eq -->
                     <c:if test="${loginMember.mem_id eq 'admin' }">
                        <a href="select.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">회원관리</a>
                        <a href="LogoutCon" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그아웃</a>
                     </c:if>
                     <c:if test="${loginMember.mem_id ne 'admin' }">
                        <span>${loginMember.mem_id}님 환영합니다~</span>
                        <a href="LogoutCon" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그아웃</a>
                     </c:if>
                	 </c:otherwise>
               		 </c:choose>
              
              	 </nav>
                </div>
				 
                        
                 
             <div class="container-xxl py-5 bg-primary hero-header"  style="max-height: 450px!important;">
                <div class="container my-5 py-5 px-lg-5">
                    <div class="row g-5 py-5">
                        <div class="col-12 text-center">
                            <h1 class="text-white animated slideInDown" style="margin-top: 50px!important">채용 정보</h1>
                            <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                             
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- Service Start -->
        <!-- 게시판 시작 -->
        <div class="container">
            <div class="row table-div" style="margin-top:5px!important width">
           	<div style="margin-bottom:10px; width:1400px!important; padding: 0px!important;">
           	<form action="recruitment.jsp" method="post">
           	<input type="text" class="form-control" name="search" placeholder="검색어를 입력해 주세요." style="width:1100px ; height:50px;
           				 display: inline-block;">
          	<button type="submit" class="btn btn-primary"  style="margin-left:20px; padding: 15px; margin-top: 0px" >검색</button>
           	</form>
          	
           	</div>
                <table class="table-setting" >
                    <thead>
                    <tr >
                    <th class ="th-setting" style="width: 10%">번호</th>
                    <th class ="th-setting" style="width: 50%">제목</th>
                    <th class ="th-setting" style="width:15%">작성자</th>
                    <th class ="th-setting" style="width :15%">자세히보기</th>
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
                        
                     <%
						JobDAO dao = new JobDAO(); // 인스턴스 생성
						BoardDAO board= new BoardDAO();
						// Date nowDate = new Date();
						List<Job> list = dao.getList();
						// SimpleDateFormat simple = new SimpleDateFormat("YYYY-MM-dd");
						for(int i = 0; i < list.size(); i++){
					%>
					<tr>
						<td><%= list.get(i).getCMP_NUM() %></td>
						<!-- 게시글 제목을 누르면 해당 글을 볼 수 있도록 링크를 걸어둔다 -->
						<td><a href="Job_view.jsp?job_num=<%= list.get(i).getCMP_NUM() %>" style="color: black;"><%= list.get(i).getCMP_NAME() %> 과 함께할 가족을 모집합니다~~</a></td>
						<td>관리자</td>
						<td><a href="Job_view.jsp?job_num=<%= list.get(i).getCMP_NUM() %>" style="color: black;">자세히 보기</a></td>
					<%} %>
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

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/counterup/counterup.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/isotope/isotope.pkgd.min.js"></script>
    <script src="lib/lightbox/js/lightbox.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
</html>