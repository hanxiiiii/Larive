<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<c:import url="../top.jsp"/>

<div class="main" onmouseover="main_over()">

    <div class="about_section_2 layout_padding">
    	<div  class="logo_img"><img src="/pension0503/images/laurel-wreath-297311_1280.png"> </div>
        	<div class="container">
            	<h1 class="about_text_2"><strong>LA RIVE</strong></h1>
            	<p class="client_long_text" align="center"> 내 집과 같은 편안함으로 공간 이상의 가치가 숨쉬고 있는 라리브 펜션 <br> 이국적인 센스가 담긴 최고의 뷰와 휴향지의 안락함까지 명문 펜션에서만 느낄 수 있는 수준 높은 트랜드를 만나보시기 바랍니다</p>        
         		<div class="button_text">
		         	<br>
		         	<br>
		         	<button onclick="fnMove('1')" style="padding-left:25px; padding-right:25px; background-color:transparent;  border:0px transparent solid;"><li>Room L</li></button>
				    <button onclick="fnMove('2')" style="padding-left:25px; padding-right:25px; background-color:transparent;  border:0px transparent solid;"><li>Room A</li></button>
				    <button onclick="fnMove('3')" style="padding-left:25px; padding-right:25px; background-color:transparent;  border:0px transparent solid;"><li>Room R</li></button>
				    <button onclick="fnMove('4')" style="padding-left:25px; padding-right:25px; background-color:transparent;  border:0px transparent solid;"><li>Room I</li></button>
				    <button onclick="fnMove('5')" style="padding-left:25px; padding-right:25px; background-color:transparent;  border:0px transparent solid;"><li>Room V</li></button>
				    <button onclick="fnMove('6')" style="padding-left:25px; padding-right:25px; background-color:transparent;  border:0px transparent solid;"><li>Room E</li></button>
			    </div>
		    	<div id="div1"></div>
        	</div>
    	</div>
    <!-- 방 정보 시작 -->
	    <div class="about_section about_main">	<!-- 여기서부터는 1번방입니다 -->
	        <div class="row">
	            <div class="col-md-6">
	                <div class="about_taital">
	                    <h2 class="about_text">Room L (Lake.101)</h2>
	                    <p class="long_text_2" align="justify">그랜드 디럭스 </p>
	                    <p class="long_text_2_1" align="justify">편안한 안락함을 위한 최고의 서비스와 프리미엄 베드가 말할 수 없이 편안한 감촉, 한국적인<br>센스가 담긴 최고의 뷰와 휴향지의 안락함까지 명문 펜션에서만 느낄 수 있는 수준 높은 트랜드를<br>만나보시기 바랍니다</p>
	                    <div class="about_bt"><a href="roominfo_l.jsp">Room Info</a></div>
	                </div>
	            </div>
	            <div class="col-md-6">
	                <div class="about_img"><img src="/pension0503/images/mainphoto2.png"></div>
	            </div>
	        </div>
	        <div id="div2"></div>
	    </div>
	    <!-- 방 정보 끝 -->
	    <!-- 방 정보 시작 -->
	    <div class="about_section about_main">
	        <div class="row">
	            <div class="col-md-6">
	                    <div class="about_img"><img src="/pension0503/images/roominfo2.png"></div>
	            </div>
	            <div class="col-md-6">
	                <div class="about_taital">
	                    <h1 class="about_text">Room A (Lake.102)</h1>
	                    <p class="long_text_2" align="justify">그랜드 디럭스 더블</p>
	                    <p class="long_text_2_2" align="justify">우아한 인테리어와 현대적 세련미가 조화롭게 어우러진 그랜드 디럭스 더블룸은<br>최상의 휴식을 제공합니다. 모든 펜션 투숙객들이 자유롭게 이용할 수 있는 즐길거리를<br>만나보시기 바랍니다</p>
	                    <div class="about_bt"><a href="roominfo_a.jsp">Room Info</a></div>
	                </div>
	            </div>
	        </div>
	        <div id="div3"></div>
	    </div>
    <!-- 방 정보 끝 -->
     <!-- 방 정보 시작 -->
    <div class="about_section about_main">
        <div class="row">
            <div class="col-md-6">
                <div class="about_taital">
                    <h1 class="about_text">Room R (Lake.201)</h1>
                    <p class="long_text_2" align="justify">프리미어</p>
                    <p class="long_text_2_1" align="justify">라리브의 프리미어 룸은 세련미와 우아함을 더한 고급스러운 인테리어로 구성되어 있으며,<br> 대형 창문을 통해 화려한 장관을 감상할 수 있는 고품격 객실입니다. 또한, 라리브의 프리미어<br> 룸의 욕실은 이탈리아 북부 알프스 천연 대리석으로 제작되어 고품격 휴식을 즐기기에 충분합니다.</p>
                    <div class="about_bt"><a href="roominfo_r.jsp">Room Info</a></div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="about_img"><img src="/pension0503/images/roominfo3.jpg"></div>
            </div>
        </div>
         <div id="div4"></div>
    </div>
    <!-- 방 정보 끝 -->
    <!-- 방 정보 시작 -->
    <div class="about_section about_main">
        <div class="row">
            <div class="col-md-6">
                    <div class="about_img"><img src="/pension0503/images/roominfo4.jpg"></div>
            </div>
            <div class="col-md-6">
                <div class="about_taital">
                    <h1 class="about_text">Room I (Lake.202)</h1>
                    <p class="long_text_2" align="justify">라리브 프리미어 더블</p>
                    <p class="long_text_2_2" align="justify">라리브의 라리브 프리미어 룸은 침실과 함께 여유로운 힐링 공간이 구비되어 성공적인<br> 힐링과 여유로운 휴식을 함께 즐길 수 있는 고급 힐링 객실입니다. 라리브 프리미어<br> 룸의 60인치 TV에 장착된 프리미엄 사운드 바는 새로운 경험을 제공해 드립니다.</p>
                    <div class="about_bt"><a href="roominfo_i.jsp">Room Info</a></div>
                </div>
            </div>
        </div>
        <div id="div5"></div>
    </div>
    <!-- 방 정보 끝 -->
     <!-- 방 정보 시작 -->
    <div class="about_section about_main">
        <div class="row">
            <div class="col-md-6">
                <div class="about_taital">
                    <h1 class="about_text">Room V (Lake.301)</h1>
                    <p class="long_text_2" align="justify">프리미어 스위트 더블</p>
                    <p class="long_text_2_1" align="justify">라리브의 프리미어 스위트 룸은 넓고 여유로운 공간에서 고품격 휴식을 만끽할 수 있는<br> 고급형 프리미어 스위트 룸입니다. 여유로운 공간과 고급스러운 인테리어는 고객의<br> 안락함을 최우선으로 고려하여 설계되어 고객님에게 더욱 더 최고의 투숙 경험을 선사합니다.</p>
                    <div class="about_bt"><a href="roominfo_v.jsp">Room Info</a></div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="about_img"><img src="/pension0503/images/roominfo5.jpg"></div>
            </div>
        </div>
        <div id="div6"></div>
    </div>
    <!-- 방 정보 끝 -->
    <!-- 방 정보 시작 -->
    <div class="about_section about_main">
        <div class="row">
            <div class="col-md-6">
                    <div class="about_img"><img src="/pension0503/images/roominfo6.jpg"></div>
            </div>
            <div class="col-md-6">
                <div class="about_taital">
                    <h1 class="about_text">Room E (Lake.302)</h1>
                    <p class="long_text_2" align="justify">프레지덴셜 스위트</p>
                    <p class="long_text_2_2" align="justify">라리브의 프레지덴셜 스위트 룸은 넓은 공간과 쾌적한 거실로 럭셔리한 디자인의<br> 응접실, 최고급 레스토랑을 연상시키는 다이닝룸 등의 공간 구성으로 고급스러운 분위기를<br> 연출하는 객실입니다. 사회적으로 존경 받는 각계각층 VIP의 안락한 휴식을 위해 설계된<br> 프레지덴셜 스위트 룸은 대형 창문을 통해 펼쳐지는 아름다운 전망과 함께 라리브<br> 의 세심한 서비스와 안전을 제공합니다</p>
                    <div class="about_bt"><a href="roominfo_e.jsp">Room Info</a></div>
                </div>
            </div>
        </div>
    </div>
    <div class="top_move">
	<button onclick="fnMove('7')" style="background-color:transparent; border:0px transparent solid;"><li>TOP</li></button></div>
</div>

</div>

    
<c:import url="../bottom.jsp"/>



   