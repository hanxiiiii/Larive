<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="larive.dao.*" %>
<%

	FaqDao fdao = new FaqDao();
	fdao.fwrite_ok(request,response);

	//response.sendRedirect("../main/index.jsp");

%>