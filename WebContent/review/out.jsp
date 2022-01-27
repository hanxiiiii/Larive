<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<%@page import="larive.dao.OutreviewDao, java.util.ArrayList, larive.dto.OutreviewDto"%>
<link rel="stylesheet" type="text/css" href="review.css">
<c:import url="/top.jsp"/>


<%
	// 외부 리뷰 불러오기
	OutreviewDao mdao = new OutreviewDao();
	ArrayList<OutreviewDto> olist = mdao.olist();
	pageContext.setAttribute("olist", olist);
%>


<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">  
<table class="table" >
<caption style="caption-side:top">
<b style="color:#03164C; font-size:50px; margin-left:15px">POST</b>
</caption>
  <thead>
    <tr>
      <th scope="col"></th>
      <th scope="col">제목</th>
      <th scope="col">작성일</th>
      <th scope="col">객실</th>
    </tr>
  </thead>
  <tbody>
    <c:forEach var="odto" items="${olist}">
		<tr align="right">
			<td align="left">${odto.outReviewId } </td>
			<td align="left" class="tit"><a href="${odto.link }" target="_blank">[${odto.posttype}]&nbsp;${odto.title }</a> </td>
			<td align="left">${odto.writeday }</td>
			<td align="left">
			<c:if test="${odto.roomNum != 0}">

				${odto.roomNum }&nbsp;[${odto.roomName}]

			</c:if>			
			</td>
		</tr>
	</c:forEach>
  </tbody>
</table>
</div>
</div>
</div>

<c:import url="/bottom.jsp"/>

