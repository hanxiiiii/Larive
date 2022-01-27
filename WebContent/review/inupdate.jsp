
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<%@page import="larive.dao.OutreviewDao, java.util.ArrayList, larive.dto.OutreviewDto"%>

<script type="text/javascript">
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
</script>
<%@page import="larive.dao.InreviewDao, java.util.ArrayList, larive.dto.InreviewDto"%>

<c:import url="../top.jsp"/>
<%
	InreviewDao idao = new InreviewDao();
	InreviewDto idto = idao.icontent(request);
	pageContext.setAttribute("idto", idto);
%>
<div class="mx-5">
<div class="mx-5">    
<div class="mx-5"> 
	<form method="post" action="inupdate_ok.jsp?id=${idto.id}" enctype="multipart/form-data">
	<input type="hidden" name="id" value="${idto.id}">
		<table class="table table-bordered">
		<caption style="caption-side:top">
		<b style="color:#03164C; font-size:50px; margin-left:12px">REVIEW</b>
		</caption>
		  <tbody>
			<tr>
				<td>
					<input type="text" name="title" class="form-control" id="exampleFormControlInput1" placeholder="제목을 입력해 주세요"  value="${idto.title}">
				</td>
				<td width="170px" align="center" style="vertical-align:middle">
					<b style="color:#03164C; font-size:20px;">${idto.writeday}</b>
				</td>
				<td width="120px" align="center" style="vertical-align:middle">
					<b style="color:#03164C; font-size:20px;">${idto.rid} [${idto.roomname}]</b>
				</td>				
			</tr>
			<tr>
				<td colspan="3">
					<textarea class="form-control" rows="20" placeholder="내용을 입력해 주세요" name="tcontent">${idto.context}</textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="file" class="form-control-file" name="photo" id="image" accept="image/*" onchange="setThumbnail(event);" multiple/> 
					</div> 
				</td>
				<td align="center">
					<input type="submit" value="수정" class="btn btn-outline-secondary" style="width:80px;">
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

