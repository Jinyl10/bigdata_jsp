<%@page import="dao.UserDAO"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String sid = request.getParameter("id");
	String spassword = request.getParameter("password");
	String sname = request.getParameter("name");
	String semail = request.getParameter("email");	

	UserDAO dao = new UserDAO();
	int code = dao.join(sid, spassword, sname, semail);
	
	if (code == 1) {
		response.sendRedirect("/member/loginMember.jsp");
	}else{
		response.sendRedirect("/member/joinMember.jsp");
	}
%>    
    
    
    