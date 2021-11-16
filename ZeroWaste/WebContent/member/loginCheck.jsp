<%@page import="dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/* request.setCharacterEncoding("UTF-8"); */

	String sid = request.getParameter("id");
	String spass = request.getParameter("pass");
	
	UserDAO dao = new UserDAO();
	int code = dao.login(sid, spass);
	
	if (code == 1) {
		
		response.sendRedirect("joinMember.jsp");
	}else if ( code == 2 ) {
		response.sendRedirect("loginMember.jsp");
	}else{
		session.setAttribute("id", sid);
		response.sendRedirect("/store/stores.jsp");
		
	}
%>

