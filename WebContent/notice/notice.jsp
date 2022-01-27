<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<%@page import="larive.dao.*, java.util.ArrayList, larive.dto.*"%>
<link rel="stylesheet" type="text/css" href="notice.css">

<c:import url="/top.jsp"/>


<%
	NoticeDao ndao = new NoticeDao();
	ArrayList<NoticeDto> nlist = ndao.nlist();
	pageContext.setAttribute("nlist", nlist);
%>


<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">
<div style="width:100%;">  
<table class="table" >
<caption style="caption-side:top">
<b style="letter-spacing :0.8px;color:#03164C; font-size:50px; margin-left:15px">NOTICE</b>
</caption>
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col" width="50%">제목</th>
      <th scope="col">작성일</th>
       <th scope="col">작성자</th>
    </tr>
  </thead>
  <tbody style="color:#03164C; font-size:18px;">
    <c:forEach var="ndto" items="${nlist}">
		<tr align="right">
		
			<td align="left">${ndto.noticeid } </td>
			<td align="left"  class="tit"><a href="notice_view.jsp?noticeid=${ndto.noticeid }">${ndto.title }</a> </td>
			<td align="left">${ndto.writeday }</td>
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