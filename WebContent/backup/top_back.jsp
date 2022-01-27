<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Main</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">   
<!-- bootstrap css -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="css/style.css">
<!-- Responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- owl stylesheets --> 
<link rel="stylesheet" href="css/owl.carousel.min.css">
<link rel="stylesheet" href="css/owl.theme.default.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
<title>Insert title here</title>
<title>객실 정보</title>
<style>
   #home_test #home_sub #home_one{
      width:120px;
   }

   #home_test{
    display:none;
   }
   #re_test{
    display:none;
   }

   
</style>
<script>
function home_over(){
   document.getElementById("home_test").style.display = "block";
   document.getElementById("re_test").style.display = "none"; 
}
function re_over(){
   document.getElementById("re_test").style.display = "block";
   document.getElementById("home_test").style.display = "none"; 
}
function main_over(){
   document.getElementById("re_test").style.display = "none"; 
   document.getElementById("home_test").style.display = "none"; 
}

</script>

</head>
<body>

<!--header section start -->
    <div class="header_section" id="div7">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <div class="logo"><a href="home.jsp"><img src="images/LA RIVE.png"></a></div>
                </div>
                <div class="col-md-9" >
                    <div class="menu_text">
                        <ul class="menu_sub">
                            <li onmouseover="home_over();"  class="menu_home" style="padding-left:10px;"><a href="home.jsp">홈</a></li>                                                    
                            <li onmouseover="re_over();"style="padding-left:10px;"><a href="roomIndex.jsp">펜션예약</a></li>
                            <li style="padding-left:10px;"><a href="price.html">주변관광</a></li>
                            <li style="padding-left:10px;"><a href="gym.html">문의</a></li>
                            <li style="padding-left:10px;"><a href="login.jsp">로그인</a></li>
                               <div id="myNav" class="overlay">
                               <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                                 <div class="overlay-content">
                                 <a href="home.jsp">HOME</a>
                                 <a href="test.jsp">RESERVE</a>
                                 <a href="price.html">ROOM INFO</a>
                                 <a href="gym.html">SURROUNDINGS</a>
                                 <a href="class.html">CLASS</a>
                                 <a href="login.jsp">REFERENCE</a>
                                 <a href="#">LOGIN</a>
                                 <a href="#">MY PAGE</a>
                               </div>
                            </div>
                         <span  style="font-size:33px;cursor:pointer; color: #ffffff;" onclick="openNav()"><img src="images/toggle.png" class="toggle_menu"></span>
                      </ul>
                      </div>                         
            </div>
            </div>
        </div>
    </div>
    <div id="home_test">
       <tr id="home_sub">
          <td id = "home_one">홈메뉴1</td>
          <td id = "home_one">홈메뉴2</td>
          <td id = "home_one">홈메뉴3</td>
          <td id = "home_one">홈메뉴4</td>         
       </tr>    
       <hr>
    </div>  
    <div id="re_test">
       <tr id="re_sub">
          <td>예약메뉴1</td>
          <td>예약메뉴2</td>
          <td>예약메뉴3</td>
          <td>예약메뉴4</td>          
       </tr>
    <hr>   
    </div>