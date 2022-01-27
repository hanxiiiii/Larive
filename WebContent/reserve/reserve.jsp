<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
	<% request.setCharacterEncoding("UTF-8");%>
	<%@page import="larive.dao.*" %>
	<%@page import="larive.dto.*" %>

	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8"> 

<title>예약</title>
</head>
<body>

<c:import url="../top.jsp"/>




<!-- 예약 입력화면 불러오기 -->
<c:import url="li.jsp"/>

<c:import url="../bottom.jsp"/>
