<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<title>회원 가입</title>

</head>
<body>
	<jsp:include page="../header.jsp" />
		<div class="alert alert-info" role="alert">
			<h6 class="display-6" style="padding-left:30px">회원 가입</h6>
		</div>
		
	<%
		request.setCharacterEncoding("UTF-8");
		
		if(session.getAttribute("id") != null) 	 { //로그인 상태
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인한 상태입니다. 메인 메이지로 이동합니다.')");
			script.println("location.href='/main.jsp'");
			script.println("</script>");
			
		}
	%>
	

	<div class="container">
		<form name="newMember" class="form-horizontal"  action="joinCheck.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<input name="id" type="text" class="form-control" placeholder="아이디를 입력하세요." >
				</div>
			</div>
			<br>
			<div class="form-group  row">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-3">
					<input name="password" type="password" class="form-control" placeholder="비밀번호를 입력하세요." >
				</div>
			</div>
			<br>
			<div class="form-group  row">
				<label class="col-sm-2">비밀번호확인</label>
				<div class="col-sm-3">
					<input name="password_confirm" type="password" class="form-control" placeholder="비밀번호를 다시 입력하세요." >
				</div>
			</div>
			<br>
			<div class="form-group  row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<input name="name" type="text" class="form-control" placeholder="이름" >
				</div>
			</div>
			<br>
			<div class="form-group  row ">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-5">
					<input type="text" name="email" class="form-control" maxlength="50"  placeholder="이메일을 입력하세요." >
				</div>				
			</div>
			<br>
			<div class="form-group  row ">
				<label class="col-sm-2">전화번호</label>
				<div class="col-sm-5">
					<input type="text" name="number" class="form-control"  maxlength="50"  placeholder="전화번호를 입력하세요." >
				</div>				
			</div>
			<br>
			<div class="btn-group">
				<input type="submit" class="btn btn-primary " value="등록 " > 
				<input type="reset" class="btn btn-primary " value="취소 " onclick="reset()" >
			</div>
		</form>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>