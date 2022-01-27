<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="larive.dao.InreviewDao, java.util.ArrayList, larive.dto.InreviewDto"%>
<%@page import="larive.dao.*, larive.dto.*, java.io.File"%>
<%
	NoticeDao ndao = new NoticeDao();
	NoticeDto ndto = ndao.ncontent(request);
	pageContext.setAttribute("ndto", ndto);
	

	
	String Folder=request.getRealPath("/notice/img/"+ ndto.getNoticeid());  
	File targetDir = new File(Folder); 
    File[] folder_list = targetDir.listFiles();
   
    
    pageContext.setAttribute("photos", folder_list);
	
%>
<c:import url="../top.jsp"/>
<div class="mx-5">
<div class="mx-5">
<div class="mx-5">
<div class="mx-5">
<div class="mx-5">
<div class="mx-5">
<div class="mx-5">
<div class="mx-5">
<div style="width:100%;">
		<table class="table table-bordered">
		<caption style="caption-side:top">
		<div class="d-flex justify-content-between"   
		 style="align-items: center; justify-content: center; display: flex;">
		<div>
		<b >
		<a href="notice.jsp" style="letter-spacing :0.8px;color:#03164C; font-size:50px; margin-left:12px">NOTICE</a></b>
		</div>
		<c:if test ="${Memberid =='1'}">
		<div>	
		<a href="inupdate.jsp?noticeid=${ndto.noticeid}" 
				style="color:#03164C; font-size:30px; margin-right:10px">수정</a>
		</div>
		</c:if>
		</div>
		</caption>
		  <tbody>
			<tr>
				<td style="vertical-align:middle" >
					<b style="color:#03164C; font-size:25px;">
					${ndto.title}</b>
				</td>
				<td width="170px" align="center" style="vertical-align:middle">
					<b style="color:#03164C; font-size:20px;">${ndto.writeday}</b>
				</td>
				<td width="200px" align="center" style="vertical-align:middle">
					<b style="color:#03164C; font-size:20px;">관리자</b>
				</td>				
			</tr>
			<tr>
				<td colspan="3">
						<div style="min-height:500px;">${ndto.context}</div>
				</td>
			</tr>
			<c:if test="${ndto.photo != Null}" >
				<tr height="200">				
					<td colspan="3">					
					<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
					<link rel="stylesheet" href="min/lightbox.min.css">
					<script src="min/lightbox.min.js"></script>                           
               		<%
               			for (int j = 0; j < folder_list.length; j++) {
                   		folder_list[j].getParentFile().toString();
                   		String p = folder_list[j].getName();                
               		%>
               			<a href="../notice/img/${ndto.noticeid}/<%=p %>" data-lightbox="example-set"> <img src="../notice/img/${ndto.noticeid}/<%=p %>" width="200"></a>                  
               		<%
               				}
               		%>               
               		</td>
  				</tr>
			</c:if>
		  </tbody> 
		</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

<c:import url="../bottom.jsp"/>

