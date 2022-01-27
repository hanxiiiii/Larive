<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 

<script>
var phones=1;
var Emails=0;
function check()
{
	my=document.pkc;		
	if(my.name.value=="")
	{
		alert("이름을 적으세요!");
		my.name.focus();
		return false;
	}
	else if(my.phone.value=="")
	{
		alert("전화번호를 적으세요!");
		my.phone.focus();
		return false;
	}
	else if(my.Pwd.value=="")
	{
		alert("비밀번호를 입력하세요!");
		my.Pwd.focus();
		return false;
	}
	
	else if(my.Pwd.value != my.Pwd2.value)
	{
			alert("비빌번호가 일치하지 않습니다!");
			my.Pwd.value="";
			my.Pwd2.value="";
			return false;
	}	
	else{
		var chk=new XMLHttpRequest();
		var url="Phone_check_update.jsp?Phone="+document.pkc.phone.value;
		url = url+"&id="+document.pkc.id.value;
		chk.open("get",url,false);
		chk.send();
		//alert("test");
		phones = chk.responseText;
		//alert(phones);
		if(phones==1){
			alert("사용할수 없는 전화번호입니다.");
			return false;
		}		
	 }
	if(phones==1){		
		return false;
	}else if(phones == 0){
		alert("회원정보 수정에 성공했습니다.");
		return true;
	}	
   
}


function inputPhoneNumber(obj) { 
	
	var number = obj.value.replace(/[^0-9]/g, ""); 
	var phone = ""; 
	
	if(number.length < 4) { 
		return number; 
	} else if(number.length < 7) { 
		phone += number.substr(0, 3); 
		phone += "-"; 
		phone += number.substr(3); 
	} else if(number.length < 11) { 
		phone += number.substr(0, 3); 
		phone += "-"; 
		phone += number.substr(3, 3); 
		phone += "-"; 
		phone += number.substr(6); 
	} else { phone += number.substr(0, 3); 
		phone += "-"; 
		phone += number.substr(3, 4); 
		phone += "-"; 
		phone += number.substr(7); 
	} 
	obj.value = phone; 
}
</script>
<!-- 모든 문서의 내용 시작 --> 
  <!-- 회원가입 폼 만들기 -->
<%@page import="larive.dao.MemberDao" %>
<%@page import="larive.dto.MemberDto" %>
<%
    MemberDao mdao=new MemberDao();
    MemberDto mdto=mdao.myinfo(session);
    pageContext.setAttribute("mdto", mdto);
%>    
<c:import url="../top.jsp"/>
<link href="mypage.css" rel="stylesheet" type="text/css">
<style>
#modify{
	text-align: center;
}
#modify input{ 
	width: 150px;
	border: 3px solid #03164C; 
	background-color: #03164C; 
	color: white; 
	padding: 5px; 
	border-radius: 10px;
}

#modify input:hover{ 
	background-color: white; 
	color: #03164C; 
}

table.info {
  border-collapse: collapse;
  text-align: center;
  line-height: 1.5;
}

table.info thead th {
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  color: #369;
  border-bottom: 3px solid #036;
}

table.info tbody th {
  width: 150px;
  padding: 10px;
  font-weight: bold;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
  background: #f3f6f7;
}

table.info td {
  width: 350px;
  padding: 10px;
  vertical-align: top;
  border-bottom: 1px solid #ccc;
}
input[type=text] {
	width: 300px;
    border : 2px solid #03164C;
    border-radius : 5px;
}
input[type=password] {
	width: 300px;
    border : 2px solid #03164C;
    border-radius : 5px;
}
</style>
<div class="about_section_2 layout_padding"></div>
<div class="about_section_2 layout_padding"></div>
    <div class="about_section_2 layout_padding">
        <div class="container">
            <h1 class="contact_text_2"><strong>Modify Info</strong></h1>
        </div>
    </div>
     <div class="about_section_2 layout_padding"></div>
 <form name="pkc" method="post" action="myinfo_chg_ok.jsp"onsubmit="return check()" >
  <table class="info" width="500" align="center">
  	<thead>
   <tr>
    <th style="color:black; font-weight:bold"> 이름 </th>
    <td> <input type="text" name="name" value="${mdto.name}"> </td>
   </tr>
   </thead>
   <thead>
   <tr>
    <th style="color:black; font-weight:bold"> 전화번호 </th>
    <td> <input type="text" name="phone" onKeyup="inputPhoneNumber(this);" maxlength="13"
  			placeholder="예) 010-1234-5678" value="${mdto.phone}"> </td>
   </tr>
   </thead>
    <thead>
   <tr>
    <th style="color:black; font-weight:bold"> 비밀번호 </th>
    <td> <input class="Pwdchk"type="password" name="Pwd" value="${mdto.pwd }"> </td>
   </tr>
   </thead>
    <thead>
   <tr>
    <th style="color:black; font-weight:bold"> 비밀번호 확인 </th>
    <td> <input class="Pwdchk"type="password" name="Pwd2" value="${mdto.pwd }"> </td>
   </tr>
   </thead>
   <thead>
   <tr>
    <th style="color:black; font-weight:bold"> 이메일아이디 </th>
    <td> ${mdto.email} </td>
    <input type="hidden" name="id" value="${mdto.email}">
   </tr>
   </thead>
	</table>
	
	<div class="about_section_2 layout_padding"></div>
	
	<div id="modify">
    <input id="modify_btn" type="submit" value="정보수정">
	</div>

   
   
     <div class="about_section_2 layout_padding"></div>
	 <div class="about_section_2 layout_padding"></div>
	 <div class="about_section_2 layout_padding"></div>
	 
 </form>
<!-- 모든 문서의 내용 끝 -->
<c:import url="../bottom.jsp"/>















