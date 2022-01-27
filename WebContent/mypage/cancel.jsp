<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="larive.dao.ReserveDao" %>    
<%
    // state=1로 바꾸면 끝
    ReserveDao rdao=new ReserveDao();
    rdao.cancel(request,response);
%>