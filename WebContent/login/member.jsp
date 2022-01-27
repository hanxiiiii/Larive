<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://code.jquery.com/jquery-latest.js"></script>  
<script>
var keys=0;
var Phones=0;
var Emails=0;
function check()
{
	// return true => 전송이 가능,  return false => 전송취소
	// 이름(입력유무), 아이디(길이:4자이상), 비번 (길이:4자이상, 2개의 폼이 같은지)
	// 폼태그 가져오기 => docuemnt.pkc.input이름.value
	// document.pkc.name.value.length==0	
	my=document.pkc;
	if(my.name.value=="")
	{
		alert("이름을 적으세요!");
		my.name.focus();
		return false;
	}
	else if(my.Phone.value=="")
	{
		alert("전화번호를 적으세요!");
		my.Phone.focus();
		return false;
	}
	else if(Phones==0)
	{
		alert("전화번호 중복확인을 해주세요!");
		return false;
	}
	else if(my.Email.value=="")
	{
		alert("이메일을 입력하세요!");
		my.Email.focus();
		return false;
	}
	else if(Emails==0)
	{
		alert("이메일 중복확인을 해주세요!");
		return false;
	}
	else if(keys != my.Emailkey.value)
	{	
		alert("이메일 인증번호가 일치하지 않습니다!");
		my.Emailkey.value="";
		return false;
	}	
	else if(my.Emailkey.value=="")
	{
		alert("확인번호를 입력하세요!");
		my.Emailkey.focus();
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
		alert("회원가입에 성공했습니다!");	
		return true;
	}
}
 function Email_check()
 {	
	 echeck = document.pkc.Email.value;
	 if(document.pkc.Email.value=="")
		{
			alert("이메일을 입력하세요!");
			my.Email.focus();
	}else if(echeck.indexOf("@") == -1){
		alert("올바르지 않는 이메일 형식입니다!");
		my.Email.focus();
	}else if(echeck.indexOf(".") == -1){
		alert("올바르지 않는 이메일 형식입니다!");
		my.Email.focus();
	}else if((echeck.indexOf(".")+1) == echeck.length){
		alert("올바르지 않는 이메일 형식입니다!");
		my.Email.focus();
	}else if(echeck.indexOf(".") < echeck.indexOf("@")){
		alert("올바르지 않는 이메일 형식입니다!");
		my.Email.focus();
	}else if((echeck.indexOf("@")+1) == echeck.indexOf(".")){
		alert("올바르지 않는 이메일 형식입니다!");
		my.Email.focus();
	}else{
	 
		 var chk=new XMLHttpRequest();
		 var url="Email_check.jsp?Email="+document.pkc.Email.value;
		 chk.open("get",url);
		 chk.send();
		 
		 chk.onreadystatechange=function()
		 {
			 if(chk.readyState == 4) //동작완료
				 { // 현재 문서에서 동작시킬 내용 추가
				 	if(chk.responseText.trim() == "1")// 아이디가 존재하거나 없다.
				 		{
				 			alert("이미 존재하는 이메일아이디 입니다.");
				 			document.pkc.Email.value="";
				 		}
				 	else
				 		{
				 			keys = chk.responseText.trim();
				 			Emails = 1;
				 			alert("이메일 인증번호를 전송 했습니다.");
				 			document.getElementById("Emailkey").style.display = "table-row";
				 			document.pkc.Email.readOnly="true";
				 			document.getElementById("email_c").style.display = "none";
				 		}
				 }
		 }
	}
 }
 function Phone_check()
 {	
	 my=document.pkc;
	 if(my.Phone.value==""){
		alert("전화번호를 적으세요!");
		my.Phone.focus();
		return false;
	}else if(my.Phone.value.length<12)
	{		
		alert("올바르지 않는 전화번호입니다!");
		my.Phone.focus();
		return false;
	}
	
	 
	 var chk=new XMLHttpRequest();
	 var url="Phone_check.jsp?Phone="+document.pkc.Phone.value;
	 chk.open("get",url);
	 chk.send();
	 chk.onreadystatechange=function()
	 {
		 if(chk.readyState == 4) //동작완료
			 { // 현재 문서에서 동작시킬 내용 추가
			 	if(chk.responseText.trim() == "1")// 아이디가 존재하거나 없다.
			 		{
			 			alert("이미 존재하는 번호입니다.");
			 			document.pkc.Phone.value="";
			 		}
			 	else
			 		{
			 			alert("사용 가능한 휴대폰 번호 입니다.");
			 			Phones = 1;
			 		}
			 }
	 }
 }
</script>
<c:import url="../top.jsp"/>
 <div class="about_section_2 layout_padding mb-4 mt-2">
        <div class="container">
            <h1 class="contact_text_2"><strong>Sign</strong></h1>
        </div>
 </div>
 <div class="mx-5 mb-5"> 
    <div class="mb-5">   
    <div class="mb-5">
    <div style="width: 80%; float:none; margin:0 auto" >  
   	<div class="center-block">
 <form name="pkc" method="post" action="member_ok.jsp" onsubmit="return check()">
  <table class="table" style="border-style:hidden">
  <tr style="border-style:hidden">
   <td> 
   <div class="input-group mb-3">    
   		<input class="form-control" type="text" name="name" placeholder="Name"> 
   		<div class="input-group-prepend">
   		</div>
   </div>
   </td>   
   </tr>
   <tr style="border-style:hidden">
   <td> 
   <div class="input-group mb-3">   		
   		<input class="form-control" type="text" name="Phone" placeholder="CallNumber"
   		id="phone"  pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" maxlength="13"
  		class="form-control" name="Phone" placeholder="Phone" maxlength="13">
   		<div class="input-group-prepend">
   			<button class="btn btn-secondary" 
   			Style="background-color:#03164C"
   			type="button" onclick="Phone_check()">중복확인</button>
   		</div>   		
   	<script src="phone.js"></script> 
   </div>	   		
    </td>
   </tr>
   <tr style="border-style:hidden">
   <td> 
   		<div class="input-group mb-3">   		
	   		<input class="form-control" type="email" name="Email"  placeholder="Email">
	   		<div class="input-group-prepend">
	   			<button class="btn btn-secondary" 
	   			Style="background-color:#03164C"	   			
	   			type="button" onclick="Email_check()" id="email_c">중복확인</button>
	   		</div>
  		 </div>
   </td>
   </tr>
   <tr id="Emailkey" style="display:none" >	   
   <td> 
   <div class="input-group mb-3"> 
   		<input class="form-control" type="text" name="Emailkey" placeholder="Authentication Code">
   		<div class="input-group-prepend">
   		</div>
   </div>
   <!-- <input type="button" onclick="Email_key_check()" value="인증확인" id="email_k">-->
   </td>
   </tr>
   <tr style="border-style:hidden">
   <td> 
   <div class="input-group mb-3"> 
   		<input class="form-control" type="password" name="Pwd" placeholder="Password">
   		<div class="input-group-prepend">
   		</div>
   </div>
   </td>
   </tr>
   <tr style="border-style:hidden">
   <td> 
   <div class="input-group mb-3">    
   		<input class="form-control" type="password" name="Pwd2" placeholder="Password Check"> 
   		<div class="input-group-prepend">
   		</div>
   </div>
   </td>
   </tr>
   <tr align="center">
   <td> <input class="btn btn-outline-secondary" type="submit" value="Sign up" style="width:250px; height:50px"> </td>
   </tr>
  </table>
  </form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
<c:import url="../bottom.jsp"/>  