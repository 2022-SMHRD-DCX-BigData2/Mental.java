<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<!-- header 불러오기 -->
<%@ include file="subHerder.jsp" %>

<title>관심 자격증 검색하기</title>

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
    <style>
         .title{
         
          	padding-top: 10px;
          	
            color: black;

            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            
        }
        .select{
          max-width: 100%;
          width: 70%;
          margin: 50px auto 0px auto;
          box-shadow: 0px 0px 3px 0px gray;
          padding: 20px;
        }
        .btn{
          display: flex;
          flex-direction: row;
          justify-content: center;
          align-items: center;

          margin-top: 10px;
          }
         .btn > button {
            margin-right: 10px;
        } 
    </style>
    

</head>
<body>
            
  <div class="title">
  	<h1 >마이페이지에서 타이틀 작성</h1>
  </div>
  
      <div class="container-xxl py-5 bg-primary hero-header">
        <div class="container my-5 py-5 px-lg-5">
            <div class="row g-5 py-5">
                <div class="col-12 text-center">
                    <h1 class="text-white animated slideInDown">관심자격증</h1>
                    <hr class="bg-white mx-auto mt-0" style="width: 90px;">
                </div>
            </div> 
        </div>
    </div>  
  



  <div class="select">
    <div class="input-group mb1">
      <label class="input-group-text" for="inputGroupSelect01">대분류</label>
      <select class="form-select" id="inputGroupSelect01">
        <option selected>계열별 분류</option>
        <option value="1">전체</option>
        <option value="2">환경·에너지·안전</option>
        <option value="3">사회복지·소방</option>
        <option value="4">전기·전자·정보</option>
        <option value="5">건설·기계·재료</option>
        <option value="6">농림수산·식품가공</option>
        <option value="7">운전·운송</option>
        <option value="8">의복·미용·디자인</option>
        <option value="9">법률·금융·영업</option>
        <option value="10">경영·회계·사무</option>
        <option value="11">교육·지도·안내</option>
        <option value="12">보건·의료</option>
        <option value="13">취미·레저</option>
      </select>
    </div><br>

    <div class="input-group mb2">
        <label class="input-group-text" for="inputGroupSelect01">중분류</label>
        <select class="form-select" id="inputGroupSelect02">
          <option selected>자격증 분류</option>
          <option value="1">국가기술자격</option>
          <option value="2">국가전문자격</option>
          <option value="3">능력검정</option>
          <option value="4">민간자격증</option>
          <option value="5">해외자격증</option>
        </select>
      </div><br>

      <div class="input-group mb2">
        <select class="form-select" id="inputGroupSelect03">
          <option selected>등록할 자격증을 선택해주세요</option>
          <option value="정보처리기사">정보처리기사</option>
          <option value="정보처리산업기사">정보처리산업기사</option>
          <option value="전자기기기능사">전자기기기능사</option>
          <option value="정보보안기사">정보보안기사</option>
          <option value="빅데이터분석기사">빅데이터분석기사</option>
        </select>
      </div><br>
   
    <div class="btn">
      <button type="button" class="btn btn-outline-primary" onclick="register()">등록하기</button>
    </div>
  
  
    <div id="com">
        <!-- 등록버튼 클릭시 정보가  들어가는 공간 -->
    </div>


    <!-- 등록버튼 클릭시 밑에 추가되는 동적 jQuery -->
	<script src="/Project/jquery-3.6.1.min.js"></script>
    <script>
        function register(){
          alert('등록하시겠습니까?');
        }

          $('.btn.btn-outline-primary').click(function(){
              let com = $('#inputGroupSelect03').val() 
              let com2 = "<span>"+com+"<span><button class='removeCom'>삭제</button><br>"
              $('#com').append(com2)
              $('input').val('') 
          })
  
          $(document).on('click','.removeCom', function(){
              $('#com').empty()
          })
        </script>
        
</body>
</html>