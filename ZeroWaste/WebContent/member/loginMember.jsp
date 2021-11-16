<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<body>
<%@ include file="/header.jsp" %>
	<div class="alert alert-info" role="alert">
		<h3 class="display-6" style="padding-left:10px" >로그인</h3>
		<!--<h1 class="h3 mb-3 font-weight-normal">로그인</h1>-->
	</div>
	<div class="container-fluid" style="padding:0px 30px">
		<form class="form-signin" action="loginCheck.jsp" method="post">
	  		<div class="col-auto">
		  		<label for="inputEmail" class="form-label">아이디</label>
		  		<input type="text" id="inputEmail" name="id" class="form-control" placeholder="아이디" required autofocus>
		  	</div>
		  	<br>
		  	<div class="col-auto">
		  		<label for="inputPassword" class="form-label">비밀번호</label>
		  		<input type="password" id="inputPassword" name="pass" class="form-control" placeholder="비밀번호" required>
			</div>
			<br>
			<button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
		</form>
	</div>
<%@ include file= "/footer.jsp" %>
</body>
</html>