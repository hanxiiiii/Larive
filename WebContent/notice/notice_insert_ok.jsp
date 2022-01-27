<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="larive.dao.*" %>
<%@page import= "com.oreilly.servlet.MultipartRequest"%>
<%@page import= "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%


	NoticeDao ndao = new NoticeDao();
	ndao.nwrite_ok(request,response);

	//response.sendRedirect("../main/index.jsp");

%>