<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="larive.dao.ReserveDao" %>
<%@page import="larive.dto.ReserveDto" %>
<%
	
	ReserveDao rdao = new ReserveDao();
	rdao.cancel(request,response);
	
%>