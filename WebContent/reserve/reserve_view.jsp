<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<%@page import="java.util.ArrayList"%>
	<%@page import="larive.dao.*" %>
	<%@page import="larive.dto.*" %>
<c:import url="../top.jsp"/>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>	

<%
	
	ReserveDao rdao=new ReserveDao();
	ReserveDto rdto = rdao.get_current(session);
	pageContext.removeAttribute("rdto");
	pageContext.setAttribute("rdto", rdto);
	//String memberid=session.getAttribute("memberid").toString();
	


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
<form method="post" action="reserve_list.jsp">
	<input type="hidden" name="Checkin" value="${rdto.memberid}">
   <input type="hidden" name="Checkin" value="${rdto.checkin}">
   <input type="hidden" name="Checkout" value="${rdto.checkout}">
   <input type="hidden" name="roomname" value="${rdto.roomname}">
   <input type="hidden" name="membercount" value="${rdto.membercount}">
   <input type="hidden" name="totalprice" value="${rdto.totalprice}">
<%
	System.out.println("li세션확인용"+session.getAttribute("Memberid"));
	

%>
<table class="table" >
<caption style="caption-side:top">
<b style="color:#03164C; font-size:50px; margin-left:15px">예약 정보</b>
</caption>
  <tbody style="color:#03164C; font-size:18px;"  align="center">
		<tr>
			<td>예약 객실 </td>
			<td>${rdto.roomname} </td>
		</tr>
		<tr>
			<td>체크인</td>
			<td>${rdto.checkin}</td>
		</tr>
		<tr>
			<td>체크아웃</td>
			<td>${rdto.checkout}</td>
		</tr>
		<tr>
			<td>총 숙박일</td>
			<td>${rdto.totalday }일</td>	
		</tr>
		<tr>
			<td>총 인원</td>
			<td>${rdto.membercount}명</td>	
		</tr>	
		<tr>
			<td>총 금액</td>
			<td>${rdto.totalprice}원</td>	
		</tr>
		<tr>	
			<td>예금은행</td>
			<td>카카오뱅크</td>
		</tr>
		<tr>
			<td>예약일</td>			
			<td>
			<fmt:parseDate var="dateFmt" pattern="yyyy-MM-dd HH:mm:ss.SSS" value="${rdto.writeday}"/>
			<fmt:formatDate var="dateTempParse" pattern="yyyy-MM-dd" value="${dateFmt }"/>
			<c:out value="${dateTempParse}" />
			</td>
		</tr>
		<tr>
			<td colspan="2"><button style=" margin-left:15px;width:100px; height:50px;">예약목록</button></td>
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