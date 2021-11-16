<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이 페이지</title>
</head>
<body>
<%@ include file = "/header.jsp" %>
	<div class="alert alert-secondary" role="alert">
		<h1 class="display-3">마이 페이지</h1>
	</div>
	
<%
	String a = request.getParameter("id");

	if(session.getAttribute("id") == null || !request.isRequestedSessionIdValid())	 {
		response.sendRedirect("/member/loginMember.jsp");
	}
	
	UserObj member = (new UserDAO()).getDetail(a);
	
%>

	<div class="container">
		<form name="newMember" class="form-horizontal"  action="joinCheck.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group row">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<%=member.getSid() %>
				</div>
			</div>
			<div class="form-group row ">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-10">
					<%=member.getSpassword() %>
				</div>				
			</div>
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<%=member.getSname() %>
				</div>
			</div>
			<div class="form-group row ">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-10">
					<%=member.getSemail() %>
				</div>				
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="reset" class="btn btn-primary " value="메인 페이지" onclick="location.href='/'" > 
					<input type="reset" class="btn btn-primary " value="스토어 목록" onclick="location.href='/store/stores.jsp'">
				</div>
			</div>
		</form>
	</div>



<%@ include file = "/footer.jsp" %>
</body>
</html>