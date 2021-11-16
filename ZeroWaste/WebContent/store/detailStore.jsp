<%@page import="dao.StoreDAO"%>
<%@page import="dao.StoreObj"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail of the Store</title>
</head>
<body>
<%@ include file = "../header.jsp" %>
	<div class="alert alert-info" role="alert">
		<h3 class="display-6" style="padding-left:10px" >스토어 상세 정보</h3>
	</div>
	
	<%
		String a = request.getParameter("id");
	
		StoreObj store = (new StoreDAO()).getDetail(a);
	%>

	<div class="container">
		<form name="newStore" class="form-horizontal"  action="addCheck.jsp" method="post" onsubmit="return checkForm()">
			<div class="form-group  row">
				<label class="col-sm-2 ">아이디</label>
				<div class="col-sm-3">
					<%=store.getSid() %>
				</div>
			</div>
			<br>
			<div class="form-group  row">
				<label class="col-sm-2">가게명</label>
				<div class="col-sm-3">
					<%=store.getSname() %>
				</div>
			</div>
			<br>
			<div class="form-group  row">
				<label class="col-sm-2">카테고리</label>
				<div class="col-sm-10">
					<%=store.getScategory() %>
				</div>
			</div>
			<br>
			<div class="form-group row">
				<label class="col-sm-2">웹 주소</label>
				<div class="col-sm-4  ">
					<%=store.getSweb() %>
				</div>
			</div>
			<br>
			<div class="form-group  row ">
				<label class="col-sm-2">스토어 주소</label>
				<div class="col-sm-10">
					<%=store.getSaddr() %>
				</div>				
			</div>
			<br>
			<div class="form-group  row">
				<label class="col-sm-2">상품</label>
				<div class="col-sm-3">
					<%=store.getSproduct() %>
				</div>
			</div>
			<hr>
			<div class="btn-group">
				<%-- <a href = "updateStore.jsp?id=<%= store.getSid() %>" class="btn btn-primary">수정</a>   --%>
				<a href="stores.jsp" class="btn btn-primary">목록</a>
				<a href = "deleteCheck.jsp?id=<%=store.getSid() %>" class="btn btn-primary">삭제</a>  
			</div>
			
			<!-- div class="form-group  row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<a type="submit" href = "updateStore.jsp" class="btn btn-primary" value="수정">수정</a>  
					<a type="reset" href="stores.jsp" class="btn btn-primary" value="목록 " >목록</a>
				</div>
			</div> -->
		</form>
	</div>
	
<%@ include file = "../footer.jsp" %>
</body>
</html>