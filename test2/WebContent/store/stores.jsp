<%@page import="dao.StoreDAO"%>
<%@page import="dao.StoreObj"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Zero Waste Store</title>
</head>
<body>
<%@ include file = "../header.jsp" %>
	<%
		ArrayList<StoreObj> stores = (new StoreDAO()).getList();
	%>
	<div class="alert alert-info" role="alert">
		<h3 class="display-6">스토어 목록</h3>
	</div>
	<div class="container-fluid">
		<table class="table table-hover">
	  		<thead>
			    <tr class="table-primary">
			      <th scope="col">#</th>
			      <th scope="col">store</th>
			      <th scope="col">category</th>
			      <th scope="col">site</th>
			      <th scope="col">detail</th>
			    </tr>
	  		</thead>
	  		<tbody>
	  			<% 
	  				for (StoreObj store : stores) {
	  			%>
			    <tr>
			      <th scope="row"><%=store.getSid() %></th>
			      <td><%=store.getSname() %></td>
			      <td><%=store.getScategory() %></td>
			      <td><%=store.getSweb() %></td>
			      <td><a class="btn btn-primary" href= "detailStore.jsp?id=<%= store.getSid() %>" role="button">상세 정보</a></td>
			    </tr>
			    <%} %>
			</tbody>
		</table>
	</div>
<%@ include file = "../footer.jsp" %>
</body>
</html>