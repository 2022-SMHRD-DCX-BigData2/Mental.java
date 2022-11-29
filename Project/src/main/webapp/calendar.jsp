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
<link
	href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500&family=Jost:wght@500;600;700&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link href="lib/lightbox/css/lightbox.min.css" rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<style type="text/css">
body {
	line-height: 2em;
	font-family: "맑은 고딕";
}

ul, li {
	list-style: none;
	text-align: left;
	padding: 0;
	margin: 0;
}

#mainWrapper {
	width: 800px;
	margin: 0 auto; /*가운데 정렬*/
}

#mainWrapper>ul>li:first-child {
	text-align: center;
	font-size: 14pt;
	height: 40px;
	vertical-align: middle;
	line-height: 30px;
}

#ulTable {
	margin-top: 10px;
}

#ulTable>li:first-child>ul>li {
	background-color: #f7f1e3;
	font-weight: bold;
	text-align: center;
}

#ulTable>li>ul {
	clear: both;
	padding: 0px auto;
	position: relative;
	min-width: 40px;
}

#ulTable>li>ul>li {
	float: left;
	font-size: 10pt;
	border-bottom: 1px solid silver;
	vertical-align: baseline;
}

#ulTable>li>ul>li:first-child {
	width: 10%;
} /*No 열 크기*/
#ulTable>li>ul>li:first-child+li {
	width: 45%;
} /*제목 열 크기*/
#ulTable>li>ul>li:first-child+li+li {
	width: 20%;
} /*작성일 열 크기*/
#ulTable>li>ul>li:first-child+li+li+li {
	width: 15%;
} /*작성자 열 크기*/
#ulTable>li>ul>li:first-child+li+li+li+li {
	width: 10%;
} /*조회수 열 크기*/
#divPaging {
	clear: both;
	margin: 0 auto;
	width: 220px;
	height: 50px;
}

#divPaging>div {
	float: left;
	width: 30px;
	margin: 0 auto;
	text-align: center;
}

#liSearchOption {
	clear: both;
}

#liSearchOption>div {
	margin: 0 auto;
	margin-top: 30px;
	width: auto;
	height: 100px;
}

.left {
	text-align: right;
}

section {
	float: left;
	width: 70%;
	background: Blue;
}
aside {
	
	float : right ;
	background: white;
}


</style>
</head>

<body>
	<div class="container-xxl bg-white p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-grow text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->


		<!-- Navbar & Hero Start -->
		<div class="container-xxl position-relative p-0">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="" class="navbar-brand p-0">
                    <img src="img/그림1.png">
                    <!-- <img src="img/logo.png" alt="Logo"> -->
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav mx-auto py-0">
                        <a href="index.html" class="nav-item nav-link active">Home</a>
                        <a href="project.html" class="nav-item nav-link">적성검사</a>
                        <a href="service.html" class="nav-item nav-link">자격증 캘린더</a>
                        <a href="project.html" class="nav-item nav-link">주변학원찾기</a>
                        <a href="project.html" class="nav-item nav-link">커뮤니티</a>
                        
                        <div class="nav-item dropdown">
                            <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">마이페이지</a>
                            <div class="dropdown-menu m-0">
                                <a href="team.html" class="dropdown-item">캘린더</a>
                                <a href="testimonial.html" class="dropdown-item">추천 자격증</a>
                                <a href="404.html" class="dropdown-item">회원정보 수정</a>
                            </div>
                        </div>
                        
                    </div>
                    <a href="register.html" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">회원가입</a>
                    <a href="login.html" class="btn rounded-pill py-2 px-4 ms-3 d-none d-lg-block">로그인</a>
                </div>
            </nav>

            <div class="container-xxl py-5 bg-primary hero-header">
                <div class="container my-5 py-5 px-lg-5">
                    <div class="row g-5 py-5">
                        <div class="col-12 text-center">
                            <h1 class="text-white animated slideInDown">자격증 캘린더</h1>
                            <hr class="bg-white mx-auto mt-0" style="width: 90px;">

                        </div>
                    </div>
                </div>
            </div>
        </div>
		
		<!-- Navbar & Hero End -->


		<!-- Service Start -->

				<section>
					<div>
					 
					</div>
				</section>
				<aside>
					<div class="con">
						<div class="main">
							<a>자격증 리스트</a>
						</div>
						<div class="main2">
							<h5>관심 있는 자격증을 체크해 주세요.</h5>
						</div>

						<div class="main2">
							<a>&nbsp;</a>
						</div>
						<form action="#" >
						<div class="wow">
							<ul>
				
								<li>
									<label for="consen01" class="">
									<input type="checkbox" name="check"  id="consen01"  value="컴퓨터활용능력2급"/> 컴퓨터활용능력2급
									</label>
								</li>
								
								<li>
									<label for="consen02">
									<input type="checkbox" name="check"  id="consen02"  value="컴퓨터응용가공산업기사"/> 컴퓨터응용가공산업기사
									</label>
								</li>
								<li>
									<label for="consen03"> 
									<input type="checkbox" name="check" id="consen03"  value="컴퓨터활용능력1급"/> 컴퓨터활용능력1급
									</label>
								</li>
								<li>
									<label for="consen04"> 
									<input type="checkbox" name="check" id="consen04"  value="컴퓨터그래픽운용기능사"/> 컴퓨터그래픽운용기능사
									</label>
								</li>
								<li>
									<label for="consen04"> 
									<input type="checkbox" name="check" id="consen04"  value="컴퓨터시스템응용기술사"/> 컴퓨터시스템응용기술사
									</label>
								</li>
								<li>
									<label for="consen04"> 
									<input type="checkbox" name="check" id="consen04"  value="컴퓨터응용선반기능사"/> 컴퓨터응용선반기능사
									</label>
								</li>
								<li>
									<label for="consen04"> 
									<input type="checkbox" name="check" id="consen04"  value=""/>
									</label>
								</li>
								<li>
									<label for="consen04">
									<input type="checkbox" name="check" id="consen04"  value=""/>
									</label>
								</li>
	
							</ul>
							</div>
							  	<div >
									<button class="agree-btn" type="submit">완료</button>								
								</div>
							</form>
			</div>
		</aside>
		
</div>
</body>

<!-- Service End -->




<!-- Back to Top -->
<a href="#" class="btn btn-lg btn-secondary btn-lg-square back-to-top"><i
	class="bi bi-arrow-up"></i></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
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