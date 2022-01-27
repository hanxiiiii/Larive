<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<script>
var popupWidth = 600;
var popupHeight = 400;

var popupX = (window.screen.width/2)-(popupWidth/2);
// 만들 팝업창 width 크기의 1/2 만큼 보정값으로 빼주었음

var popupY= (window.screen.height/2)-(popupHeight/2);
// 만들 팝업창 height 크기의 1/2 만큼 보정값으로 빼주었음
function idpopup(){
    window.open('Email_search.jsp', 'popup test',
    		'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
}

function pwdpopup(){
    window.open('Pwd_search.jsp', 'popup test',
    		'status=no, height=' + popupHeight  + ', width=' + popupWidth  + ', left='+ popupX + ', top='+ popupY);
}

function logcheck(){
	var Email = document.pkc.Email;
	var Pwd = document.pkc.Pwd;
	if(Email.value == ""){			        
		alert("이메일 아이디를 입력해주세요.");
		return false;					
	}
	
	if(Pwd.value == ""){
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	
}
</script>
	<!--header section start -->
		 <c:import url="../top.jsp"/>
    <!-- header section end -->
    <!-- contact section start -->
    <!--<div class="loginwall">-->
    <div class="about_section_2 layout_padding mb-4 mt-2">
        <div class="container">
            <h1 class="contact_text_2"><strong>Login</strong></h1>
        </div>
    </div>
    <div class="mx-5 mb-5"> 
    <div class="mb-5">   
    <div class="mb-5">
    <div class="mb-5">
   	<div style="width:500px; float:none; margin:0 auto">
   	<form name="pkc" method="post" action="login_ok.jsp" onsubmit="return logcheck();">
   	<table class="table table-borderless">
   	<tr>
   	<td align="center">
   	<input type="text" class="form-control" name="Email" placeholder="Email" autocomplete="off">
   	<!-- 나중에 변경
   	<input type="Email" class="form-control" name="Email" placeholder="Email" autocomplete="off">
   	-->
   	</td>
   	</tr>
   	<tr>
   	<td align="center"><input type="password" class="form-control" name="Pwd" placeholder="Password"></td>
   	</tr>
   	<tr>
   	<td align="center"><input type="submit" class="btn btn-outline-secondary" style="width:150px;" value="Login"></td>
   	</tr>
   	<tr>
   	<td align="center"><div class="mt-5 mb-5 d-flex justify-content-between">
   		<a href ="#" onClick="javascript:idpopup()">
		아이디찾기
		</a>
		<a href ="#" onClick="javascript:pwdpopup()">
		비밀번호 찾기
		</a>
		<a href="member.jsp">
		회원가입
		</a>
   	</div>
   	</td>  	
   	</tr>   
    </table>
    </form>
    </div>
    </div>
	</div>
	</div>
	</div>
	<div class="mb-5">
	&nbsp;
	</div> 
    <!-- contact section end -->
<c:import url="../bottom.jsp"/>
