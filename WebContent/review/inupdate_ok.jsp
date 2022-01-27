<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="larive.dao.InreviewDao, java.util.ArrayList, larive.dto.InreviewDto"%>

<%
	InreviewDao idao = new InreviewDao();
	idao.update(request);
	response.sendRedirect("in.jsp");
%>