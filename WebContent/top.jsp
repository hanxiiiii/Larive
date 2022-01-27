<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Larive</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">   
<!-- bootstrap css -->
<link rel="stylesheet" type="text/css" href="/pension0503/css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="/pension0503/css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="/pension0503/css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="/pension0503/images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="/pension0503/css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- owl stylesheets --> 
<link rel="stylesheet" href="/pension0503/css/owl.carousel.min.css">
<link rel="stylesheet" href="/pension0503/css/owl.theme.default.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">

<title>Insert title here</title>
<style>
.toggle_menu{
   vertical-align: middle; 
}
@media screen and (max-width: 1500px){
.topMenuLi { 
    display: none;
} 
}
#topMenu { 
   background-color: #03164C; 
   height: 80px;
} 
#topMenu ul { /* 메인 메뉴 안의 ul을 설정함: 상위메뉴의 ul+하위 메뉴의 ul */ 
   list-style-type: none; 
   margin: 0px; 
   padding: 0px; 
   
   
} #topMenu ul li { /* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */ 
       
   float: left; 
   line-height: 80px; 
   vertical-align: middle; 
   text-align: center; 
   
   
} 
.menuLink, .submenuLink { /* 상위 메뉴와 하위 메뉴의 a 태그에 공통으로 설정할 스타일 */ 
   text-decoration: none; 
   display: block; 
   width: 185px; 
   font-size: 12px; 
   font-weight: bold; 
} 
.menuLink { /* 상위 메뉴의 글씨색을 흰색으로 설정 */ 
   color: white; 
} 
.topMenuLi:hover .menuLink { /* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */ 
   color:    #FFD700; 
   background-color: #4d4d4d; 
} 
.topMenuLi2:hover .menuLink { /* 상위 메뉴의 li에 마우스오버 되었을 때 스타일 설정 */ 
   color:    #FFD700; 
   background-color: #4d4d4d; 
} 
.longLink { /* 좀 더 긴 메뉴 스타일 설정 */ 
   width: 380px;    
} 
.submenuLink { /* 하위 메뉴의 a 태그 스타일 설정 */ 
   color: white; 
   background-color: #00000050; 
   margin-right: -1px; /* [변경] 위 칸의 하단 테두리와 아래칸의 상단 테두리가 겹쳐지도록 설덩 */ 
} 
.submenu { /* 하위 메뉴 스타일 설정 */
   display:none; 
   position: absolute; 
   height: 0px; 
   overflow: hidden; 
   transition: height .2s; 
   -webkit-transition: height .2s; 
   -moz-transition: height .2s; 
   -o-transition: height .2s; 
   width: 800px; /* [변경] 가로 드랍다운 메뉴의 넓이 */ 
   position:absolute;z-index:2;
} 
.submenu li { 
   display: block; /* [변경] 가로로 펼쳐지도록 설정 */ 
} 
.topMenuLi:hover .submenu { /* 상위 메뉴에 마우스 모버한 경우 그 안의 하위 메뉴 스타일 설정 */ 
   display:block;
   height: 84px; /* [변경] 높이를 32px로 설정 */ 
} 
 
.submenuLink:hover { /* 하위 메뉴의 a 태그의 마우스 오버 스타일 설정 */ 
   color: #000080; 
   background-color: #dddddd; 
}
</style>

</head>
<body>
<div  id="topMenu" style="border:1px solid black;"  > 
   <ul> 
      <li class="topMenuLi2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </li>
      <li><a href="/pension0503/home/home.jsp""><img src="/pension0503/images/LA RIVE.png"></a></li>
      <li class="topMenuLi">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
      </li> 
      <li class="topMenuLi">|</li> 
      
      <li class="topMenuLi">
         <a class="menuLink" href="/pension0503/reserve/reserve.jsp"">RESERVE</a> 
      </li> 
      <li class="topMenuLi">|</li> 
      <li class="topMenuLi">&nbsp;&nbsp;&nbsp;&nbsp;
      </li> 
      <li class="topMenuLi"> <a class="menuLink" href="/pension0503/roominfo/roomIndex.jsp">ROOM</a> 
         <ul class="submenu"> 
            <li><a href="/pension0503/roominfo/roomIndex.jsp" class="submenuLink">방 정보</a></li> 
            <li><a href="/pension0503/roominfo/map.jsp" class="submenuLink">찾아오는 길</a></li> 
         </ul>
      </li> 
      <li class="topMenuLi">|</li> 
     <li class="topMenuLi">&nbsp;&nbsp;&nbsp;&nbsp;
     </li> 
     <li class="topMenuLi"> <a class="menuLink" href="/pension0503/review/in.jsp">COMMUNITY</a> 
         <ul class="submenu"> 
            <li><a href="/pension0503/review/in.jsp" class="submenuLink">리뷰</a></li> 
            <li><a href="/pension0503/review/out.jsp" class="submenuLink">포스트</a></li> 
         </ul>
      </li> 
      <li class="topMenuLi" class="topMenuLi">&nbsp;&nbsp;&nbsp;&nbsp;
      </li> 
      <li class="topMenuLi">|</li> 
      <li class="topMenuLi">&nbsp;&nbsp;&nbsp;&nbsp;
      </li> 
      <li class="topMenuLi"> <a class="menuLink" href="/pension0503/notice/notice.jsp">NOTICE</a> 
         <ul class="submenu"> 
            <li><a href="/pension0503/notice/notice.jsp" class="submenuLink">공지사항</a></li> 
            <li><a href="/pension0503/faq/faq.jsp" class="submenuLink">FAQ</a></li> 
         </ul>
      </li> 
      <li class="topMenuLi">&nbsp;&nbsp;&nbsp;&nbsp;
      </li> 
      <li class="topMenuLi">|</li>
      <li class="topMenuLi">&nbsp;&nbsp;&nbsp;&nbsp;
      </li>
      <c:if test="${Email != null}">
      <li class="topMenuLi"> <a class="menuLink" href="/pension0503/mypage/myinfo.jsp">${name} 님</a>       
         <ul class="submenu"> 
            <li><a href="/pension0503/mypage/myinfo.jsp" class="submenuLink">내 정보</a></li>            
            <li><a href="/pension0503/reserve/reserve_list.jsp" class="submenuLink">예약확인/취소페이지</a></li> 
        </ul>
      </li>
      </c:if> 
      <c:if test="${Email == null}">
	      <li class="topMenuLi"> <a class="menuLink" href="/pension0503/login/login.jsp">MY PAGE</a>
	      </li>
      </c:if> 
      <li class="topMenuLi">&nbsp;&nbsp;&nbsp;&nbsp;
      </li> 
      <li class="topMenuLi">|</li> 
      <li class="topMenuLi">&nbsp;&nbsp;&nbsp;&nbsp;
      </li> 
      <li class="topMenuLi"> 
         <c:if test="${Email == null}">
            <a class="menuLink" href="/pension0503/login/login.jsp">LOGIN</a>
         </c:if> 
         <c:if test="${Email != null}">  
            <a class="menuLink" href="/pension0503/login/logout.jsp">LOGOUT</a>
         </c:if>
      </li> 
      <li class="topMenuLi">&nbsp;&nbsp;&nbsp;&nbsp;
      </li> 
      <li class="topMenuLi">|</li> 
      <li class="topMenuLi">&nbsp;&nbsp;&nbsp;&nbsp;
      </li> 
          
        <div id="myNav" class="overlay">
        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
         <div class="overlay-content">
            <a href="/pension0503/home/home.jsp">HOME</a>
            <a href="/pension0503/reserve/reserve.jsp">RESERVE</a>
            <a href="/pension0503/roominfo/roomIndex.jsp">ROOM</a>
            <a href="/pension0503/review/in.jsp">COMMUNITY</a>
            <a href="/pension0503/notice/notice.jsp">NOTICE</a>
            <a href="/pension0503/mypage/myinfo.jsp">MY PAGE</a>
            <c:if test="${Email == null}">
               <a href="/pension0503/login/login.jsp">LOGIN</a>
            </c:if>
            <c:if test="${Email != null}">  
            <a href="/pension0503/login/logout.jsp">LOGOUT</a> 
          </c:if>       
        </div>       
        </div>      
      
      
         
   </ul> 
    <img  onclick="openNav()" style="cursor:pointer;"  src="/pension0503/images/toggle.png" class="toggle_menu">
</div>