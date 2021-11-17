<%@page import="java.io.PrintWriter"%>
<%@ page import="dao.UserObj"%>
<%@ page import="dao.UserDAO"%>
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
		<h6 class="display-6" style="padding-left:30px">마이 페이지</h6>
	</div>
	
	<%
		request.setCharacterEncoding("UTF-8");
		
		if((String)session.getAttribute("id") == null || !request.isRequestedSessionIdValid()) { //로그아웃 상태
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인이 필요한 서비스 입니다.')");
			script.println("location.href='loginMember.jsp'");
			script.println("</script>");
			
		}
	%>
	
	<%
		String a = request.getParameter((String)session.getAttribute("id"));
		
		UserObj user = (new UserDAO()).getDetail(a);
		
	%>

	<div class="container">
		<form name="newMember" class="form-horizontal"  action="joinCheck.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group row">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<%=user.getSid() %>
				</div>
			</div>
			<div class="form-group row ">
				<label class="col-sm-2">비밀번호</label>
				<div class="col-sm-10">
					<%=user.getSpassword() %>
				</div>				
			</div>
			<div class="form-group row">
				<label class="col-sm-2">성명</label>
				<div class="col-sm-3">
					<%=user.getSname() %>
				</div>
			</div>
			<div class="form-group row ">
				<label class="col-sm-2">이메일</label>
				<div class="col-sm-10">
					<%=user.getSemail() %>
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