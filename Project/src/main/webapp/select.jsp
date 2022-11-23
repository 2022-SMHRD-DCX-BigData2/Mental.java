<%@page import="com.domain.Member"%>
<%@page import="java.util.List"%>
<%@page import="com.domain.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	// select.jsp에서는 값을 보내줄 필요가 없기 때문에
	// form로 controller로 보낼 필요가 없다.
	// DAO에 일할 메소드를 바로 불러서 일 시킬 수가 있다.
	
	MemberDAO dao = new MemberDAO();
	List<Member> memberList = dao.selectAll();
%>
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body style="text-align: center;">
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Select">	
						<table>
							<caption><h2>회원관리페이지</h2></caption>
							<tr>
								<td>Mem_No</td>
								<td>ID</td>
								<td>PW</td>
								<td>Name</td>
								<td>Tel</td>
								<td>Email</td>							
								<td>회원관리</td>
							</tr>
							<!-- 2.모든 회원의 이메일(email),전화번호(tel),주소(address)를 출력하시오. -->
							<%for(Member m : memberList){%>
							<tr>								
								<td><%=m.getmem_no() %></td>
								<td><%=m.getmem_id() %></td>
								<td><%=m.getmem_pw() %></td>
								<td><%=m.getmem_name() %></td>
								<td><%=m.getmem_tel() %></td>
								<td><%=m.getmem_email() %></td>
								<td><a href="DeleteCon?id=<%=m.getmem_id()%>">회원삭제</a></td>
							</tr>
							<%} %>
							
						</table>
					</nav>		
					<a href="index.jsp" class="button next scrolly">되돌아가기</a>	
			</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
	</body>
</html>

