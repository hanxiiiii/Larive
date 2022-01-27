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


 html {
    width: 100%;
  }


/* HOME 마우스 올릴경우동작 */
  	#home_table{
    display:none;
    background:#03164C;
    color:white;
   
   }
   .menu_home:hover{
    font-weight: bolder;
    transition : 0s;
   }
/* RESERVE 마우스 올릴경우동작 */
    #re_table{
    display:none;
    background:#03164C;
    color:white;
   
   }
    .menu_re:hover{
    font-weight: bolder;
    transition : 0s;
   }
/* ROOM INFO 마우스 올릴경우동작 */
   #tour_table{
	 display:none;
	 background:#03164C;
     color:white;
	}
	 .menu_tour:hover{
    font-weight: bolder;
    transition : 0s;
   }
/* SURROUNDINGS 마우스 올릴경우동작 */
	#qu_table{
	 display:none;
	 background:#03164C;
     color:white;
	}
	
	 .menu_qu:hover{
    font-weight: bolder;
    transition : 0s;
   }
/* REFERENCE 마우스 올릴경우동작 */
	#member_table{
	 display:none;
	 background:#03164C;
     color:white;
	}
	 .menu_member:hover{
    font-weight: bolder;
    transition : 0s;
   }
</style>
<script>
function home_over(){
    document.getElementById("home_table").style.display = "block";
    document.getElementById("re_table").style.display = "none"; 
    document.getElementById("qu_table").style.display = "none"; 
	document.getElementById("tour_table").style.display = "none"; 
	document.getElementById("member_table").style.display = "none";
}
function re_over(){
    document.getElementById("re_table").style.display = "block";
    document.getElementById("home_table").style.display = "none"; 
    document.getElementById("qu_table").style.display = "none"; 
	document.getElementById("tour_table").style.display = "none"; 
	document.getElementById("member_table").style.display = "none";
}

function tour_over(){
	document.getElementById("qu_table").style.display = "none"; 
	document.getElementById("tour_table").style.display = "block"; 
	document.getElementById("member_table").style.display = "none";
	document.getElementById("re_table").style.display = "none";
	document.getElementById("home_table").style.display = "none"; 
}
function qu_over(){
	document.getElementById("qu_table").style.display = "block"; 
	document.getElementById("tour_table").style.display = "none"; 
	document.getElementById("member_table").style.display = "none";
	document.getElementById("re_table").style.display = "none";
	document.getElementById("home_table").style.display = "none"; 
}
function login_over(){
	document.getElementById("qu_table").style.display = "none"; 
	document.getElementById("tour_table").style.display = "none"; 
	document.getElementById("member_table").style.display = "none";
	document.getElementById("re_table").style.display = "none";
	document.getElementById("home_table").style.display = "none"; 
}
function member_over(){
	document.getElementById("qu_table").style.display = "none"; 
	document.getElementById("tour_table").style.display = "none"; 
	document.getElementById("member_table").style.display = "block";
	document.getElementById("re_table").style.display = "none";
	document.getElementById("home_table").style.display = "none"; 
}

function main_over(){
		document.getElementById("qu_table").style.display = "none"; 
		document.getElementById("tour_table").style.display = "none"; 
		document.getElementById("member_table").style.display = "none";
		document.getElementById("re_table").style.display = "none";
		document.getElementById("home_table").style.display = "none"; 
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
                           	<li onmouseover="home_over();"  class="menu_home" style="padding-left:10px;"><a href="home.jsp">HOME</a></li>                                                    
                            <li onmouseover="re_over();"class="menu_re"style="padding-left:10px;"><a href="roomIndex.jsp">RESERVE</a></li>
                            <li onmouseover="tour_over();"class="menu_tour" style="padding-left:10px;"><a href="price.html">ROOM INFO</a></li>
                            <li onmouseover="qu_over();" class="menu_qu"style="padding-left:10px;"><a href="gym.html">SURROUNDINGS</a></li>
                            <li onmouseover="member_over();"class="menu_member" style="padding-left:10px;"><a href="login.jsp">REFERENCE</a></li>
                               <div id="myNav" class="overlay">
                               <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                                 <div class="overlay-content">
                                  <a href="home.jsp">HOME</a>
					              <a href="test.jsp">RESERVE</a>
					              <a href="price.html">ROOM INFO</a>
					              <a href="gym.html">SURROUNDINGS</a>
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

 <table id="home_table">
    	<colgroup >
    		<col width="38%"/>
     		<col width="5%"/>
     		<col width="10%"/>
     		<col width="5%"/>
     		<col width=*/>
    	 </colgroup>
       <tr>
       	  <th scope="col" >&nbsp;</th>
          <th scope="col" style="text-align:center">홈메뉴1</th>
          <th scope="col" style="text-align:center">|</th>
          <th scope="col" style="text-align:center">홈메뉴3</th> 
          <th scope="col" >&nbsp;</th>
       </tr>    
 
</table>

<table id="re_table">
   		 <colgroup >
    		<col width="48%"/>
     		<col width="5%"/>
     		<col width="10%"/>
     		<col width="5%"/>
     		<col width=*/>
    	 </colgroup>
    	<tr id ="re_sub">
    	  <th scope="col" >&nbsp;</th>
          <th scope="col" style="text-align:center">예약하기</th>
          <th scope="col" style="text-align:center">|</th>
          <th scope="col" style="text-align:center">예약목록</th>
          <th scope="col" >&nbsp;</th>         
       </tr> 
    </div>
</table>

<table id="tour_table">
	 <colgroup >
    		<col width="48%"/>
     		<col width="5%"/>
     		<col width="10%"/>
     		<col width="5%"/>
     		<col width=*/>
    	</colgroup>
    <tr id="tour_sub">
    		<th scope="col" >&nbsp;</th>    
	    	<th scope="col" style="text-align:center">방 정보</th>
	    	<th scope="col" style="text-align:center">|</th>
	    	<th scope="col" style="text-align:center">찾아오는 길</th>
	    	<th scope="col" >&nbsp;</th>    
	    </tr>
</table>

<table id="qu_table">
		  <colgroup >
    		<col width="75%"/>
     		<col width="5%"/>
     		<col width="10%"/>
     		<col width="5%"/>
     		<col width=*/>
    	 </colgroup>
    	<tr id="qu_sub">
    		<th scope="col" >&nbsp;</th>    
	    	<th scope="col" style="text-align:center">공지사항</th>
	    	<th scope="col" style="text-align:center">|</th>
	    	<th scope="col" style="text-align:center">FAQ</th>
	    	<th scope="col" >&nbsp;</th>    
	    </tr>

</table>

<table id="member_table">
     <colgroup >
    		<col width="60%"/>
     		<col width="5%"/>
     		<col width="10%"/>
     		<col width="5%"/>
     		<col width=*/>
    	 </colgroup>
    	<tr id="member_sub">
    		<th scope="col" >&nbsp;</th>    
	    	<th scope="col" style="text-align:center">마이페이지</th>
	    	<th scope="col" style="text-align:center">|</th>
	    	<th scope="col" style="text-align:center">예약 확인/취소 페이지</th>
	    	<th scope="col" >&nbsp;</th>    
	    </tr>
 
</table>