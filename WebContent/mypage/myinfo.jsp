<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
     
<c:import url="../top.jsp"/>
<!-- 항상 top에 오는 부분 -->
<!-- 모든 문서의 내용 시작 -->
<%@page import="larive.dao.MemberDao" %>
<%@page import="larive.dto.MemberDto" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<%
 	
  if(session.getAttribute("Email") == null)
	  response.sendRedirect("../login/login.jsp");
  else
  {
    MemberDao mdao=new MemberDao();
    MemberDto mdto=mdao.myinfo(session);
    pageContext.setAttribute("mdto", mdto);
%>  
<link href="mypage.css" rel="stylesheet" type="text/css">
<style>
aa {
	text-align: center;
	font-weight:bold;
}
/* table {
	width:40%;
	border: 1px solid #444444;
    border-collapse: collapse;
    text-align: center;
} */
/* th, td {
    border: 1px solid #444444;
    padding: 10px;
    text-align: center;
} */

table.info {
  border-collapse: collapse;
  text-align: center;
  line-height: 1.5;
}

table.info thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #369;
  border-bottom: 3px solid #036;
}

table.info tbody th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #f3f6f7;
}

table.info td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}

#modifyBtn, #OutBtn {
	width:100px;
	background-color: #2C54D1;
	border: none;
	color:#fff;
	padding: 15px 0;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 15px;
	margin: 4px;
	cursor: pointer;
	border-radius: 10px;
}

#modifyBtn:hover, #OutBtn:hover{
	background-color: blue;
}
</style>
<div class="about_section_2 layout_padding"></div>
<div class="about_section_2 layout_padding"></div>
    <div class="about_section_2 layout_padding">
        <div class="container">
            <h1 class="contact_text_2"><strong>My Info</strong></h1>
        </div>
    </div>
     <div class="about_section_2 layout_padding"></div>
 <table class="info" width="500" align="center">
 	<thead>
   <tr>
    <th scope="row" style="color:black; font-weight:bold"> 이메일아이디 </th>
    <td style="color:#2C54D1; font-weight:bold"> ${mdto.email} </td>
   </tr>
   </thead>
   <thead>
   <tr>
    <th style="color:black; font-weight:bold"> 이름 </th>
    <td style="color:#2C54D1; font-weight:bold"> ${mdto.name} </td>
   </tr>
   </thead>
   <thead>
   <tr>
    <th style="color:black; font-weight:bold"> 전화번호 </th>
    <td style="color:#2C54D1; font-weight:bold"> ${mdto.phone} </td>
   </tr>
   </thead>
   <thead>
   <tr>
    <th style="color:black; font-weight:bold"> 회원가입일 </th>
    <td style="color:#2C54D1; font-weight:bold"> 
    <fmt:parseDate var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss.SSS" value="${mdto.writeday}"/>
	<fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd" value="${dateFmt }"/>
	<c:out value="${dateTempParse}" />
    </td>
   </tr>
   </thead>
 </table>
 

	<div id="container">
	<div class="button-4">
    <div class="eff-4"></div>
    <a href="myinfo_chg.jsp">정보수정</a> 
    </div>
    
    <div class="button-1">
    <div class="eff-1"></div>
    <a href="member_out.jsp"> 회원탈퇴 </a>
  	</div>
  	</div>

	 <div class="about_section_2 layout_padding"></div>
	 <div class="about_section_2 layout_padding"></div>
	 <div class="about_section_2 layout_padding"></div>
<!-- 모든 문서의 내용 끝 -->
<c:import url="../bottom.jsp"/>
<%
  }
%>









  