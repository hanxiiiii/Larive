 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<link href="slide.css" rel="stylesheet" type="text/css">
  <c:import url="../top.jsp"/>
<ul class="slides">
    <input type="radio" name="radio-btn" id="img-1" checked />
    <li class="slide-container">
      <div class="slide">
         <img src="homephotos/homephoto6.png" />
        </div>
        <div class="slide">
      <div class="nav">
         <label for="img-6" class="prev">&#x2039;</label>
         <label for="img-2" class="next">&#x203a;</label>
      </div>
      </div>
    </li>

    <input type="radio" name="radio-btn" id="img-2" />
    <li class="slide-container">
        <div class="slide">
          <img src="homephotos/homephoto5.png" />
        </div>
        <div class="slide">
      <div class="nav">
         <label for="img-1" class="prev">&#x2039;</label>
         <label for="img-3" class="next">&#x203a;</label>
      </div>
      </div>
    </li>

    <input type="radio" name="radio-btn" id="img-3" />
    <li class="slide-container">
        <div class="slide">
          <img src="homephotos/homephoto4.png" />
        </div>
        <div class="slide">
      <div class="nav">
         <label for="img-2" class="prev">&#x2039;</label>
         <label for="img-4" class="next">&#x203a;</label>
      </div>
      </div>
    </li>

    <input type="radio" name="radio-btn" id="img-4" />
    <li class="slide-container">
        <div class="slide">
          <img src="homephotos/homephoto3.png" />
        </div>
        <div class="slide">
      <div class="nav">
         <label for="img-3" class="prev">&#x2039;</label>
         <label for="img-5" class="next">&#x203a;</label>
      </div>
      </div>
    </li>

    <input type="radio" name="radio-btn" id="img-5" />
    <li class="slide-container">
        <div class="slide">
          <img src="homephotos/homephoto2.png" />
        </div>
        <div class="slide">
      <div class="nav">
         <label for="img-4" class="prev">&#x2039;</label>
         <label for="img-6" class="next">&#x203a;</label>
      </div>
      </div>
    </li>

    <input type="radio" name="radio-btn" id="img-1" />
    <li class="slide-container">
        <div class="slide">
          <img src="homephotos/homephoto1.png" />
        </div>
        <div class="slide">
      <div class="nav">
         <label for="img-5" class="prev">&#x2039;</label>
         <label for="img-1" class="next">&#x203a;</label>
      </div>
      </div>
    </li>

    <li class="nav-dots">
      <label for="img-1" class="nav-dot" id="img-dot-1"></label>
      <label for="img-2" class="nav-dot" id="img-dot-2"></label>
      <label for="img-3" class="nav-dot" id="img-dot-3"></label>
      <label for="img-4" class="nav-dot" id="img-dot-4"></label>
      <label for="img-5" class="nav-dot" id="img-dot-5"></label>
      <label for="img-6" class="nav-dot" id="img-dot-6"></label>
    </li>
</ul>

<div style="width: 40%; height:450px; float: left; margin:100px 100px 100px 100px;">
<img src="homephotos/bottomhomephoto1.png" />
</div>
<div style="width: 40%; height:450px; float: right; margin:170px 120px 100px 0px; text-align: center;">
<span style = " font-size:3.0em;  color: #0B0B61; font-family: latin;">
M O D E R N I S H    S T Y L E<br>- <strong>L A R I V E </strong> P L A C E<br></span>
<span style = " font-size:1.2em;  color: black; font-family: latin;">
MELBOURNE'S SOPHISTICATED INNER SOUTH-EAST<br><br><br>
</span>
<span style = " font-size:1.2em;  color: black; font-family: nanum;">
???????????? ????????? ????????? ??????<br>
?????? ??? ????????? ?????? ????????? ????????? ????????? ???????????? ???<br>
???????????? ???????????? ???????????? ???????????? ????????? ?????? ??? ?????????<br>
????????? ?????? ????????? ????????? ???????????????
</span>
</div>


<div style="width: 40%; height:450px; float: left; margin:240px 100px 100px 120px; text-align: center;">
<span style = " font-size:3.0em;  color: #0B0B61; font-family: latin;">
<strong>M O D E R N I S H<br>E X T E R I O R<br></strong></span>
<span style = " font-size:1.2em;  color: black; font-family: latin;">
MELBOURNE'S SOPHISTICATED INNER SOUTH-EAST<br><br><br>
</span>
<span style = " font-size:1.2em;  color: black; font-family: nanum;" >
????????? ?????? ?????? ???????????? ?????? ???????????????.<br>
<strong>LARIVE PLACE</strong> ?????? ????????? ????????? ????????? ???????????? ????????? ?????? ????????????<br>
 ???????????? ?????? ????????? ????????? ???????????????.
</span>
</div>
<div style="width: 40%; height:450px; float: right; margin:100px 120px 100px 0px; text-align: center;">
<img src="homephotos/bottomhomephoto2.png" />
</div>

<!-- ????????? ?????? ??????  -->

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <!-- Link Swiper's CSS -->
    <link
      rel="stylesheet"
      href="https://unpkg.com/swiper/swiper-bundle.min.css"
    />

    <!-- Demo styles -->
    <style>
      html,
      body {
        position: relative;
        height: 100%;
      }

      body {
        background: #eee;
        font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
        font-size: 14px;
        color: #000;
        margin: 0;
        padding: 0;
      }

      .swiper-container {
        width: 100%;
        height: 100%;
        background: #000;
      }

      .swiper-slide {
        font-size: 18px;
        color: #fff;
        -webkit-box-sizing: border-box;
        box-sizing: border-box;
        padding: 40px 60px;
      }

      .parallax-bg {
        position: absolute;
        left: 0;
        top: 0;
        width: 130%;
        height: 100%;
        -webkit-background-size: cover;
        background-size: cover;
        background-position: center;
      }

      .swiper-slide .title {
        font-size: 41px;
        font-weight: 300;
        margin-left: 24px;
       
      }

      .swiper-slide .subtitle {
        font-size: 21px;        
        margin-left: 24px;
      }

      .swiper-slide .text {
        font-size: 15px;
        max-width: 400px;
        line-height: 1.3;
      }
      
      @FONT-FACE {
         font-family: 'nanum';
         src: url("/pension0503/font/NanumBarunGothic.ttf");
      }
      
      @FONT-FACE {
         font-family: 'seoul';
         src: url("/pension0503/font/???????????? ??????B.ttf");
      }
      
        @FONT-FACE {
         font-family: 'latin';
         src: url("/pension0503/font/lmmonoproplt10-bold.otf");
      }
    </style>
  </head>

  <body>
    <!-- Swiper -->

    <div
      style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff"
      class="swiper-container mySwiper"
    >
      <div
        class="parallax-bg"
        style="
          background-image: url(/pension0503/roominfo/roominfo_images/homebottom.jpg);
        "
        data-swiper-parallax="-23%"
      ></div>
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <div class="title" data-swiper-parallax="-300">Brand Story</div>
          <div class="subtitle" data-swiper-parallax="-200">awakening senses</div>
          <div class="text" data-swiper-parallax="-100">
            <p style="font-family: seoul;">
             ????????? ???????????? ????????? ????????? ????????? ????????? ???????????? ????????? PENSION??? ???????????????.
             ????????? ?????? ???????????? ????????? ????????? ?????? ?????????, ?????????, ???????????? ?????? ??? ????????? ??????
             ??? ?????? ????????? ???????????????.
            </p>
          </div>
        </div>
        <div class="swiper-slide">
          <div class="title" data-swiper-parallax="-300">Brand Story</div>
          <div class="subtitle" data-swiper-parallax="-200">HEART WARMING</div>
          <div class="text" data-swiper-parallax="-100">
            <p style="font-family: seoul;">
            ????????? ??? ????????? ?????? ??????????????? ????????? ?????????
         ????????? ????????????. ???????????? ???????????? ?????????????????? ?????? ??? ??????
         ????????? ???????????? ?????? ????????????. ????????? ???????????? ????????? ????????????????????? 
         ????????? ???????????? ???????????????. ????????? ????????? ??? ?????? ????????? ??????, ?????? ????????? ?????? ????????????.
            </p>
          </div>
        </div>
        <div class="swiper-slide">
          <div class="title" data-swiper-parallax="-300">Brand Story</div>
          <div class="subtitle" data-swiper-parallax="-200">OWNERSHIP</div>
          <div class="text" data-swiper-parallax="-100">
            <p style="font-family: seoul;">
            ????????? ????????? ??????????????? ????????? ????????? ??? ??? ????????? ???????????????
            ??????????????????. ??????????????? ???????????? ????????? ????????? ???????????? ????????? ?????????
         ???????????? ????????? ?????????. ?????? ??????????????? ?????? ??????????????? ????????? ????????????. ????????? ??????
         ???????????? ???????????? ?????? ??????????????????. ????????? ???????????? ???????????? ???????????? ?????? 
         ?????? ??????????????? ??????, ????????? ????????? ????????? ??? ????????? ???????????????.
            </p>
          </div>
        </div>
      </div>
      <div class="swiper-button-next"></div>
      <div class="swiper-button-prev"></div>
      <div class="swiper-pagination"></div>
    </div>

    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        speed: 600,
        parallax: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
      });
    </script>
    
    
  </body>
</html>





    <c:import url="../bottom.jsp"/>
    