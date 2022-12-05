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
                            <h1 class="text-white animated slideInDown">시험 합격률 조회</h1>
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
                        <tr>
                            <td>2위</td>
                    		<td>전기기사</td>
							<td>65,872</td>
                    		<td>12,760</td>
                    		<td>19.4%</td>
                    	</tr>
                   		<tr>
                   			<td>3위</td>
                    		<td>산업안전기사</td>
                    		<td>45,831</td>
                    		<td>9,765</td>
                    		<td>21.3%</td>
                    	</tr>
                        <tr>
                       	    <td>4위</td>
                    		<td>소방설비기사(전기)</td>
                    		<td>36,146</td>
                    		<td>8,086</td>
                    		<td>22.4%</td>
                    	</tr>
                    	<tr>
                       	    <td>5위</td>
                    		<td>건축기사</td>
                    		<td>28,605</td>
                    		<td>4,340</td>
                    		<td>15.2%</td>
                    	</tr>
                    	<tr>
                       	    <td>6위</td>
                    		<td>소방설비기사(기계)</td>
                    		<td>24,566</td>
                    		<td>3,620</td>
                    		<td>14.7%</td>
                    	</tr>
                    	<tr>
                       	    <td>7위</td>
                    		<td>일반기계기사</td>
                    		<td>19,837</td>
                    		<td>4,141</td>                    		
                    		<td>20.9%</td>
                    	</tr>
                    	<tr>
                       	    <td>8위</td>
                    		<td>건설안전기사</td>
                    		<td>18,833</td>
                    		<td>4,607</td>
                    		<td>24.5%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>9위</td>
                    		<td>전기공사기사</td>
                    		<td>17,009</td>
                    		<td>1,852</td>
                    		<td>10.9%</td>
                    	</tr>
                    	<tr>
                       	    <td>10위</td>
                    		<td>토목기사</td>
                    		<td>14,377</td>
                    		<td>2,837</td>
                    		<td>19.7%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>11위</td>
                    		<td>정보보안기사</td>
                    		<td>12,918</td>
                    		<td>461</td>
                    		<td>3.6%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>12위</td>
                    		<td>대기환경기사</td>
                    		<td>11,090</td>
                    		<td>2,220</td>
                    		<td>20.0%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>13위</td>
                    		<td>수질환경기사</td>
                    		<td>10,907</td>
                    		<td>1,945</td>
                    		<td>17.8%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>14위</td>
                    		<td>식품기사</td>
                    		<td>8,824</td>
                    		<td>1,938</td>
                    		<td>20.0%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>15위</td>
                    		<td>화학분석기사</td>
                    		<td>8,675</td>
                    		<td>2,714</td>
                    		<td>31.3%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>16위</td>
                    		<td>화공기사</td>
                    		<td>8,294</td>
                    		<td>2,835</td>
                    		<td>34.2%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>17위</td>
                    		<td>공조냉동기계기사</td>
                    		<td>7,688</td>
                    		<td>860</td>
                    		<td>11.2%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>18위</td>
                    		<td>산림기사</td>
                    		<td>6,328</td>
                    		<td>1,517</td>
                    		<td>24.0%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>19위</td>
                    		<td>식물보호기사</td>
                    		<td>5,903</td>
                    		<td>1,611</td>
                    		<td>27.3%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>20위</td>
                    		<td>신재생에너지발전설비기사(태양광)</td>
                    		<td>5,883</td>
                    		<td>1,361</td>
                    		<td>23.1%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>21위</td>
                    		<td>조경기사</td>
                    		<td>5,712</td>
                    		<td>561</td>
                    		<td>9.8%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>22위</td>
                    		<td>산업위생관리기사</td>
                    		<td>5,685</td>
                    		<td>1,692</td>
                    		<td>29.8%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>23위</td>
                    		<td>에너지관리기사</td>
                    		<td>5,136</td>
                    		<td>1,221</td>
                    		<td>23.8%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>24위</td>
                    		<td>가스기사</td>
                    		<td>5,117</td>
                    		<td>452</td>
                    		<td>8.8%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>25위</td>
                    		<td>품질경영기사</td>
                    		<td>5,099</td>
                    		<td>835</td>
                    		<td>16.4%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>26위</td>
                    		<td>실내건축기사</td>
                    		<td>4,436</td>
                    		<td>997</td>
                    		<td>22.5%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>27위</td>
                    		<td>정보통신기사</td>
                    		<td>3,917</td>
                    		<td>985</td>
                    		<td>25.1%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>28위</td>
                    		<td>건설재료시험기사</td>
                    		<td>3,538</td>
                    		<td>717</td>
                    		<td>20.3%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>29위</td>
                    		<td>설비보전기</td>
                    		<td>3,353</td>
                    		<td>883</td>
                    		<td>26.3%</td>                    		
                    	</tr>
                    	<tr>
                       	    <td>30위</td>
                    		<td>측량및지형공간정보기사</td>
                    		<td>3,248</td>
                    		<td>564</td>
                    		<td>17.4%</td>                    		
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