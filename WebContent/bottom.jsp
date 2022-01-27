<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!-- 바텀 -->
    <!-- footer section start -->
    <div class="footer_section layout_padding">
        <div class="footer_section_2">
          <div class="container">
            <div class="row map_addres" style="width:100%;">
              <div class="col-sm-12 col-lg-4">
                <div class="map_text"><img src="/pension0503/images/map-icon.png"><span class="map_icon">강원 속초시 중앙로 183</span></div>
              </div>
                    <div class="col-sm-12 col-lg-4">
                      <div class="map_text"><img src="/pension0503/images/phone-icon.png"><span class="map_icon">☎ 010-3843-1434</span></div>
                    </div>
              <div class="col-sm-12 col-lg-4">
                <div class="map_text"><img src="/pension0503/images/email-icon.png"><span class="map_icon">rushnet123@gmail.com</span></div>
              </div>
            </div>
            <div class="social_icon">
              <ul>
                <li><a href="#"><img src="/pension0503/images/fb-icon.png"></a></li>
                <li><a href="#"><img src="/pension0503/images/twitter-icon.png"></a></li>
                <li><a href="#"><img src="/pension0503/images/in-icon.png"></a></li>
                <li><a href="#"><img src="/pension0503/images/instagram-icon.png"></a></li>
              </ul>
            </div>
            <p class="copyright_text">
            Copyright 2021 All Right Reserved By. 예약하조<br><br>
            <span class="bnumber">사업자 번호 025-2312-5684</span>
            </p>
          </div>
        </div>
    </div>
<style>
.bnumber{
   font-size: 15px;
}
</style>
  <!-- Javascript files-->
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script> <!-- 이거 자동 드래그 -->
    <script src="/pension0503/js/jquery.min.js"></script>
    <script src="/pension0503/js/popper.min.js"></script>
    <script src="/pension0503/js/bootstrap.bundle.min.js"></script>
      <script src="/pension0503/js/jquery-3.0.0.min.js"></script>

      <!-- sidebar -->
      <script src="/pension0503/js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="/pension0503/js/custom.js"></script>
      <!-- javascript --> 
      <script src="/pension0503/js/owl.carousel.js"></script>
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

<!-- 마우스 온클릭 반응형 테스트중 -->
   <script>
   function mover()
   {
      var m;
      m=document.getElementById("id01")
      m.style.backgroundImage="url('/pension0503/images/contact-bg.png')";
   }
   
   function mout()
   {
      var m;
      m=document.getElementById("id01")
      m.style.backgroundImage="url('/pension0503/images/contact-bg.png')";
   }
   </script>
<!-- 마우스 온클릭 반응형 테스트끝 -->

   <script>
    function openNav() {
    document.getElementById("myNav").style.width = "100%";
    }

    function closeNav() {
   document.getElementById("myNav").style.width = "0%";
   }
</script>

<script>
function fnMove(seq){
    var offset = $("#div" + seq).offset();
    $('html, body').animate({scrollTop : offset.top}, 400);
}

</script>
</body>
</html>