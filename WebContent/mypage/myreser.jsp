<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
    
<style>
#third {
   width:1100px;
   height:400px;	
/*    background:red;	 */ 
   margin:auto;	 		
}
</style>  
<c:import url="../top.jsp"/>
<div id="third"> <!-- 항상 top에 오는 부분 -->
<!-- 모든 문서의 내용 시작 -->
 <!-- 모든 예약정보를 다 가져와서 출력 -->
<%@page import="larive.dao.ReserveDao" %>
<%@page import="larive.dto.ReserveDto" %>
<%@page import="java.util.ArrayList" %>
<%
if(session.getAttribute("Memberid") == null)
	  response.sendRedirect("../login/login.jsp");
else
{
    ReserveDao rdao=new ReserveDao();
    ArrayList<ReserveDto> rlist=rdao.myreser(session);
    pageContext.setAttribute("rlist", rlist);
 
%>
  <table width="800" align="center">
   <caption> <h3> ${name}님의 예약정보</h3> </caption>
   <tr align="center">
    <td> 방 이름 </td>
    <td> 입실일 </td>
    <td> 퇴실일 </td>
    <td> 숙박인원 </td>
    <td> 예약일 </td>
    <td> 결제금액 </td>
    <td> 상 태 </td>
    <td> 상태변경 </td>
   </tr>
  <c:forEach var="rdto" items="${rlist}">
   <tr align="center">
    <td> ${rdto.roomname} </td>
    <td> ${rdto.checkin} </td>
    <td> ${rdto.checkout} </td>
    <td> ${rdto.membercount}명 </td>
    <td> ${rdto.writeday} </td>
    <td> <fmt:formatNumber value="${rdto.totalprice}"/>원 </td>
    <c:if test="${rdto.state ==0}">
    <td> 입금대기 </td>
    <td> <a href="cancel.jsp?reserveid=${rdto.reserveid}"> 취소 신청  </a></td>
   </c:if>
   <c:if test="${rdto.state ==1}">
    <td> 예약완료 </td>
    <td> <a href="cancel.jsp?reserveid=${rdto.reserveid}"> 취소 신청  </a></td>
   </c:if>
   <c:if test="${rdto.state ==2}">
    <td> 예약 취소 신청 </td>
   </c:if>
   <c:if test="${rdto.state ==3}">
    <td> 입금지연 (예약 취소 예정) </td>
   </c:if>
   <c:if test="${rdto.state ==4}">
    <td> 예약 취소 승인 완료 </td>
   </c:if>
   </tr>
  </c:forEach>
  </table>
<!-- 모든 문서의 내용 끝 -->
</div>
<c:import url="../bottom.jsp"/>

<%
}
%>





