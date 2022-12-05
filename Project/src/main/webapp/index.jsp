<%@page import="com.domain.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>자격증 플러스</title>
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
                        
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">마이페이지</a>
                            <div class="dropdown-menu m-0">
                                <a href="/Project/Calendar/mypageCalendar.jsp" class="dropdown-item">캘린더</a>
                                <a href="mypage.jsp" class="dropdown-item">관심 자격증</a>
                                <a href="update.jsp" class="dropdown-item">회원정보 수정</a>
                            </div>
                        </div>
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
				 
            <div class="container-xxl bg-primary hero-header">
                <div class="container px-lg-5">
                    <div class="row g-5 align-items-end">
                        <div class="col-lg-6 text-center text-lg-start">
                        
                            <h1 class="text-white mb-4 animated slideInDown">취업에 자신감을 더하다!</h1>
                            <p class="text-white pb-3 animated slideInDown">안녕하세요. 자격증 플러스 페이지 입니다. 환영합니다.</p>
                            <a href="board2.jsp" class="btn btn-secondary py-sm-3 px-sm-5 rounded-pill me-3 animated slideInLeft">추천 자격증 리스트</a>
                            <a href="board3.jsp" class="btn btn-light py-sm-3 px-sm-5 rounded-pill animated slideInRight">시험 합격률 조회</a>
                        </div>
                        <div class="col-lg-6 text-center text-lg-start">
                            <img src="/Project/img/그림2.png" alt="Logo">
                            
                        </div>
                    </div>
                </div>
            </div>
        <!-- Navbar & Hero End -->


        <!-- Feature Start -->
        <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                      <p class="section-title text-secondary justify-content-center"><span></span>Our Services<span></span></p>
                    <h1 class="text-center mb-5">🏅TOP 3 자격증</h1>
                <div class="row g-4">
                    <div class="col-lg-4  fadeInUp" data--delay="0.1s">
                        <div class="feature-item bg-light rounded text-center p-4">
                            <i class="fa fa-3x fa-mail-bulk text-primary mb-4"></i>
                            <h5 class="mb-3">정보처리기사</h5>
                        </div>
                    </div>
                    <div class="col-lg-4  fadeInUp" data--delay="0.3s">
                        <div class="feature-item bg-light rounded text-center p-4">
                            <i class="fa fa-3x bi-lightning-charge text-primary mb-4"></i>
                            <h5 class="mb-3">전기산업기사</h5>         
                        </div>
                    </div>
                    <div class="col-lg-4  fadeInUp" data--delay="0.5s">
                        <div class="feature-item bg-light rounded text-center p-4">
                            <i class="fa fa-3x fa-laptop-code text-primary mb-4"></i>
                            <h5 class="mb-3">네트워크관리사</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Feature End -->


        


        
        <!-- Service Start -->
        <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">            
                <div class=" fadeInUp" data--delay="0.1s">
                    <p class="section-title text-secondary justify-content-center"><span></span>Our Services<span></span></p>
                    <h1 class="text-center mb-5">주요 서비스</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-4 col-md-6  fadeInUp" data--delay="0.1s">
                        <div class="service-item d-flex flex-column text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa bi-ui-checks fa-2x"></i>
                            </div>
                            <h5 class="mb-3">채용정보</h5>
                            <p class="m-0">IT직무와 관련한 역량을 인/적성 측면으로 측정하여 적합도를 확인할 수 있습니다. </p>
                            <a class="btn btn-square" href=""><i class="fa fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6  fadeInUp" data--delay="0.3s">
                        <div class="service-item d-flex flex-column text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa bi-card-list fa-2x"></i>
                            </div>
                            <h5 class="mb-3">자격증정보</h5>
                            <p class="m-0">자격증과 관련된 정보를 공유하는 소통의 공간이 됩니다. </p>
                            <a class="btn btn-square" href=""><i class="fa fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6  fadeInUp" data--delay="0.5s">
                        <div class="service-item d-flex flex-column text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa bi-person-bounding-box fa-2x"></i>
                            </div>
                            <h5 class="mb-3">채용정보</h5>
                            <p class="m-0">구인구직, 직업훈련 등 채용과 관련된 정보를 공유하는 소통의 공간이 됩니다.</p>
                            <a class="btn btn-square" href=""><i class="fa fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6  fadeInUp" data--delay="0.1s">
                        <div class="service-item d-flex flex-column text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa bi-calendar3 fa-2x"></i>
                            </div>
                            <h5 class="mb-3">캘린더</h5>
                            <p class="m-0">내가 등록한 관심 자격증이 캘린더로 업데이트 되어 해당 자격증의 정보를 보여줍니다.</p>
                            <a class="btn btn-square" href=""><i class="fa fa-arrow-right"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6  fadeInUp" data--delay="0.3s">
                        <div class="service-item d-flex flex-column text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa bi-geo-alt fa-2x"></i>
                            </div>
                            <h5 class="mb-3">주변학원찾기</h5>
                            <p class="m-0">내가 살고 있는 동네 주변에서 나에게 맞는 학원이 있는지 검색하고 비교해볼 수 있습니다.</p>
                               <a class="btn btn-square" href="">
                               <i class="fa fa-arrow-right"></i>
                               </a>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6  fadeInUp" data--delay="0.5s">
                        <div class="service-item d-flex flex-column text-center rounded">
                            <div class="service-icon flex-shrink-0">
                                <i class="fa bi-people fa-2x"></i>
                            </div>
                            <h5 class="mb-3">커뮤니티</h5>
                            <p class="m-0">자격증 응시자, 관련 업계 현직 종사자 등 다양한 사람들과 비전을 공유할 수 있습니다.</p>
                            <a class="btn btn-square" href=""><i class="fa fa-arrow-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service End -->



        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib//.min.js"></script>
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