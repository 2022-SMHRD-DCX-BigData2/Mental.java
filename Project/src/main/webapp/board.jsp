<%@page import="java.util.List"%>
<%@page import="com.domain.Board"%>
<%@page import="com.domain.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DGital - Digital Agency HTML Template</title>
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
                    <img src="img/그림1.png">
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav mx-auto py-0">
                         <a href="index.jsp" class="nav-item nav-link active">Home</a>
                        <a href="recruitment.html" class="nav-item nav-link">채용정보</a>
                        <a href="./Calendar/Calendar.jsp" class="nav-item nav-link">자격증 캘린더</a>
                        <a href="academy.jsp" class="nav-item nav-link">주변학원찾기</a>
                        <a href="board.jsp" class="nav-item nav-link">커뮤니티</a>
                        
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">마이페이지</a>
                            <div class="dropdown-menu m-0">
                                <a href="#" class="dropdown-item">캘린더</a>
                                <a href="#" class="dropdown-item">관심 자격증</a>
                                <a href="update.jsp" class="dropdown-item">회원정보 수정</a>
                            </div>
                        </div>
                        
                    </div>
                    <a href="register.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">회원가입</a>
                    <a href="login.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그인</a>
                </div>
            </nav>

            <div class="container-xxl py-5 bg-primary hero-header">
                <div class="container my-5 py-5 px-lg-5">
                    <div class="row g-5 py-5">
                        <div class="col-12 text-center">
                            <h1 class="text-white animated slideInDown">Community</h1>
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
            <div class="row table-div">
                <table class="table-setting" >
                    <thead>
                    <tr>
                    <th class ="th-setting" style="width: 10%">번호</th>
                    <th class ="th-setting" style="width: 50%">제목</th>
                    <th class ="th-setting" style="width:15%">작성자</th>
                    <th class ="th-setting" style="width :15%">작성일</th>
                    </tr>
                    </thead>
                    <tbody>
                   		 
                   		 
                    <%
						BoardDAO dao = new BoardDAO(); // 인스턴스 생성
						List<Board> list = dao.getList();
						for(int i = 0; i < list.size(); i++){
							String mem_id = dao.getmemId(list.get(i).getMem_no());
					
					%>
					<tr>
						<td><%= list.get(i).getBd_num() %></td>
						<!-- 게시글 제목을 누르면 해당 글을 볼 수 있도록 링크를 걸어둔다 -->
						<td><a href="view.jsp?bd_num=<%= list.get(i).getBd_num() %>">
							<%= list.get(i).getBd_title() %></a></td>
						<td><%= mem_id %></td>
						<td><%= list.get(i).getBd_date() %></td>
					</tr>
					<%
						}
						
					%>
                    </tbody>
                    </table>
                    </div>
                    <!-- 글쓰기 버튼 생성 -->
                    <div align="right">
                    
                    <button class="btn write_btn" onclick="location.href='write.jsp'">글쓰기</button>
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