<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<%@page import="larive.dao.InreviewDao, java.util.ArrayList, larive.dto.InreviewDto"%>
<link rel="stylesheet" type="text/css" href="review.css">
<c:import url="/top.jsp"/>


<%
	InreviewDao mdao = new InreviewDao();
	ArrayList<InreviewDto> ilist = mdao.ilist();
	pageContext.setAttribute("ilist", ilist);
%>


<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">
<div style="width:100%;">  
<table class="table" >
<caption style="caption-side:top">
<b style="color:#03164C; font-size:50px; margin-left:15px">REVIEW</b>
</caption>
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col" width="50%">제목</th>
      <th scope="col">작성일</th>
       <th scope="col">작성자</th>
      <th scope="col">객실</th>
    </tr>
  </thead>
  <tbody style="color:#03164C; font-size:18px;">
    <c:forEach var="idto" items="${ilist}">
		<tr align="right">
		
			<td align="left">${idto.id } </td>
			<td align="left" class="tit"><a href="inview.jsp?id=${idto.id }">${idto.title }</a> </td>
			<td align="left">${idto.writeday }</td>
			<td align="left">${idto.memberid }</td>
			<td align="left">

				${idto.roomname}&nbsp;(${idto.rid })

			</td>
		</tr>
	</c:forEach>
  </tbody>
</table>
</div>
</div>
</div>
</div>
<c:import url="/bottom.jsp"/>