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
간결하고 심플한 공간의 흐름<br>
멈출 듯 멈추지 않은 은은한 바람의 향기가 느껴지는 곳<br>
고요하고 잔잔하게 다가오는 자연주의 감성을 담은 이 곳에서<br>
당신의 가장 완벽한 하루를 함께하세요
</span>
</div>


<div style="width: 40%; height:450px; float: left; margin:240px 100px 100px 120px; text-align: center;">
<span style = " font-size:3.0em;  color: #0B0B61; font-family: latin;">
<strong>M O D E R N I S H<br>E X T E R I O R<br></strong></span>
<span style = " font-size:1.2em;  color: black; font-family: latin;">
MELBOURNE'S SOPHISTICATED INNER SOUTH-EAST<br><br><br>
</span>
<span style = " font-size:1.2em;  color: black; font-family: nanum;" >
심플한 공간 속에 따뜻함을 가득 채웠습니다.<br>
<strong>LARIVE PLACE</strong> 에서 보내는 당신의 하루는 오랫동안 기억에 남을 편안하고<br>
 여유로운 가장 행복한 시간이 될것입니다.
</span>
</div>
<div style="width: 40%; height:450px; float: right; margin:100px 120px 100px 0px; text-align: center;">
<img src="homephotos/bottomhomephoto2.png" />
</div>

<!-- 드래그 부분 시작  -->

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
         src: url("/pension0503/font/서울한강 장체B.ttf");
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
             우리는 여행자의 정서와 감각을 깨우고 행복한 경험으로 가득한 PENSION이 되겠습니다.
             자연과 감동 서비스로 고객이 머무는 동안 즐거움, 편안함, 행복함을 느낄 수 있도록 기대
             를 넘는 가치를 약속합니다.
            </p>
          </div>
        </div>
        <div class="swiper-slide">
          <div class="title" data-swiper-parallax="-300">Brand Story</div>
          <div class="subtitle" data-swiper-parallax="-200">HEART WARMING</div>
          <div class="text" data-swiper-parallax="-100">
            <p style="font-family: seoul;">
            고객의 삶 속으로 가슴 따뜻해지는 미소와 행복을
         전달해 드립니다. 완벽하고 특별하며 라리브에서만 느낄 수 있는
         고품격 서비스를 약속 드립니다. 수년간 섬세하게 정제된 호스피탈리티의 
         세계로 여러분을 초대합니다. 자연과 동화될 수 있는 최고의 방법, 바로 라리브 안에 있습니다.
            </p>
          </div>
        </div>
        <div class="swiper-slide">
          <div class="title" data-swiper-parallax="-300">Brand Story</div>
          <div class="subtitle" data-swiper-parallax="-200">OWNERSHIP</div>
          <div class="text" data-swiper-parallax="-100">
            <p style="font-family: seoul;">
            우리는 고객이 라리브에서 행복한 경험을 할 수 있도록 도와드리는
            전문가입니다. 라리브인은 커리어와 인생의 목표를 달성하기 위해서 어떠한
         장애물도 극복해 냅니다. 우리 구성원들은 절대 자기계발을 멈추지 않습니다. 이것이 바로
         라리브를 움직이게 하는 원동력입니다. 라리브 구성원은 고객들이 경험하는 모든 
         것을 공유하고자 하고, 그들의 경험과 동화될 수 있도록 노력합니다.
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
    