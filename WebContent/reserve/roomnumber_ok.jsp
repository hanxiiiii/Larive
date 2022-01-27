<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="larive.dao.MemberDao" %>
<%
	MemberDao rdao=new MemberDao();
	rdao.roomnumber_ok(request,out);
%>