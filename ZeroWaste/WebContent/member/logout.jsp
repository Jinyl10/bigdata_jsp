<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
<%@ include file="/header.jsp" %>
	<div class="alert alert-info" role="alert">
		<h3 class="display-6" style="padding-left:10px" >로그아웃</h3>
	</div>

<%
	session.invalidate();
	
/*  String str ="<p align = center><br>로그아웃 완료<br><br>";
/	str += "<a href='login.jsp'><button>로그인하기</button></a></p>";	
	out.print(str); */
%>

	<div class="alert alert-light d-flex align-items-center" role="alert">
  		<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  		<div>
			로그아웃 되었습니다.
  		</div>
  		<br>
		<div class="btn-group" style="padding-left:100px">
			<a href ="../index.html" class="btn btn-primary">메인 페이지</a>  
			<a href ="loginMember.jsp" class="btn btn-primary">로그인</a>
		</div>
	</div>
<%@ include file= "/footer.jsp" %>
</body>
</html>