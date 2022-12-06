<%@page import="com.domain.Job"%>
<%@page import="com.domain.JobDAO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.domain.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	Member loginMember = (Member)session.getAttribute("loginMember");
	
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>커뮤니티</title>
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
    <link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
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
				 

            <div class="container-xxl py-5 bg-primary hero-header">
                <div class="container my-5 py-5 px-lg-5">
                    <div class="row g-5 py-5">
                        <div class="col-12 text-center">
                            <h1 class="text-white animated slideInDown">Search</h1>
                            <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                            <nav aria-label="breadcrumb">
                            
                            

                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>

		<%
			int job_num = Integer.parseInt(request.getParameter("job_num"));
			JobDAO dao = new JobDAO();
			Job Job_view = dao.view(job_num);
			
		%>
			
        	<p style="text-align:center; font-size: 30px; font-weight: 900; margin-top:revert;">채용정보 보기</p>
        	<br>
		<form style="margin-left: 15rem; font-size: 20px;">    	
        <div class="form-group">
        	<span style="display:inline-block; width: 100px; height: 50px;">제목</span>
            <span style="background-color:#ecf0f1; width: 795px; border: 1px solid #ced4da; border-radius: 10px; display: inline-block;"><%= Job_view.getCMP_NAME() %> 와(과) 함께할 직원을 구합니다~~</span>
        </div>
        <div class="form-group">
            <span style="display:inline-block ;width: 100px; ">작성자</span>
             <span style="background-color:#ecf0f1; width: 795px; border: 1px solid #ced4da; border-radius: 10px; display: inline-block;">관리자</span>
           <br>
           <br>
        </div>
          <div class="form-group">
            <label for="exampleFormControlTextarea1">내용</label>
            <div class="form-control" id="exampleFormControlTextarea1" name="contents" text-align="center" style="background-color:#ecf0f1; width: 900px; height:200px;">
            	<%= Job_view.getCMP_TITLE() %>
            </div>
          </div>
        <!-- <button onclick="updateBoard()" class="btn btn-info" style ="background-color: light-green; margin:0 auto;" >수정하기</button> -->
		
			
		
		<div align="right" style="margin-right: 180px;">
			<%if(loginMember == null){ %>
	    	    <a class="btn btn-secondary" style ="text-align: right; color:white" href="recruitment.jsp">목록으로</a>
        	<%}else{ %>
	    	    <a class="btn btn-secondary" style ="text-align: right; color:white" href="recruitment.jsp">목록으로</a>
			<%} %>	
			
			
		</div>
	</form>
	
	
	
	
	
    
  

        
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>


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
    
    <script type="text/javascript">
    
    
    </script>
</body>

</html>