
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
   
<%@page import="larive.dao.*, java.util.ArrayList, larive.dto.*"%>

<%
	String roomid = request.getParameter("id");
	String roomname = request.getParameter("name");
	String reverseid = request.getParameter("reverseid");
	pageContext.setAttribute("roomid", roomid);
	pageContext.setAttribute("roomname", roomname);
	pageContext.setAttribute("reverseid", reverseid);
	//System.out.println(reverseid);
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
	else if(my.tcontent.value=="")
	{
		alert("내용를 적으세요!");
		my.tcontent.focus();
		return false;
	}
}
</script>
<c:import url="/top.jsp"/>

<div class="mx-5">
<div class="mx-5">    
<div class="mx-5"> 
	<form method="post" action="ininsert_ok.jsp" 
		enctype="multipart/form-data" name="pkc" onsubmit="return check()">
		<input type="hidden" value="${Memberid}" name="userid">	
		<input type="hidden" name="roomid" value="${roomid}">
		<input type="hidden" name="roomname" value="${roomname}">
		<input type="hidden" name="reverseid" value="${reverseid}">	
		<table class="table table-bordered">
		<caption style="caption-side:top">
		<b style="color:#03164C; font-size:50px; margin-left:12px">REVIEW</b>
		</caption>
		  <tbody>
			<tr>
				<td>
					<input type="text" name="title" class="form-control" id="exampleFormControlInput1" placeholder="제목을 입력해 주세요">
				</td>
				<td width="120px" align="center" style="vertical-align:middle">
					<b style="color:#03164C; font-size:20px;">${roomname} [${roomid}]</b>
					
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<textarea class="form-control" rows="20" placeholder="내용을 입력해 주세요" name="tcontent"></textarea>
				</td>
			</tr>
			<tr>
				<td>
					<input type="file" class="form-control-file" name="photo" id="image" accept="image/*" onchange="setThumbnail(event);" multiple/> 
				</td>
				<td align="center">
					<input type="submit" value="저장" class="btn btn-outline-secondary" style="width:80px;">
				</td>				
			</tr>
			<!-- 
			<tr>
				<td colspan="2"><div id="image_container"></td>
			</tr>			
			<script> 
			function setThumbnail(event) {
				document.querySelector("div#image_container").reset();
				for (var image of event.target.files) {						
					var reader = new FileReader();
					reader.onload = function(event) {
						var img = document.createElement("img");
						img.setAttribute("src", event.target.result);						
						document.querySelector("div#image_container").appendChild(img);
					}; 
					console.log(image);
					reader.readAsDataURL(image); 
					} 
				} 
			</script>	
			-->		
	
		  </tbody>
		  </form>
		</table>
</div>
</div>
</div>


<c:import url="/bottom.jsp"/>

