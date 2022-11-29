<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
	
	<!-- header 불러오기 -->
	<%@ include file="subHerder.jsp" %>
	
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel='stylesheet' type='text/css' media='screen' href='main.css'>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

	<title>관심 자격증 검색하기</title>
	<link href="https://fonts.googleapis.com/css2?family=Gowun+Dodum&display=swap" rel="stylesheet">


    
    <style>
         .title{
          
            color: black;

            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
        }
        .select{
          max-width: 500px;
          width: 95%;

          margin: 20px auto 0px auto;
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
    
    <script>
      function register(){
        alert('등록하시겠습니까?');
      }
    </script>

</head>
<body>

  <div class="title">
    <h1>관심 자격증</h1>
  </div>
  
  <!-- 회색선 -->
    <div class="container">
      <div class="row align-items-center justify-content-center">
        <div class="col-12">
          <div class="row justify-content-center ">
            <div class="col-lg-6 text-center ">
              <hr>
            </div>
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
        <select class="form-select" id="inputGroupSelect01">
          <option selected>자격증 분류</option>
          <option value="1">국가기술자격</option>
          <option value="2">국가전문자격</option>
          <option value="3">능력검정</option>
          <option value="4">민간자격증</option>
          <option value="5">해외자격증</option>
        </select>
      </div><br>

      <div class="input-group mb2">
        <select class="form-select" id="inputGroupSelect01">
          <option selected>등록할 자격증을 선택해주세요</option>
          <option value="1">정보처리기사</option>
          <option value="2">정보처리산업기사</option>
          <option value="3">전자기기기능사</option>
          <option value="4">정보보안기사</option>
          <option value="5">빅데이터분석기사</option>
        </select>
      </div><br>
   
    <div class="btn">
      <button type="button" class="btn btn-outline-primary" onclick="register()">등록하기</button>
    </div>

  </div>

</body>
</html>