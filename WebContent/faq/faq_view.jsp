<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="larive.dao.InreviewDao, java.util.ArrayList, larive.dto.InreviewDto"%>
<%@page import="larive.dao.*, larive.dto.*, java.io.File"%>
<%



	FaqDao fdao = new FaqDao();
	FaqDto fdto = fdao.fcontent(request);
	pageContext.setAttribute("fdto", fdto);
	
	

	
	
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
				<div class="d-flex justify-content-between" style="align-items: center; justify-content: center; display:flex;">	
						<b>
							<a href="faq.jsp" style="letter-spacing :0.8px;color:#03164C; font-size:50px; margin-left:12px">FAQ</a>
						</b>	
				</div>
			</caption>
		  <tbody>
			<tr>
				<td style="vertical-align:middle" >
					<b style="color:#03164C; font-size:25px;">
					${fdto.title }</b>
				</td>
				<td width="200px" align="center" style="vertical-align:middle">
					<b style="color:#03164C; font-size:20px;">관리자</b>
				</td>				
			</tr>
			<tr >
				<td colspan="3" >
					<div style="min-height:500px;">${fdto.context }</div>
				</td>
			</tr>
	
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

