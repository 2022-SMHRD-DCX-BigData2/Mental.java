<%@page import="java.util.List"%>
<%@page import="com.domain.Board"%>
<%@page import="com.domain.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- header 불러오기 -->
<%@ include file="subHerder.jsp" %>

    <meta charset="utf-8">
    <title>합격후기</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

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
   
            <div class="container-xxl py-5 bg-primary hero-header"  style="max-height: 450px!important;">
                <div class="container my-5 py-5 px-lg-5" >
                    <div class="row g-5 py-5">
                        <div class="col-12 text-center" >
                            <h1 class="text-white animated slideInDown" style="margin-top: 50px!important">합격후기</h1>
                            <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                        </div>
                    </div>
                </div>
            </div>
     


        <!-- Service Start -->
        <!-- 이미지 게시판 리스트 시작 -->
        <div class="container">
        
		    <div class="wrap">
		      <div class="row row-cols-1 row-cols-md-4 g-4">
		        <div class="col">
		          <div class="card">
		            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ9nglP86TFHtmbcoiNQwPK-sunD2m2Kyjyw&usqp=CAU"
		                 class="card-img-top" alt="...">
		            <div class="card-body">
		              <h5 class="card-title">합격후기 제목</h5>
		              <p class="card-text">합격후기 내용을 작성합니다.</p>
		              <p>⭐⭐⭐</p>
		              <p class="mycomment">코멘트가 들어갑니다.</p>
		            </div>
		          </div>
		        </div>
		        
		        <div class="col">
		          <div class="card">
		            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ9nglP86TFHtmbcoiNQwPK-sunD2m2Kyjyw&usqp=CAU"
		                 class="card-img-top" alt="...">
		            <div class="card-body">
		              <h5 class="card-title">합격후기 제목</h5>
		              <p class="card-text">합격후기 내용을 작성합니다.</p>
		              <p>⭐⭐⭐</p>
		              <p class="mycomment">코멘트가 들어갑니다.</p>
		            </div>
		          </div>
		        </div>
		        
		        <div class="col">
		          <div class="card">
		            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ9nglP86TFHtmbcoiNQwPK-sunD2m2Kyjyw&usqp=CAU"
		                 class="card-img-top" alt="...">
		            <div class="card-body">
		              <h5 class="card-title">합격후기 제목</h5>
		              <p class="card-text">합격후기 내용을 작성합니다.</p>
		              <p>⭐⭐⭐</p>
		              <p class="mycomment">코멘트가 들어갑니다.</p>
		            </div>
		          </div>
		        </div>
		        
		        <div class="col">
		          <div class="card">
		            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQ9nglP86TFHtmbcoiNQwPK-sunD2m2Kyjyw&usqp=CAU"
		                 class="card-img-top" alt="...">
		            <div class="card-body">
		              <h5 class="card-title">합격후기 제목</h5>
		              <p class="card-text">합격후기 내용을 작성합니다.</p>
		              <p>⭐⭐⭐</p>
		              <p class="mycomment">코멘트가 들어갑니다.</p>
		            </div>
		          </div>
		        </div>
		      </div>
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