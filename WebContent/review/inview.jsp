<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="larive.dao.InreviewDao, java.util.ArrayList, larive.dto.InreviewDto"%>
<%@page import="larive.dao.MemberDao, larive.dto.MemberDto, java.io.File"%>
<%
   InreviewDao idao = new InreviewDao();
   InreviewDto idto = idao.icontent(request);
   pageContext.setAttribute("idto", idto);
   
   MemberDao mdao = new MemberDao();
   String membername = mdao.membername(idto.getMemberid());
   pageContext.setAttribute("membername", membername);
   System.out.println(idto.getId());
   
   String Folder=request.getRealPath("/inreview/img/"+ idto.getId());  
   File targetDir = new File(Folder); 
    File[] folder_list = targetDir.listFiles();
   
    
    pageContext.setAttribute("photos", folder_list);
   
%>
<c:import url="/top.jsp"/>
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
      <a href="in.jsp"style="color:#03164C; font-size:50px; margin-left:12px">REVIEW</a></b>
      </div>
      <c:if test ="${idto.memberid == Memberid || Memberid =='1'}">
      <div>
      <a href="inupdate.jsp?id=${idto.id}" 
            style="color:#03164C; font-size:30px; margin-right:10px">수정</a>
      </div>
      </c:if>
      </div>
      </caption>
        <tbody>
         <tr>
            <td style="vertical-align:middle" >
               <b style="color:#03164C; font-size:25px;">
               [${idto.roomname}.${idto.rid}] ${idto.title}</b>
            </td>
            <td width="170px" align="center" style="vertical-align:middle">
               <b style="color:#03164C; font-size:20px;">${idto.writeday}</b>
            </td>
            <td width="200px" align="center" style="vertical-align:middle">
               <b style="color:#03164C; font-size:20px;">${membername }</b>
            </td>            
         </tr>
         <tr>
            <td colspan="3" height="300">
               ${idto.context}
            </td>
         </tr>
         <c:if test="${idto.photo != Null}" >
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
               <a href="../inreview/img/${idto.id}/<%=p %>" data-lightbox="example-set"> <img src="../inreview/img/${idto.id}/<%=p %>" width="200"></a>                  
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

<c:import url="/bottom.jsp"/>
