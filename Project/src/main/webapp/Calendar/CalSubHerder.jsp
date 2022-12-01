<%@page import="com.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">


<head>
   <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
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
    <link href="/Project/Calendar/lib/animate/animate.min.css" rel="stylesheet">
    <link href="/Project/Calendar/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="/Project/Calendar/lib/lightbox/css/lightbox.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="/Project/Calendar/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="/Project/Calendar/css/style.css" rel="stylesheet">
    
    
    <title>Calendar</title>
    <link rel="shortcut icon" href="image/favicon.ico">

    <link rel="stylesheet" href="/Project/Calendar/vendor/css/fullcalendar.min.css" />
    <link rel="stylesheet" href="/Project/Calendar/vendor/css/bootstrap.min.css">
    <link rel="stylesheet" href='/Project/Calendar/vendor/css/select2.min.css' />
    <link rel="stylesheet" href='/Project/Calendar/vendor/css/bootstrap-datetimepicker.min.css' />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,500,600">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <link rel="stylesheet" href="/Project/Calendar/css/main.css">
    
    
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
                <a href="../index.jsp" class="navbar-brand p-0">
                    <img src="/Project/img/그림1.png">
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav mx-auto py-0">
                       <a href="../index.jsp" class="nav-item nav-link active">Home</a>
                        <a href="../recruitment.html" class="nav-item nav-link">채용정보</a>
                        <a href="/Project/Calendar/Calendar.jsp" class="nav-item nav-link">자격증 캘린더</a>
                        <a href="../academy.jsp" class="nav-item nav-link">주변학원찾기</a>
                        <a href="../board.jsp" class="nav-item nav-link">커뮤니티</a>
                        
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">마이페이지</a>
                            <div class="dropdown-menu m-0">
                                <a href="/Project/Calendar/mypageCalendar.jsp" class="dropdown-item">캘린더</a>
                                <a href="mypage.jsp" class="dropdown-item">관심 자격증</a>
                                <a href="update.jsp" class="dropdown-item">회원정보 수정</a>
                            </div>
                        </div>
                        
                    </div>
                    <a href="../register.html" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">회원가입</a>
                    <a href="../login.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그인</a>
                </div>
            </nav>
                        
                    </div>
                    <c:choose>
                  <c:when test="${empty loginMember}">
                     <a href="login.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그인</a>
                     <a href="register.html" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">회원가입</a>
                  </c:when>
                  <c:otherwise>
                     <!-- 문자열 비교는 eq -->
                     <c:if test="${loginMember.mem_id eq 'admin' }">
                        <a href="select.jsp" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">회원관리</a>
                        <a href="LogoutCon" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그아웃</a>
                     </c:if>
                     <c:if test="${loginMember.mem_id ne 'admin' }">
                        <h1>${loginMember.mem_id}님 환영합니다~</h1>
                        <a href="LogoutCon" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그아웃</a>
                     </c:if>
                  </c:otherwise>
               </c:choose>
                </div>
        <!-- Navbar & Hero End -->
     

  
    
</body>
</html>