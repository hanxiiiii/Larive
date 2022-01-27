<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<%@page import="larive.dao.*, java.util.ArrayList, larive.dto.*"%>
<link rel="stylesheet" type="text/css" href="faq.css">

<c:import url="/top.jsp"/>


<%
	FaqDao fdao = new FaqDao();
	ArrayList<FaqDto> flist = fdao.flist();
	pageContext.setAttribute("flist", flist);
%>


<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">
<div style="width:100%;">  
<table class="table" >
<caption style="caption-side:top">
<b style="color:#03164C; font-size:50px; margin-left:15px">FAQ</b>
</caption>
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col" width="50%">제목</th>
      <th scope="col">작성자</th>
    </tr>
  </thead>
  <tbody style="color:#03164C; font-size:18px;">
    <c:forEach var="fdto" items="${flist}">
		<tr align="right">
		
			<td align="left">${fdto.faqid } </td>
			<td align="left" class="tit"><a href="faq_view.jsp?faqid=${fdto.faqid }">${fdto.title }</a> </td>
			<td align="left">관리자</td>
		</tr>
	</c:forEach>
  </tbody>
</table>
</div>
</div>
</div>
</div>
<c:import url="/bottom.jsp"/>