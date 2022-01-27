<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="larive.dao.InreviewDao" %>
<%
	InreviewDao idao = new InreviewDao();
	idao.iwirte_ok(request,response);

	//response.sendRedirect("../main/index.jsp");

%>