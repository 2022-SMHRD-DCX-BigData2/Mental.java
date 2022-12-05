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
                            <h1 class="text-white animated slideInDown">추천 자격증 리스트</h1>
                            <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                             
                             
                        </div>
                    </div>
                </div>
            </div>
     

	 <div class="container">
            <div class="row table-div">
                <table class="table-setting" >
                    <thead>
                    
                    <tr>
                    <th class ="th-setting" style="width: 10%">접수순위</th>
                    <th class ="th-setting" style="width: 20%">국가기술자격전체</th>
                    <th class ="th-setting" style="width: 20%">기사자격증</th>
                    <th class ="th-setting" style="width: 20%">산업기사자격증</th>
                    <th class ="th-setting" style="width: 15%">기능사자격증</th>
                    <th class ="th-setting" style="width: 25%">서비스자격증</th>
                    </tr>
                    </thead>
                    <tbody>
                   		<tr>
                   	        <td>1</td>
                    		<td>컴퓨터활용능력1급</td>
                    		<td>정보처리기사</td>
                    		<td>전기산업기사</td>
                    		<td>지게차운전기능사</td>
                    		<td>컴퓨터활용능력1급</td>
                    	</tr>
                        <tr>
                            <td>2</td>
                    		<td>컴퓨터활용능력2급</td>
                    		<td>전기기사</td>
                    		<td>위험물산업기사</td>
                    		<td>한식조리기능사</td>
                    		<td>컴퓨터활용능력2급</td>
                    	</tr>
                   		<tr>
                            <td>3</td>
                    		<td>지게차운전기능사</td>
                    		<td>산업안전기사</td>
                    		<td>산업안전산업기사</td>
                    		<td>굴착기운전기능사</td>
                    		<td>워드프로세서</td>
                    	</tr>
                        <tr>
                       	    <td>4</td>
                    		<td>한식조리기능사</td>
                    		<td>소방설비기사(전기분야)</td>
                    		<td>사무자동화산업기사</td>
                    		<td>미용사(일반)</td>
                    		<td>직업상담사2급</td>
                    	</tr>
                    	<tr>
                       	    <td>5</td>
                    		<td>정보처리기사</td>
                    		<td>건축기사</td>
                    		<td>정보처리산업기사</td>
                    		<td>제과기능사</td>
                    		<td>사회조사분석사2급</td>
                    	</tr>
                    	<tr>
                       	    <td>6</td>
                    		<td>워드프로세서</td>
                    		<td>소방설비기사(기계분야)</td>
                    		<td>소방설비산업기사(전기분야)</td>
                    		<td>전기기능사</td>
                    		<td>임상심리사2급</td>
                    	</tr>
                    	<tr>
                       	    <td>7</td>
                    		<td>굴착기운전기능사</td>
                    		<td>건설안전기사</td>
                    		<td>공조냉동기계산업기사</td>
                    		<td>제빵기능사</td>
                    		<td>전산회계운용사3급</td>
                    	</tr>
                    	<tr>
                       	    <td>8</td>
                    		<td>전기기사</td>
                    		<td>전기공사기사</td>
                    		<td>가스산업기사</td>
                    		<td>양식조리기능사</td>
                    		<td>전산회계운용사2급</td>
                    	</tr>
                    	<tr>
                       	    <td>9</td>
                    		<td>미용사(일반)</td>
                    		<td>일반기계기사</td>
                    		<td>자동차정비산업기사</td>
                    		<td>미용사(네일)</td>
                    		<td>텔레마케팅관리사</td>
                    	</tr>
                    	<tr>
                       	    <td>10</td>
                    		<td>제과기능사</td>
                    		<td>빅데이터분석기사</td>
                    		<td>건설안전산업기사</td>
                    		<td>미용사(피부)</td>
                    		<td>비서1급</td>
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