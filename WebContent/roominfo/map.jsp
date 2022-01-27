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
<title>Contact Us</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">	
<!-- bootstrap css -->
<link rel="stylesheet" type="text/css" href="roominfo_css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" type="text/css" href="roominfo_css/map.css">
<!-- Responsive-->
<link rel="stylesheet" href="roominfo_css/responsive.css">
<!-- fevicon -->
<link rel="icon" href="images/fevicon.png" type="image/gif" />
<!-- Scrollbar Custom CSS -->
<link rel="stylesheet" href="roominfo_css/jquery.mCustomScrollbar.min.css">
<!-- Tweaks for older IEs-->
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
<!-- owl stylesheets --> 
<link rel="stylesheet" href="roominfo_css/owl.carousel.min.css">
<link rel="stylesheet" href="roominfo_css/owl.theme.default.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
<title>로그인 화면</title>
</head>
<body>

	<!--header section start -->
		 <c:import url="../top.jsp"/>
		 <div class="main" onmouseover="main_over()">
    <!-- header section end -->
    <!-- contact section start -->
    <div class="about_section_2 layout_padding">
    <div  class="logo_img"><img src="roominfo_images/laurel-wreath-297311_1280.png"> </div>
    <br>
        <div class="container">
            <h1 class="contact_text_2"><strong>Map</strong></h1>
            <p class="client_long_text">LA RIVE 펜션의 오시는길을 소개합니다</p>
        </div>
    </div>
    <div class="contact_section ">
        <div class="row">
            <div class="col-md-6 mapbackground_bg">
                <div class="contact_bg">
                    <div class="input_main">
                       <div class="container">                        
                          <form action="/action_page.php">
                          	<!--  <h2 class="request_text">찾아오시는길</h2>-->
                          	<h1 class="jusotextmain">찾아오시는길</h1><br><br>
                      		<h1 class="jusotext">주소</h1> <h2 class="jusotext2">강원도 속초시 금호동 영랑호반길 140 </h2><br>
                      		<h1 class="jusotext">대표전화</h1> <h2 class="jusotext2">☎ 010-2893-2911</h2><br>
                      		<h1 class="jusotext">교통편</h1>
                      		<h2 class="jusotext2">자가용 이용시</h2><h2 class="jusotext2">속초방면 : 한남대교 ☞ 장충단길 ☞ 라리브 펜션</h2><br>
                      		<h1 class="jusotext">버스 이용시</h1><h2 class="jusotext2">속초시청 정류장 하차 (노선번호:144, 301, 7271)</h2><br>
                      		<h1 class="jusotext">지하철 이용시</h1><h2 class="jusotext2">경의중앙선 속초시 입구역 5번출구</h2>
                          </form>
                       </div> 
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="map-responsive">
                    <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyA0s1a7phLN0iaD6-UE7m4qP-z21pH0eSc&q=신세계+영랑호리조트" width="1000" frameborder="0" style="border:0; width: 100%; height: 650px;" allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>
        <div class="about_section_2 layout_padding"> </div>
    <!-- contact section end -->
    

 <c:import url="../bottom.jsp"/>






    <!-- Javascript files-->
    <script src="..js/jquery.min.js"></script>
    <script src="..js/popper.min.js"></script>
    <script src="..js/bootstrap.bundle.min.js"></script>
      <script src="..js/jquery-3.0.0.min.js"></script>
      <script src="..js/plugin.js"></script>
      <!-- sidebar -->
      <script src="..js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="..js/custom.js"></script>
      <!-- javascript --> 
      <script src="..js/owl.carousel.js"></script>
      <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
      <script>
      $(document).ready(function(){
      $(".fancybox").fancybox({
         openEffect: "none",
         closeEffect: "none"
         });
         
         $(".zoom").hover(function(){
         
         $(this).addClass('transition');
         }, function(){
         
         $(this).removeClass('transition');
         });
         });
         </script> 


   <script>
    function openNav() {
    document.getElementById("myNav").style.width = "100%";
    }

    function closeNav() {
   document.getElementById("myNav").style.width = "0%";
   }
</script>



     
</body>
</html>