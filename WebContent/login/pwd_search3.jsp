<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 <!-- 항상 top에 오는 부분 -->
<!-- 모든 문서의 내용 시작 -->
<%
    pageContext.setAttribute("chk", request.getParameter("chk"));
%>
<c:if test="${Pwd == null}">
<form method="post" action="pwd_search_ok.jsp">
   <table width="310" align="center" class="psearch_form">
    <caption> <h3> 비밀번호 찾기 </h3> </caption>
    <tr>
     <td> <input type="text" name="Email" class="text_form" placeholder="이메일아이디"></td>
    </tr>
    <tr>
     <td> <input type="text" name="name" class="text_form" placeholder="이 름"></td>
    </tr>
    <tr>
     <td> <input type="text" name="Phone" class="text_form" placeholder="전화번호"> </td>
    </tr>
    <c:if test="${chk == 1}">
    <tr>
     <td style="color:red"> 아이디,이름 혹은 전화번호가 일치하지 않습니다. </td>
    </tr>
   </c:if>
    <tr>
     <td> <input type="submit" class="submit_form" value="비밀번호찾기"> </td>
    </tr>
   </table>
 </form>
</c:if>
<c:if test="${Pwd != null}">
 <p align="center"> 당신의 비밀번호는 ${Pwd} 입니다 </p>
</c:if>
<%
    session.invalidate();
 %>
<!-- 모든 문서의 내용 끝 -->

  