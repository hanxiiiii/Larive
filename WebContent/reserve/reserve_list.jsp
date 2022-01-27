<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import=" java.util.ArrayList"%>
<%@page import="larive.dao.MemberDao, larive.dto.MemberDto"%>
<%@page import="larive.dao.ReserveDao" %>
<%@page import="larive.dto.ReserveDto" %>
<link rel="stylesheet" type="text/css" href="reserve_list.css">
<%
	ReserveDao rdao = new ReserveDao();
	ArrayList<ReserveDto> rlist2 = rdao.rlist2(session);
	pageContext.setAttribute("rlist2", rlist2);
%>

<script>


</script>


<c:import url="../top.jsp"/>

<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">
<div style="width:100%;">  
<table class="table">
<caption style="caption-side:top">
<b style="color:#03164C; font-size:50px; margin-left:15px">예약 확인</b>
</caption>
  <thead>
    <tr>
      <th scope="col"width="10%"></th>
      <th scope="col" width="20%">예약 객실</th>
      <th scope="col"width="40%">날짜</th>
       <th scope="col">인원수</th>
      <th scope="col">예약 상태</th>
    </tr>
  </thead>
  <tbody style="color:#03164C; font-size:18px;">
    <c:forEach var="rdto" items="${rlist2}">
		<tr align="right" style="cursor: pointer;" onClick="location.href='reserve_view2.jsp?reverseid=${rdto.reserveid }'">
			<td align="left">${rdto.reserveid } </td>
			<td align="left">${rdto.roomid } </td>
			<td align="left" >${rdto.checkin }일 &nbsp;~&nbsp;  ${rdto.checkout }일</td>
			<td align="left">${rdto.membercount }</td>
			<c:if test="${rdto.state == 0 }">
				<td align="left">입금 대기</td>
			</c:if>
			<c:if test="${rdto.state == 1 }">
				<td align="left">예약 완료</td>
			</c:if>
			<c:if test="${rdto.state == 2 }">
				<td align="left">예약 취소 신청</td>
			</c:if>
			<c:if test="${rdto.state == 3 }">
				<td align="left">입금 지연(예약 취소)</td>
			</c:if>
			<c:if test="${rdto.state == 4 }">
				<td align="left">예약 취소 승인</td>
			</c:if>
			<c:if test="${rdto.state == 5 }">
				<td align="left">숙박</td>
			</c:if>
			<c:if test="${rdto.state == 6 }">
				<td align="left">숙박</td>
			</c:if>
		</tr>
	</c:forEach>
  </tbody>
</table>
</div>
</div>
</div>
</div>

<c:import url="../bottom.jsp"/>

