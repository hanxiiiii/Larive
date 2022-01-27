<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>   
<%@page import="java.util.*"%>
	<%@page import="larive.dao.*" %>
	<%@page import="larive.dto.*" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	
<link rel="stylesheet" type="text/css" href="reserve_css.css">
<c:import url="../top.jsp"/>
	

<%

	ReserveDao rdao=new ReserveDao();
	ReserveDto rdto = rdao.rcontent(request);
	pageContext.setAttribute("rdto", rdto);

	Date now = new Date(); 


	//ReserveDto rdto=rdao.get_current(session);
	//pageContext.removeAttribute("rdto");
	//
	
	
%>

<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">
<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">
<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">
<div style="width:100%;">
<form method="post" action="reserve_delete.jsp">
	<input type="hidden" name="reserveid" value="${rdto.reserveid}">
	<input type="hidden" name="memberid" value="${rdto.memberid}">
   <input type="hidden" name="Checkin" value="${rdto.checkin}">
   <input type="hidden" name="Checkout" value="${rdto.checkout}">
   <input type="hidden" name="roomname" value="${rdto.roomname}">
   <input type="hidden" name="membercount" value="${rdto.membercount}">
   <input type="hidden" name="totalprice" value="${rdto.totalprice}">
<%
	System.out.println("li세션확인용"+session.getAttribute("Memberid"));


%>

<table class="table">
<caption style="caption-side:top">
<b style="color:#03164C; font-size:50px; margin-left:60px">예약 정보</b>
</caption><br>
  <tbody style="color:#03164C; font-size:18px;"  align="center">
		<tr>
			<th>예약 객실 </th>
			<td>${rdto.roomname} </td>
		</tr>
		<tr>
			<th>체크인</th>
			<td>${rdto.checkin}</td>
		</tr>
		<tr>
			<th>체크아웃</th>
			<td>${rdto.checkout}</td>
		</tr>
		<tr>
			<th>총 숙박일</th>
			<td>${rdto.totalday }일</td>	
		</tr>
		<tr>
			<th>총 인원</th>
			<td>${rdto.membercount}명</td>	
		</tr>	
		<tr>
			<th>총 금액</th>
			<td>${rdto.totalprice}원</td>	
		</tr>
		<tr>	
			<th>예금은행</th>
			<td>카카오뱅크</td>
		</tr>
		<tr>
			<th>예약일</th>
			<td>
				<fmt:parseDate var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss.SSS" value="${rdto.writeday}"/>
				<fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd" value="${dateFmt }"/>
				<c:out value="${dateTempParse}" />
			</td>
		</tr>
		
		<tr>
			<th colspan="2">	
			<input class="llist" type="button" style="width:100px; height:50px;"onclick="location.href='reserve_list.jsp'" value="예약목록">
			<c:set var="today" value="<%=new java.util.Date()%>" />	
			<c:set var="date"><fmt:formatDate value="${today}" pattern="yyyy-MM-dd" /></c:set> 
				<c:if test="${rdto.state == 0}">
					<c:if test="${date < rdto.checkin }">
						<button class="cancle_button" style=" margin-left:15px;width:100px; height:50px;"><span>예약취소</span></button>
					</c:if>
				</c:if>
			
			
				<c:if test="${date >rdto.checkout}">
					<c:if test="${rdto.state == 5}">
						<input class="rr" type="button" style="width:100px; height:50px;margin-left:15px;"onclick="location.href='/pension0503/review/ininsert.jsp?name=${rdto.roomname}&id=${rdto.roomid}&reverseid=${rdto.reserveid}'" value="리뷰작성">
					</c:if>
				</c:if>
			</th>
		</tr>
  </tbody>
  	
 
</table>






</form>  
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<c:import url="../bottom.jsp"/>