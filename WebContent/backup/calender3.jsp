<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <meta charset="UTF-8" />
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
        <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <!-- datepicker 한국어로 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
        
        <script>
            $(function() {
                
            
                //오늘 날짜를 출력
                $("#today").text(new Date().toLocaleDateString());

                //datepicker 한국어로 사용하기 위한 언어설정
                $.datepicker.setDefaults($.datepicker.regional['ko']); 
                
                // 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
                // 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

                //종료일
                $('#toDate').datepicker({
                    showOn: "both", 
                    buttonImage: "images/calendar.gif", 
                    buttonImageOnly : true,
                    buttonText: "날짜선택",
                    dateFormat: "yy-mm-dd",
                    changeMonth: true,
                    //minDate: 0, // 오늘 이전 날짜 선택 불가
                    onClose: function( selectedDate ) {
                        // 종료일(toDate) datepicker가 닫힐때
                        // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                        $("#fromDate").datepicker( "option", "maxDate", selectedDate );
                    }                
                });
            });


 
 			function closedate(){
            	
            	var aaa1 = document.getElementsByClassName("ui-state-active")[1].text;
            	var bbb1 = document.getElementsByClassName("ui-datepicker-month")[1].value;
            	var bb12 = parseInt(bbb1)+1; 
            	var date_calender2 = bb12+"월"+aaa1+"일";  
            	
            	//alert(date_calender);
            	document.getElementById("valueOutput").innerHTML = date_calender2; 
            	  	
            };
				
        </script>        
        <style>
        	.ui-datepicker-trigger{
        		font-size:15px;
        		width:60px;
        		heigth:20px;
        	}
        	form{
        	width:500px;
        	}
        	#date_label{
        		margin-left:130px;
        		font-size:20px;
        	}
        </style>
   
        <form style="margin-left:70px;">
 
          
          <label id="date_label" for="EndDate">종료일</label>
        
          <p name="valueOutput" id="valueOutput"><p>
           <input type="button" onclick="closedate()" value="날짜 지정"/>
            <div  class="fromDate"> 
          </div>
         
       
       
          
		</form>

