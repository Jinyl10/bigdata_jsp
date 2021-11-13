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
	<div class="alert alert-secondary" role="alert">
		<h3 class="display-6">스토어 목록</h3>
	</div>
	<div class="container-fluid">
		<table class="table table-info table-hover">
	  		<thead>
			    <tr class="table-success">
			      <th scope="col">#</th>
			      <th scope="col">store</th>
			      <th scope="col">category</th>
			      <th scope="col">site</th>
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
			    </tr>
			    <%} %>
			</tbody>
		</table>
	</div>
<%@ include file = "../footer.jsp" %>
</body>
</html>