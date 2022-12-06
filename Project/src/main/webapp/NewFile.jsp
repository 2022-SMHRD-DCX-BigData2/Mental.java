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
    <title>커뮤니티</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    
    <style type="text/css">
        
        .cp{
        	text-align: center;
        	font-size: 20px;
    		font-style: bold;
        }
        	
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
   
            <div class="container-xxl py-5 bg-primary hero-header">
                <div class="container my-5 py-5 px-lg-5">
                    <div class="row g-5 py-5">
                        <div class="col-12 text-center">
                            <h1 class="text-white animated slideInDown">합격후기</h1>
                            <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                             
                             
                        </div>
                    </div>
                </div>
            </div>
     

	 <div class="container">
            <div class="row table-div">
                    <p class="cp">필기 접수자 수 상위 30개 종목별 기사 시험 통계</p>
                <table class="table-setting" >
                    
                    <thead>
                    <tr>
                    <th class ="th-setting" style="width: 10%">순위</th>
                    <th class ="th-setting" style="width: 20%">종목</th>
                    <th class ="th-setting" style="width: 20%">필기 접수자 수 (A)</th>
                    <th class ="th-setting" style="width: 20%">최종 합격자 수 (B)</th>
                    <th class ="th-setting" style="width: 15%">합격률 (B/A)</th>
                    </tr>
                    </thead>
                    <tbody>
                   		<tr>
                   	        <td>1위</td>
                    		<td>정보처리기사</td>
                    		<td>74,027</td>
                    		<td>22,495</td>
                    		<td>30.4%</td>                    		
                    	</tr>
                    </tbody>
                    </table>
                    </div>














        

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