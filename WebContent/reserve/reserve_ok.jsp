<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="larive.dao.ReserveDao" %>
<%
	//reserve_next.jsp에 폼에 입력된 값을 reserve.java로 보냄
	ReserveDao rdao = new ReserveDao();
	rdao.reserve_ok(request,session,response);
	
%>