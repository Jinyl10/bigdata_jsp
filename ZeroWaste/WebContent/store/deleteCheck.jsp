<%@ page import="dao.StoreObj"%>
<%@ page import="dao.StoreDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Zero Waste Challenge</title>
</head>
<body>
<%@ include file = "../header.jsp" %>

<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
  </symbol>
</svg>

	<% 
		String a = request.getParameter("id");
		StoreDAO store = new StoreDAO();
		
		int code = store.delete(a);
		
		if(code == 1) {
	%>		
	
	<div class="alert alert-light d-flex align-items-center" role="alert">
  		<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
  		<div>
   	 		스토어를 삭제했습니다.        
  		</div>
  		<div class="btn-group" style="padding-left:100px">
			<a href ="../main.jsp" class="btn btn-primary">메인 페이지</a>  
			<a href ="stores.jsp" class="btn btn-primary">스토어 목록</a>
		</div>
  	</div>
			
	<%
		} 
			/* response.sendRedirect("stores.jsp"); */
	%>
<%@ include file = "../footer.jsp" %>
</body>
</html>
