<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 

    <style>
        .base{
            width: 2000px;
            height: 800px;
            text-align:center;
        }
        
        .item > ul{
            position: absolute;
			text-align:left;
        }
       
        .item{
            text-align: center;
            border: 1px solid black;
            float: left; 
            width: 500px;
            font-size:20px;
            background-color: #03164C; 
            color:white;
        }
     
        ul{
            list-style: none;
            
        }

		
	
		
		.inwon_menu{
			background-color: white; 
            color:black;
        
		}
		.room_menu2{
			background-color: white; 
            color:black;	
           
		}
		
		
    </style>

  						
   <div class="base">
      <ul>
        <li style="margin-left:400px;" class="item">
        	<b id="item_holaa">인원수</b>
          	 <ul class="inwon_menu"style="margin-bottom:100px;">
          	 	<li style="margin-left:170px; margin-bottom:50px; margin-top:20px;font-size:25px; text-align:center;">
          	 		 <b>인원수 선택</b>
          	 	</li>
          	 	
          	 	<li >	
		            <select name="man" onchange="inwon_check()" style=" width:150px; height:50px; margin-left:190px; ">
		 				 <c:forEach var="i" begin="1" end="${rdto.max}">
				          <option value="${i}"> ${i}명 </option>
				         </c:forEach>
					</select>
				</li>
				<li style="margin-top:50px;">
					<span id="inwon_hap" style="margin-left:240px;"><b>1명</b></span>
				</li>
				<li style="margin-top:50px;">
					<span id="inwon_price" style="margin-left:240px;"><b>0원</b></span>
				</li>
			</ul>
       </li> 
        <li  id="item_holaa"class="item">
          	<b >부대시설 안내</b> 
            <ul class="room_menu2">
                <li id="room_number2" style="  margin-left:50px; margin-top:50px;">바베큐및 조식 사용시  현장 결제 요망</li>
            </ul>
        </li>
         
    </ul> 
   </div>
   <script>
   var n1,n4,n5; // 성인,청소년,초등이하,총인원,추가금액
   function inwon_check()
   {
	   // 성인, 청소년, 초등이하의 select의 value를 가져와서 더하면 => 총인원
	   var man=parseInt(document.reser.man.value); // 성인의 인원
		if(man <= ${rdto.max}) // 최대인원을 초과하지 않는다면
	   { // 정상적인 인원추가 구역 => n1,n2,n3,n4,n5변수에 저장
	     // 추가 금액 계산하여 innerText
	     var chuga=man;
	     if(chuga >= 1) // 기준인원보다 많을때 추가금액 계산
	     {	   
	       var result=chuga*10000*document.reser.suk.value; // 추가인원금액에 숙박을 곱한다
	       // 숫자만 있는 인원추가금액을 name="inwon_price" 인 폼태그에 전달
	       document.reser.inwon_price.value=result;
	       result=new Intl.NumberFormat().format(result);
	       document.getElementById("inwon_price").innerText=result+"원";
	       n4=result+"원";
	     }
	     else // 기준이하 => 0원
	     {
	       // 추가금액이 없을경우 0을  name="inwon_price" 인 폼태그에 전달
		   document.reser.inwon_price.value=0;
		   document.getElementById("inwon_price").innerText="0원";
		   n4="0원";
	     }
	     document.getElementById("inwon").innerText=chong+"명";
	     // 5가지 항목의 값을 저장
	     n1=document.reser.man.value;
	     n5=chong;
	   }
	   else // 초기화 대신 이전의 값으로 변경
	   {
		   alert("총인원이 초과하여 이전으로 돌아갑니다");
		   document.reser.man.value=n1; // 성인인원
		   document.getElementById("inwon_price").innerText=n4;  // 추가금액
		   document.getElementById("inwon").innerText=n5;        // 추가인원
		   
		   /* document.reser.man.selectedIndex=0;
		   document.reser.student.selectedIndex=0;
		   document.reser.baby.selectedIndex=0;
		   document.getElementById("inwon_price").innerText="0원";
		   document.getElementById("inwon").innerText="1명"; */
	   }
	   chong_hap();
   }
   
   
   </script> 
