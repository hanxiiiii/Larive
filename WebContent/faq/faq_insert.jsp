
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
   
<%@page import="larive.dao.*, java.util.ArrayList, larive.dto.*"%>

<%


%>
<script>
function check()
{
	my=document.pkc;
	if(my.title.value=="")
	{
		alert("제목을 적으세요!");
		my.title.focus();
		return false;
	}
	else if(my.context.value=="")
	{
		alert("내용를 적으세요!");
		my.content.focus();
		return false;
	}
}
</script>
<c:import url="/top.jsp"/>
	
<div class="mx-5">
<div class="mx-5">    
<div class="mx-5"> 
<form method="post" action="faq_insert_ok.jsp"  name="pkc" onsubmit="return check()">	
		<table class="table table-bordered">
		<caption style="caption-side:top">
		<b style="color:#03164C; font-size:50px; margin-left:12px">FAQ</b>
		</caption>
		  <tbody>
			<tr>
				<td colspan="2">
					<input type="text" name="title" class="form-control" id="exampleFormControlInput1" placeholder="제목을 입력해 주세요">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea class="form-control" rows="20" placeholder="내용을 입력해 주세요" name="context"></textarea>
				</td>
			</tr>
			<tr>
				<td align="center">
					<input type="submit" value="저장" class="btn btn-outline-secondary" style="width:80px;">
				</td>				
			</tr>

		  </tbody>
		
		</table>
</form>
</div>
</div>
</div>
	

<c:import url="/bottom.jsp"/>

