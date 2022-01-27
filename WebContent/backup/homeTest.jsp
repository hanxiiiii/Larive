<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

div { 
	background: #03164C; 
	color: white; 
	text-align: center; 
	margin: 0; 
	padding: 0; 
} 
/* 홈*/
.home_main { 
	width: 20%; 
	position: relative; 
	height: 40px; 
} 
.home_menu { 
	vertical-align: middle; 
	float: left; line-height: 20px; 
	overflow: hidden; 
	position: absolute; 
	width: 100%; 
	height: 20px; 
	flex-direction: row; 
} 

.home_sub { 
	line-height: 20px; 
	width: 30%; 
	height: 20px; 
	display: none; 
	margin-right: -1px;
} 
.home_main:hover .home_sub { 
	display: inline-block; 
}

/* 예약*/
.re_main { 
	width: 20%; 
	position: relative; 
	height: 40px; 
} 
.re_menu { 
	vertical-align: middle; 
	float: left; line-height: 20px; 
	overflow: hidden; 
	position: absolute; 
	width: 100%; 
	height: 20px; 
	flex-direction: row; 
} 

.re_sub { 
	line-height: 20px; 
	width: 30%; 
	height: 20px; 
	display: none; 
	margin-right: -1px;
} 
.re_main:hover .re_sub { 
	display: inline-block; 
}





</style>
</head>
<body>
<div class="home_main"> 
	<div><a href="home.jsp">HOME</a> </div> 
		<div class="home_menu">
			<div class="home_sub"> 홈메뉴 1 </div> 
			<div class="home_sub"> 홈메뉴 2 </div> 
			<div class="home_sub"> 홈메뉴 3 </div> 
	    </div> 
</div>
<div class="re_main"> 
	<div><a href="reserve.jsp">RESERVE</a></div> 
		<div class="re_menu">
			<div class="re_sub"> 예약메뉴 1 </div> 
			<div class="re_sub"> 예약메뉴 2 </div> 
			<div class="re_sub"> 예약메뉴 3 </div> 
	    </div> 
</div>


</body>
</html>