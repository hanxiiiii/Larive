<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="larive.dao.MemberDao" %>    
<%
     MemberDao mdao=new MemberDao();
     mdao.myinfo_chg_ok(request,session,response);
%> 