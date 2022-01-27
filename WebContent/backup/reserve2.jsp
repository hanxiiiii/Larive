<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
<link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
<c:import url="top.jsp"/>

<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<!-- datepicker 한국어로 -->
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>

<script>


$(function() {

                //datepicker 한국어로 사용하기 위한 언어설정
                $.datepicker.setDefaults($.datepicker.regional['ko']); 
                
                // 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
                // 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

                //시작일.
                $('.fromDate').datepicker({
                    showOn: "both",                     // 달력을 표시할 타이밍 (both: focus or button) 
                    buttonText: "날짜선택",             // 버튼의 대체 텍스트
                    dateFormat: "yy-mm-dd",             // 날짜의 형식
                    changeMonth: true,                  // 월을 이동하기 위한 선택상자 표시여부
                    //minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
                    onClose: function( selectedDate ) {    
                        // 시작일(fromDate) datepicker가 닫힐때
                        // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                        $(".toDate").datepicker( "option", "minDate", selectedDate );
                    }                
                });

                //종료일
                $('.toDate').datepicker({
                    showOn: "both", 
                    buttonText: "날짜선택",       
                    dateFormat: "yy-mm-dd",
                    changeMonth: true,
                    //minDate: 0, // 오늘 이전 날짜 선택 불가
                    onClose: function( selectedDate ) {
                        // 종료일(toDate) datepicker가 닫힐때
                        // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                        $(".fromDate").datepicker( "option", "maxDate", selectedDate );
                    }                
                });
            });
            
            
$(document).ready(function() {
	 line.find(".fromDate").datepicker({showAnim: "slideDown"})
});
</script>
<body>

<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">
<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">
<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">
<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">
<div class="mx-5">   
<div class="mx-5">  
<div class="mx-5">  
<table class="table" width="800px" >
<caption style="caption-side:top;">
<b style="color:#FFFFFF; font-size:50px; margin-left:15px"><a style="color:#03164C;">L</a> A R I V E</b>
</caption>  
  <tbody>
      <tr align="center">
    	  <td> 입실일</td>
          <td><input type="text"  class="fromDate"></td>
      </tr>
	  <tr align="center">
	  	 <td> 퇴실일</td>
         <td><input type="text"  class="toDate"></td>
      </tr>
      <tr> 
      	 <td width="50%">
      	 	인원
      	 	<br>
      	 	<select class="form-select">
			  <option value="1" selected>1</option>
			  <option value="2">2</option>
			  <option value="3">3</option>
			</select>	
      	 </td>
      	 <td rowspan="2">
      	 	<button type="button" class="btn btn-outline-secondary">예약</button>      	 
      	 </td>      
      </tr>
      <tr>
      	<td> 
      	가격
      	<br>
      	80,0000원   
      </tr>         
  </tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>



<c:import url="bottom.jsp"/>

</body>