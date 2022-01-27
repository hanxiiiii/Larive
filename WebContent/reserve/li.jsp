<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 <% request.setCharacterEncoding("UTF-8");%>
<link rel="stylesheet" type="text/css" href="reserve_css.css">
<script>
var dates =[];
var m3 =[];
var firstClicked = [];
var selected = {};
var secondClicked = [];
var firstClick = false;
var secondClick = false;
var money_change;
var click = false;
   function check(){
      my=document.reserve_first;
      if(my.Roomid.value=="")
      {
         alert("방을 선택하세요!");
         my.Roomid.focus();
         return false;
      }
      else if(my.Checkin.value=="")
      {
         alert("체크인 날짜를 선택하세요!");
         my.Checkin.focus();
         return false;
      }
      else if(my.Checkout.value=="")
      {
         alert("체크아웃 날짜를 선택하세요!");
         return false;
      }
      else if(my.membercount.value=="")
      {
         alert("총 인원을 선택하세요!");
         my.membercount.focus();
         return false;
      }
      else{
         alert("예약에 성공했습니다!");   
         return true;
      }
   }
</script>
<style>
   .room_number{
   	  font-size:22px;
      background-color:white;
   }
   
   .room_number_select{
   font-size:22px;
   font-weight:bold;
   color:#03164C;
   background-color:rgba(153, 153, 161, 0.3);
   }
</style>

<%@page import="larive.dao.*" %>
<%@page import="larive.dto.*" %>

   

<form name="reserve_first" method="post" action="reserve_ok.jsp" onsubmit="return check()">       
  <div class="base">
      <ul>  
<!-- 객실정보에 대한 예약 입력창 -->
       <li class="item" style="margin-left:7px;">  
             <b >객실 선택</b>
             <div> 
            <ul class="room_menu">
           	<li></li>
            <li class="room_number" id="room_L" onclick="room_L()">Room L</li>  
            <li class="room_number" id="room_A" onclick="room_A()">Room A<input type="hidden" class="room_number" value=""></li>
            <li class="room_number" id="room_R" onclick="room_R()">Room R<input type="hidden" class="room_number" value=""></li>
            <li class="room_number" id="room_I" onclick="room_I()">Room I<input type="hidden" class="room_number" value=""></li>
            <li class="room_number" id="room_V" onclick="room_V()">Room V<input type="hidden" class="room_number" value=""></li>
            <li class="room_number" id="room_E" onclick="room_E()">Room E</li>
            <li><input type="hidden" class="room_name" name="room_name" value="Room L"></li>
            </ul>
           </div>
        </li>
<!-- 체크인 체크아웃 대한 달력 클릭창 -->
         <li class="item_cal">
            <b style="color:white">날짜</b>
            <c:import url="../cal/index.jsp"/>
      </li>
      
 <!-- 인원수 체크창 -->
        <li class="itemin">
           <b id="item_holaa">인원수</b>
              <ul class="inwon_menu"style="margin-bottom:100px;">
                 <li class="inwon_number"style="width:280; margin-bottom:50px; margin-top:20px;font-size:25px; text-align:center;">
                     <b>인원수 선택</b>
                 </li>        
 
<!-- 방 max받아와서 인원수 제한 걸어야함-->
                 <li class="inwon_number">   
                  <select  id="man"onchange="inwon_check()" style=" width:150px; height:50px; ">        
                  <option value="1">1</option>                     
               
               </select>
               
            </li>
         
            <li class="inwon_number" style="margin-top:50px;">
               <span id="totalprice2"><b>0원</b></span>
            </li>
         </ul>
       </li> 
<!-- 부대시설 및 예약버튼등등 존재 -->      
        <li  id="item_holaa" class="item" >
             <b >부대시설 및 입금안내</b> 
            <ul class="room_menu2">
                <li id="room_number2" style="margin-top:20px;">
                <br>
                <p style="font-size:20px;">바베큐 : 이용시 현장결제 요망</p>
                <p style="font-size:20px;">조식 : 이용시 현장 결제 요망</p>
                <p style="font-size:20px;">수영장 : 객실 정보 확인 요망</p>
                <p style="font-size:20px;">바베큐 : 1인  15000원
                <p style="font-size:20px;">조식 : 1인 8000원
                <p style="font-size:20px;">예금주명  : 한운호</p>
                 <p style="font-size:20px;">계좌번호  : 3333-04-5555-11</p>
                 
               <c:if test="${Email != null}">
                 <div class="rb">
                  <button class="reserve_button" style = "margin-top:50px;">예약하기</button>   
                </div>
              </c:if>
              
               <c:if test="${Email == null}">  
               <p style="font-size:20px; font-weight:bold; margin-top:70px; color: red;">비회원은 예약을 할수 없습니다</p><br>
               <input type="button" class="reserve_button"  value="로그인" onclick="location.href='/pension0503/login/login.jsp'">
               </c:if>
               
                 </li>
             
            </ul>
        </li>    
       
    </ul>
   </div>
   
<!-- 데이터 넘길때  확인위해 텍스트로 만든것 -->
   <input type="hidden" class = "Roomid_hidden"name="Roomid" value="">
   <input type="hidden" name="totalprice" value="">
  
   <!-- <input type="hidden" name=membercount value=""> -->
   <input type="hidden" name="Checkin" value="">
   <input type="hidden" name="Checkout" value="">
   <input type="hidden" name="roomname" value="">
   <input type="hidden" name="membercount" value="">
   <input type="hidden" name="totalday" value="">
</form>
   


 <script>
 $(function(){
	  money_change = function(){
	      var roomid = $('.Roomid_hidden').val();
	      var man = parseInt(document.reserve_first.man.value);
	      var day = parseInt(document.reserve_first.totalday.value);
	      //alert(man+","+day+"+"+roomid)
	      if(roomid == '302'){
	         var totalprice = ((man-2)*30000+800000)*day;
	      
	      }
	      else if(roomid == '301'){
	         var totalprice = ((man-2)*30000+600000)*day;
	         
	      }
	      else if(roomid == '201'){
	         var totalprice = ((man-2)*20000+350000)*day;
	         
	      }
	      else if(roomid == '202'){
	         var totalprice = ((man-2)*20000+400000)*day;
	         
	      }
	      else if(roomid == '101'){
	         var totalprice = ((man-2)*10000+200000)*day;
	         
	      }
	      else if(roomid == '102'){
	         var totalprice = ((man-2)*15000+250000)*day;
	         
	      }
	      document.reserve_first.membercount.value=man;  
	      document.reserve_first.totalprice.value=totalprice; 
	      document.getElementById("totalprice2").innerHTML = totalprice+"원";
  	 }
	  

   var room_info = function(Roomid){
       	 selected = {};
         firstClicked = [];
         secondClicked = [];
         firstClick = false;
         //alert(firstClick);
         secondClick = false;
         click = false;
         checkins ="";
         checkouts ="";          
      document.reserve_first.Checkout.value="";
      document.reserve_first.Checkin.value="";
      document.reserve_first.totalday.value=0;
      dates = [];
      for(var i=0;i<alldate.length-1;i++){
         $("#"+alldate[i].toISOString().substr(0,10)).removeClass("past-date").removeClass("selected");         
      }
      
      $('#calender00').css('pointer-events','auto').css('opacity', '1');
      //alert(Roomid);
      opt ="";
       var chk=new XMLHttpRequest();
       var url="roomnumber_ok.jsp?room="+Roomid;
       var man2=parseInt(document.reserve_first.man.value);
       var man3 = man-1;   
       chk.open("get",url);
       chk.send();
       chk.onreadystatechange=function()
       {            
          if(chk.readyState == 4) //동작완료
             { // 현재 문서에서 동작시킬 내용 추가           
               var m= Number(chk.responseText.trim());             
               for(var i=2; i<=m;i++){            
                   opt = opt + ("<option value="+i+"> "+i+" 명 </option>")
               }
               document.getElementById("man").innerHTML = opt;         
            }   
       }      
       var chk2=new XMLHttpRequest();
         var url2="room_check_days.jsp?room="+Roomid;
         chk2.open("get",url2);
         chk2.send();
         chk2.onreadystatechange=function()
          {
             if(chk2.readyState == 4) //동작완료
               { // 현재 문서에서 동작시킬 내용 추가
                   //alert("test");
                   m2 = chk2.responseText.trim();
                  //alert(m2);
                  m3 = m2.split(',');                 
                  for(var i=0;i<m3.length-1;i++){
                     dates[i] = new Date(m3[i]);
                     //alert(dates[i])                       
               }   
                  
                  
                  
                  for(var i=0;i<m3.length-1;i++){
                     $("#"+m3[i]).addClass("past-date");         
                  }               
               }         
          }
         day = 0;
         money_change();
   }
   

/*방 정보 클릭시 값을 위에 인풋값에 저장*/   
   $("#room_L").click(function(){
      var room = "L";
      document.reserve_first.roomname.value=room;
      var Roomid = 101;
      document.reserve_first.Roomid.value=Roomid;
      document.getElementById("room_L").className = "room_number_select";
      document.getElementById("room_A").className = "room_number";
      document.getElementById("room_R").className = "room_number";
      document.getElementById("room_I").className = "room_number";
      document.getElementById("room_V").className = "room_number";
      document.getElementById("room_E").className = "room_number";
      room_info(Roomid);   
   });
   
   $("#room_A").click(function(){     
      var room = "A";
      document.reserve_first.roomname.value=room;
      var Roomid = 102;
      document.reserve_first.Roomid.value=Roomid;
      document.getElementById("room_L").className = "room_number";
      document.getElementById("room_A").className = "room_number_select";
      document.getElementById("room_R").className = "room_number";
      document.getElementById("room_I").className = "room_number";
      document.getElementById("room_V").className = "room_number";
      document.getElementById("room_E").className = "room_number";
      room_info(Roomid);
      
   });
   
   $("#room_R").click(function(){
      var room = "R";
      document.reserve_first.roomname.value=room;
      var Roomid = 201;
      document.reserve_first.Roomid.value=Roomid;
      document.getElementById("room_L").className = "room_number";
      document.getElementById("room_A").className = "room_number";
      document.getElementById("room_R").className = "room_number_select";
      document.getElementById("room_I").className = "room_number";
      document.getElementById("room_V").className = "room_number";
      document.getElementById("room_E").className = "room_number";
      room_info(Roomid); 
   });
   
   $("#room_I").click(function(){
      var room = "I";
      document.reserve_first.roomname.value=room;
      var Roomid = 202;
      document.reserve_first.Roomid.value=Roomid;
      document.getElementById("room_L").className = "room_number";
      document.getElementById("room_A").className = "room_number";
      document.getElementById("room_R").className = "room_number";
      document.getElementById("room_I").className = "room_number_select";
      document.getElementById("room_V").className = "room_number";
      document.getElementById("room_E").className = "room_number";
      room_info(Roomid); 
   });
   
   $("#room_V").click(function(){
      var room = "V";
      document.reserve_first.roomname.value=room;
      var Roomid = 301;
      document.reserve_first.Roomid.value=Roomid;
      document.getElementById("room_L").className = "room_number";
      document.getElementById("room_A").className = "room_number";
      document.getElementById("room_R").className = "room_number";
      document.getElementById("room_I").className = "room_number";
      document.getElementById("room_V").className = "room_number_select";
      document.getElementById("room_E").className = "room_number";
      room_info(Roomid);
      
   });
   
   $("#room_E").click(function(){
       
         var room = "E";
         document.reserve_first.roomname.value=room;
         var Roomid = 302;
         document.reserve_first.Roomid.value=Roomid;
         document.getElementById("room_L").className = "room_number";
         document.getElementById("room_A").className = "room_number";
         document.getElementById("room_R").className = "room_number";
         document.getElementById("room_I").className = "room_number";
         document.getElementById("room_V").className = "room_number";
         document.getElementById("room_E").className = "room_number_select";        
         var man=document.getElementById("man").value;
         room_info(Roomid);
         
         
         
      });

   
});
 

 function inwon_check(){
	   money_change();		  
}   

</script>
