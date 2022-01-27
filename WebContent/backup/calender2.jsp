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

                //시작일.
                $('.fromDate').datepicker({
                	showOn:"focus",
                    buttonText: "날짜선택",             // 버튼의 대체 텍스트
                    dateFormat: "yy-mm-dd",             // 날짜의 형식
                    minDate:0,
                    changeMonth: true,                  // 월을 이동하기 위한 선택상자 표시여부
                    //minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
                    onClose: function( selectedDate ) {    
                        // 시작일(fromDate) datepicker가 닫힐때
                        // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                        $(".toDate").datepicker( "option", "minDate", selectedDate );
                    }                
                });

            });
            function opendate(){
            	
            	var aaa = document.getElementsByClassName("ui-state-active")[0].text;
            	var bbb = document.getElementsByClassName("ui-datepicker-month")[0].value;
            	var bb1 = parseInt(bbb)+1; 
            	var date_calender = bb1+"월"+aaa+"일";  
            	
            	//alert(date_calender);
            	document.getElementById("valueInput").innerHTML = date_calender; 
            	  	
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
          <label id="date_label" for="fromDate">시작일</label>
        
          <p name="valueInput" id="valueInput"><p>
           <input type="button" onclick="opendate()" value="날짜 지정"/>
            <div  class="fromDate"> 
          </div>
          
          
       
       
          
		</form>

