<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="larive.dao.MemberDao" %>   
<%@page import="java.io.*" %> 
<% 
    MemberDao mdao=new MemberDao();
    int chk=mdao.login_ok(request,session); 
    System.out.println(chk);
    if(chk==0)
    {    	
   	  response.sendRedirect("/pension0503/home/home.jsp");  
    }
    else
    {   
%>
   <script>
      alert('회원정보가 일치하지 않습니다');   
      history.back();
   </script>       
<%
       
    }     
%>



