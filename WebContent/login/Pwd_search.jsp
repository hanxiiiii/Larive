<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<script src="http://code.jquery.com/jquery-latest.js"></script>

<!-- bootstrap css -->
<link rel="stylesheet" type="text/css" href="/pension0503/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="/pension0503/css/style.css">
<script>
window.onload=function(){
	window.resizeTo(600,450); // 웹페이지의 크기를 가로 1280 , 세로 800 으로 고정(확장 및 축소)
}

function logcheck(){
	var name = document.pkc.name;
	var Phone = document.pkc.Phone;
	var Email = document.pkc.Email;
	if(Email.value == ""){			        
		alert("이메일을 입력해주세요.");
		return false;					
	}	
	if(name.value == ""){			        
		alert("이름을 입력해주세요.");
		return false;					
	}
	if(Phone.value == ""){
		alert("전화번호를 입력해주세요.");
		return false;
	}
}
</script>




<div class="about_section_2 layout_padding mb-4 mt-2">
        <div class="container">
            <h1 class="contact_text_2"><strong>LARIVE</strong></h1>
        </div>
</div> 
<div class="mb-5"> 
    <div class="mb-5">   
   	<div style="width:500px; float:none; margin:0 auto">
   	<form name="pkc" method="post" action="pwd_search_ok.jsp" onsubmit="return logcheck();">
   	<table class="table table-borderless">   	
   	<tr>
   	<td align="center">   	
	   	<!-- 모든 문서의 내용 시작 -->
	<c:if test="${Pwd == null}"> <!--세션 변수가 없다면  -->
	 <!--폼이 나타타는 경우 : 1. login.jsp에서 아이디찾기 클릭 (chk값 없음)
	 				 2. userid_search_ok에서 오는 경우 (chk값 1)   -->
	<%
		pageContext.setAttribute("chk", request.getParameter("chk"));
		System.out.println("test");
		if(request.getParameter("chk") != null){
		if(request.getParameter("chk").equals("1")){
			System.out.println("test");
			out.println("<script>alert('일치하는 회원정보가 존재하지 않습니다.'); history.go(-1);</script>");
        	out.flush();
		}
		}
	%>
	
		
    <input type="email" name="Email" class="form-control" placeholder="Email">
	</td>
	<tr>
	<tr>
   	<td>
   	<input type="text" class="form-control" name="name" placeholder="name" autocomplete="off">
   	</td>
   	</tr>
   	<tr>
   	<td align="center">
   	<input type="text" id="phone"  
   	pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}"
  	maxlength="13"
  	class="form-control" name="Phone" placeholder="Phone" maxlength="13"></td>
   	<script src="phone.js"></script>   	
   	</tr>
   	<tr>
   	<td align="center"><input type="submit" class="btn btn-outline-secondary" style="width:150px;" value="비밀번호찾기"></td>
   	</tr> 
    </table>
    </form>
    </div>
    </div>
	</div>
 </c:if>
 <c:if test="${Pwd != null}"> <!--세션변수가 있다면  -->
		비밀번호는 ${Pwd} 입니다.</td>
  </tr>
  <tr style="height:150px;">
  <td align="center" style="vertical-align:bottom;">
  <input type='button' class="btn btn-outline-secondary" onclick='self.close();' value='닫기'/></td>
  </tr>
  </table>
 </c:if>
<!-- 모든 문서의 내용 끝  -->
<%
    session.invalidate();
 %>
