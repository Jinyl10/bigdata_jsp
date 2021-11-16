<%@page import="dao.StoreDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String category = request.getParameter("category");
	
	String region = request.getParameter("region");
	String city = request.getParameter("city");
	String addrs = request.getParameter("addrs");
	String addrd = request.getParameter("addrd");
	String addr = region + " " + city + " " + addrs + " " + addrd;
	
	String website = request.getParameter("website");
	String product = request.getParameter("product");
	
	StoreDAO dao = new StoreDAO();
	int code = dao.insert(id, name, category, addr, website, product);
	
	if(code == 1) {
		response.sendRedirect("stores.jsp");
	} else {
		response.sendRedirect("addStore.jsp");
	}
	
%>